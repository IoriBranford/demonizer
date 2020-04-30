--- Shooting functionality.
-- Shoots bullets at regular time intervals.
-- The time interval can be either a set time or the animation time.
-- Enemies can have restrictions on their shooting;
-- to ramp up challenge properly, put fewer restrictions on later enemies.
--@module Shooter

--- Shooter properties.
--@field firetargetid ID number or "player" or "randomEnemy" or "randomWingman" or "wingman[1-4]"
--@field firearc Must be facing target within this arc to fire
--@field firebullet Name of bullet type
--@field firetime Seconds between shots, or "defeat" for when defeated
--@field firetimeconstant Fire timer not affected by cover, off-camera, killed player
--@field firefan Number of bullets to fire in a fan
--@field firefanslice Arc between two bullets in the fan
--@field firewarningtime Seconds before firing to give warning
--@field firewarningsound
--@field firelinecolor Only if warning
--@field firelinecolor2 Pulse between this and firelinecolor
--@field firerequiretarget
--@field firesilent
--@table Properties

local levity = require "levity"
local ShmupBullet = require "ShmupBullet"
local ShmupCollision = require "ShmupCollision"

local Shooter = class(require("Script"))
function Shooter:_init(object)
	self.id = object.id
	self.object = object
	self.properties = object.properties

	self.timer = 0

	local firelimit = self.properties.firelimit
	if firelimit then
		self.firedids = {}
		self.numfired = 0
	end
end

function Shooter:initQuery()
	local targetid = self.properties.firetargetid
	if not self:getTargetObject(targetid) then
		self.properties.firetargetid = nil
	end
end

function Shooter:postTypeChange(oldtype, newtype)
	if not oldtype then
		return
	end
	if oldtype.firetargetid ~= newtype.firetargetid then
		if oldtype.firetargetid == "randomEnemy" then
			self.properties.firetargetid = nil
		end
	end
end

function Shooter:getTargetId(targetid)
	if type(targetid) == "string" then
		if targetid == "player" then
			targetid = levity.map.properties.playerid
		elseif targetid == "randomWingman" then
			targetid = self:call("playerteam", "getRandomWingmanId")
		elseif targetid == "randomEnemy" then
			targetid = self:call(levity.map.properties.cameraid, "findTarget_rectangle", "canBeLockTarget")
			self.properties.firetargetid = targetid
		else
			local i = targetid:match("wingman(%d+)")
			if i then
				i = tonumber(i)
				targetid = self:call("playerteam", "getMemberId", i)
				if not targetid then
					targetid = levity.map.properties.playerid
				end
			else
				targetid = tonumber(targetid)
			end
		end
	end
	return targetid
end
function Shooter:getTargetObject(targetid)
	return levity.map.objects[self:getTargetId(targetid)]
end

local AttackAnimTile = {
	state = "attack"
}
local function getAttackAnimTime(tileset)
	local attackgid = levity.map:getTileGid(tileset, AttackAnimTile)
	return attackgid and levity.map:getAnimTime(attackgid) or 0
end

function Shooter:isTimeToFire()
	local firetime = self.properties.firetime
	return type(firetime) == "number" and self.timer >= firetime
end

function Shooter:canPrepareToFire()
	if self:call(levity.map.properties.playerid, "isInDialogue")
		and not self.properties.fireindialogue
	or type(self.properties.firetime) ~= "number"
	or not self.properties.firetimeconstant
		and (self:call(self.id, "isOnCameraEdge")
			or not self:call(self.id, "isOnCamera"))
	--or self:call(self.id, "isRescuing")
	then
		return false
	end

	local targetid = self.properties.firetargetid
	if targetid == "player" or targetid == "none" then
		if self:call(levity.map.properties.playerid, "isKilled") then
			return false
		end
	end

	return true
end

function Shooter:canFire()
	return self:isTimeToFire()
	and self:call(self.id, "isOnCamera")
	--and not self:call(self.id, "isRescuing")
	and not self:call(self.id, "hasCover")
	and self:hasLineOfFire()
	and (not self.properties.firerequiretarget
		or self:getTargetObject(self.properties.firetargetid))
end

