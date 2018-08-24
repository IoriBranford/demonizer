--- Shooting functionality.
-- Shoots bullets at regular time intervals.
-- The time interval can be either a set time or the animation time.
-- Enemies can have restrictions on their shooting;
-- to ramp up challenge properly, put fewer restrictions on later enemies.
--@module Shooter

--- Shooter properties.
--@field firetargetid or "player" for the player character
--@field firearc Must be facing target within this arc to fire
--@field firebullet Name of bullet type
--@field firetime Seconds between shots or "animation" for the time of the current animation
--@field firefan Number of bullets to fire in a fan
--@field firefanslice Arc between two bullets in the fan
--@table Properties

local levity = require "levity"
local ShmupBullet = require "ShmupBullet"
local ShmupCollision = require "ShmupCollision"

local Shooter = class()
function Shooter:_init(object)
	self.id = object.id
	self.object = object
	self.properties = object.properties

	self.timer = 0

	local bullet = levity.map.objecttypes[self.properties.firebullet]
	if bullet and bullet.sound then
		levity.bank:load(bullet.sound)
	end
end

function Shooter:initQuery()
	local targetid = self.properties.firetargetid
	if not self:getTargetObject(targetid) then
		self.properties.firetargetid = nil
	end
end

function Shooter:getTargetId(targetid)
	if type(targetid) == "string" then
		if targetid == "player" then
			targetid = levity.map.properties.playerid
		elseif targetid == "randomWingman" then
			targetid = levity.scripts:call("playerteam", "getRandomWingmanId")
		else
			local i = targetid:match("wingman(%d+)")
			if i then
				i = tonumber(i)
				targetid = levity.scripts:call("playerteam", "getWingmanId", i)
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

function Shooter:canFire()
	return self:isTimeToFire()
	and levity.scripts:call(self.id, "isOnCamera")
	--and not levity.scripts:call(self.id, "isRescuing")
	and not levity.scripts:call(self.id, "hasCover")
	and self:hasLineOfFire()
end

function Shooter:hasLineOfFire()
	local bullet = levity.map.objecttypes[self.properties.firebullet]
	local faceangle = levity.scripts:call(self.id, "getFaceAngle")
	local target = self:getTargetObject(self.properties.firetargetid)
	if not bullet or not faceangle then
		return false
	end
	if target then
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

		local arc = math.rad(self.properties.firearc or 90)
		local mindot = math.cos(arc)
		local dot = math.dot(dx, dy, math.cos(faceangle), math.sin(faceangle))
		if mindot * dist > dot then
			return false
		end

		local lifetime = bullet.lifetime
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

function Shooter:fire()
	local bullet = levity.map.objecttypes[self.properties.firebullet]
	if not bullet then
		return
	end
	local faceangle = levity.scripts:call(self.id, "getFaceAngle")

	local cx, cy = self.object.body:getWorldCenter()
	local fireangle = faceangle
	local speed = 1
	local target = self:getTargetObject(self.properties.firetargetid)
	if target then
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

	local fansize = math.floor(self.properties.firefan or 1)
	local fanslice = math.rad(self.properties.firefanslice or 0)
	fireangle = fireangle - fanslice*(fansize-1)/2

	local i = 1
	while i <= fansize do
		ShmupBullet.create(self.properties.firebullet, cx, cy,
			speed*math.cos(fireangle), speed*math.sin(fireangle),
			"npcshots", keepupwithcamera)
		levity.scripts:send("enemyfireparticles", "emit", 8, cx, cy,
			fireangle)
		fireangle = fireangle + fanslice
		i = i + 1
	end

	if type(self.properties.firetime) == "number" then
		self.timer = 0
	end

	levity.scripts:send(self.id, "shotsFired", fansize)
	local rideid = self.properties.rideid
	if rideid then
		levity.scripts:send(rideid, "riderShotsFired", fansize)
	end
end

function Shooter:loopedAnimation()
	if self.properties.firetime == "animation" then
		self:fire()
		return
	end

	local animtile = levity.map.tiles[self.object.gid]
	local nextanim = animtile.properties.nextanim
	local nextgid = nextanim and levity.map:getTileGid(self.object.tile.tileset, nextanim)
	local nextstate = nextgid and levity.map:getTileLineName(nextgid, "state")

	if nextstate == "fire" then
		if self:canFire() then
			self:fire()
		else
			nextgid = nil
		end
	end

	if nextgid then
		self.object:setGid(nextgid)
	end
end

function Shooter:isAttacking()
	local state = levity.map:getTileLineName(self.object.gid, "state")
	return state == "attack" or state == "fire"
end

function Shooter:endMove(dt)
	if self.properties.firetime == "animation"
	or not levity.scripts:call(self.id, "isOnCamera")
	or levity.scripts:call(self:getTargetId(self.properties.firetargetid), "isKilled")
	--or levity.scripts:call(self.id, "isRescuing")
	then
		self.timer = 0
		return
	end

	self.timer = self.timer + dt

	if self:isTimeToFire() and not self:isAttacking() then
		local animtile = levity.map.tiles[self.object.gid]
		local tileset = levity.map.tilesets[animtile.tileset]
		local attackline = tileset.properties.column_attack
			or tileset.properties.row_attack
		if attackline then
			local angle = levity.scripts:call(self.id, "getFaceAngle")
			levity.scripts:send(self.id, "faceAngle", angle, "attack")
		elseif self:canFire() then
			self:fire()
		end
	end
end

return Shooter