function Shooter:hasLineOfFire()
	local bullet = levity.map.objecttypes[self.properties.firebullet]
	if not bullet then
		return false
	end
	local tilelayer = self.properties.firetilelayer
	if tilelayer then
		return self:call(tilelayer, "isDamageActive")
	end
	local target = self:getTargetObject(self.properties.firetargetid)
	local faceangle = self:call(self.id, "getFaceAngle")
	if target and faceangle then
		local cx, cy = self.object.body:getWorldCenter()
		local tx, ty = target.body:getWorldCenter()
		local dx, dy = tx - cx, ty - cy

		local speed = bullet.speed
		local ax, ay = bullet.accelx, bullet.accely
		if ax and ay then
		--	d = s + v0*t + .5*a*t*t
		--	v0*t = d - s - .5*a*t*t
		--	l = d - s
		--	v0 = l/t - .5*a*t
			local t = self.properties.firetimetotarget or 1
			local vx = dx/t - .5*ax*t
			local vy = dy/t - .5*ay*t

			dx = vx
			dy = vy
		end
		local dist = math.hypot(dx, dy)

		local arc = math.rad(self.properties.firearc or 45)
		local mindot = math.cos(arc)
		local dot = math.dot(dx, dy, math.cos(faceangle), math.sin(faceangle))
		if mindot * dist > dot then
			return false
		end

		local lifetime = bullet.lifetime
		if lifetime == "animation" then
			local bullettile = levity.map:getTile(bullet.tileset,
								bullet.tileid)
			local animation = bullettile.animation
			lifetime = animation and animation.duration/1000
				or ShmupBullet.MaxTime
		end
		if type(lifetime) == "number" then
			local bulletdist = speed*lifetime
				+ getAttackAnimTime(self.object.tile.tileset)
			if dist > bulletdist then
				return false
			end
		end
	end

	return true
end

local FirePoints = {}
function Shooter:fire(ox, oy, fireangle)
	local bullet = levity.map.objecttypes[self.properties.firebullet]
	if not bullet then
		return
	end

	local firelimit = self.properties.firelimit
	local fansize = math.floor(self.properties.firefan or 1)

	local firepoints = self.properties.firepoints
	if firepoints and not (ox and oy) then
		if firelimit then
			local numtofire = 0
			for firepoint in firepoints:gmatch("([^%s]+)%s*") do
				numtofire = numtofire + fansize
			end
			if self.numfired + numtofire > firelimit then
				return
			end
		end
		local basetile = levity.map.tiles[self.object.gid]
		if firepoints == "random" then
			while #FirePoints > 0 do
				FirePoints[#FirePoints] = nil
			end
			local objectgroup = basetile.objectGroup
			local objects = objectgroup and objectgroup.objects
			for i = 1, #objects do
				if objects[i].type=="FirePoint" then
					FirePoints[#FirePoints+1] = objects[i]
				end
			end
			if #FirePoints > 0 then
				local i = love.math.random(#FirePoints)
				local fp = FirePoints[i]
				ox, oy = levity.map:getTileShapePosition(
					self.object.gid, fp)
				fireangle = fp and fp.properties.angle
				fireangle = fireangle and math.rad(fireangle)
				self:fire(ox, oy, fireangle)
			end
			return
		end
		for firepoint in firepoints:gmatch("([^%s]+)%s*") do
			ox, oy = levity.map:getTileShapePosition(self.object.gid, firepoint)
			local og = basetile and basetile.objectGroup
			local fp = og and og.objects[firepoint]
			fireangle = fp and fp.properties.angle
			fireangle = fireangle and math.rad(fireangle)
			self:fire(ox, oy, fireangle)
		end
		return
	end

	if firelimit then
		if self.numfired + fansize > firelimit then
			return
		end
	end

	local cx, cy = self.object.body:getWorldCenter()
	cx = cx + (ox or 0)
	cy = cy + (oy or 0)

	local tilelayer = self.properties.firetilelayer
	if tilelayer then
		local c, r = self:call(tilelayer, "getRandomTile")
		if c and r then
			c = c + .5
			r = r + .5
			cx, cy = levity.map:convertTileToPixel(c, r)
		end
	end
	fireangle = fireangle or self:call(self.id, "getFaceAngle")
	local speed = 1
	local target = self:getTargetObject(self.properties.firetargetid)
	if target and target.body then
		local tx, ty = target.body:getWorldCenter()
		local dx, dy = tx - cx, ty - cy
		local ax, ay = bullet.accelx, bullet.accely
		if ax and ay then
			local t = self.properties.firetimetotarget or 1
			dx = dx/t - .5*ax*t
			dy = dy/t - .5*ay*t
			speed = math.hypot(dx, dy)
		end
		fireangle = math.atan2(dy, dx)
	end

	local keepupwithcamera = not target
		or target.id == levity.map.properties.playerid

	local fanslice = math.rad(self.properties.firefanslice or 0)
	fireangle = fireangle - fanslice*(fansize-1)/2

	local firelayer = self.properties.firelayer or "npcshots"
	local i = 1
	while i <= fansize do
		local bullet = ShmupBullet.create(self.properties.firebullet,
			cx, cy,
			speed*math.cos(fireangle), speed*math.sin(fireangle),
			firelayer, keepupwithcamera, self.properties.firesilent)
		if self.firedids then
			self.firedids[bullet.id] = true
			self.numfired = self.numfired + 1
		end
		self:send("enemyfireparticles", "emit", 8, cx, cy,
			fireangle)
		fireangle = fireangle + fanslice
		i = i + 1
	end

	if type(self.properties.firetime) == "number" then
		self.timer = 0
	end

	self:send(self.id, "shotsFired", fansize)
	local rideid = self.properties.rideid
	if rideid then
		self:send(rideid, "riderShotsFired", fansize)
	end
end

function Shooter:loopedAnimation()
	local gid = self.object.gid
	local state = levity.map:getTileLineName(gid, "state")
	if state == "attack" then
		if self:canFire() then
			self:fire()
		end
	end

	local nextanim = self.properties.nextanim
	local nextgid = nextanim and levity.map:getTileGid(self.object.tile.tileset, nextanim)

	if nextgid then
		self.object:setGid(nextgid)
	end
end

function Shooter:isAttacking()
	local state = levity.map:getTileLineName(self.object.gid, "state")
	return state == "attack" or state == "fire"
end

function Shooter:isWarning()
	local firetime = self.properties.firetime
	local bullet = levity.map.objecttypes[self.properties.firebullet]
	if bullet and type(firetime) == "number" then
		local firewarningtime = self.properties.firewarningtime or firetime/3
		return self.timer + firewarningtime >= firetime
	end
end

function Shooter:endMove(dt)
	if not self:canPrepareToFire() then
		self.timer = 0
		return
	end

	local waswarning = self:isWarning()
	self.timer = self.timer + dt
	if not waswarning and self:isWarning() then
		levity.bank:play(self.properties.firewarningsound)
	end

	if self:isTimeToFire() and not self:isAttacking() then
		local animtile = levity.map.tiles[self.object.gid]
		local tileset = levity.map.tilesets[animtile.tileset]
		local attackline = tileset.properties.column_attack
			or tileset.properties.row_attack
		if attackline then
			local angle = self:call(self.id, "getFaceAngle")
			self:send(self.id, "faceAngle", angle, "attack")
		elseif self:canFire() then
			self:fire()
		end
		if self.properties.firetimeconstant then
			self.timer = 0
		end
	end

	local targetid = self.properties.firetargetid
	local target = self:getTargetObject(targetid)
	if targetid and not target then
		self:send(self.id, "fireTargetGone")
		self.properties.firetargetid = nil
	end
end

function Shooter:defeat(withwhat, giveitemtoid, withbomb)
	if withwhat == "clear"
	and not self.properties.defeatfireonclear then
		return
	end
	if self.properties.firetime == "defeat" then
		self:fire()
	end
end

function Shooter:objectDiscarded(id)
	if self.firedids and self.firedids[id] then
		self.numfired = self.numfired - 1
		self.firedids[id] = nil
	end
end

function Shooter:drawLineOfFire(diry)
	if not self:isWarning() then
		return
	end
	if not self:hasLineOfFire() or self:call(self.id, "hasCover") then
		return
	end
	local firelinecolor = self.properties.firelinecolor
	if not firelinecolor then
		return
	end
	local cx, cy = self.object.body:getWorldCenter()
	local targetid = self.properties.firetargetid
	local target = self:getTargetObject(targetid)
	local targetbody = target and target.body
	local tx, ty
	if targetbody then
		tx, ty = targetbody:getWorldCenter()
	else
		local faceangle = self:call(self.id, "getFaceAngle")
		if faceangle then
			tx = cx + math.cos(faceangle)*360
			ty = cy + math.sin(faceangle)*360
		else
			return
		end
	end

	if diry * (ty - cy) < 0 then
		return
	end

	local firelinecolor2 = self.properties.firelinecolor2
	if firelinecolor2 then
		local firelinefreq = self.properties.firelinefreq or 30
		if math.sin(firelinefreq*love.timer.getTime()*math.pi) < 0 then
			firelinecolor = firelinecolor2
		end
	end
	levity.setColorARGB(firelinecolor)
	love.graphics.line(cx, cy, tx, ty)
	love.graphics.setColor(1,1,1)
end

function Shooter:beginDraw()
	self:drawLineOfFire(-1)
end

function Shooter:endDraw()
	self:drawLineOfFire(1)
end

return Shooter
