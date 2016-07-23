local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupPlayer = levity.machine:requireScript("ShmupPlayer")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local ShmupAlly = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)
	self.firetimer = 0
	self:refreshFixtures({ShmupCollision.Category_CameraEdge,
				ShmupCollision.Category_Player,
				ShmupCollision.Category_PlayerShot,
				ShmupCollision.Category_NPC,
				ShmupCollision.Category_NPCShot})

	local playerid = levity.map.properties.playerid
	self.allyindex = levity.machine:call(playerid, "newAllyIndex")

	self.convertobject = {
		x = self.object.x,
		y = self.object.y,
		gid = levity:getTileGid("demonizing", 0, 0)
	}
	levity:addObject(self.convertobject, self.object.layer)
	self.converttimer = 0
	self.npctype = levity:getTileColumnName(self.object.gid)
	self.oncamera = false

	self.locktargetid = nil
end)

-- this script changes sprites
function ShmupAlly:refreshFixtures(mask)
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_Player)
		-- can't capture until after conversion
		fixture:setMask(unpack(mask))
	end
end

local Sounds = {
	Lock = "targetlock.wav"
}
levity.bank:load(Sounds)

ShmupAlly.BulletGid = levity:getTileGid("demonshots", "ally", 0)
ShmupAlly.ConvertTime = 1
ShmupAlly.ConvertShake = 4
ShmupAlly.SnapToPlayerVelocity = 1/8
ShmupAlly.LockSearchWidth = 120
ShmupAlly.LockSearchHeight = 160

function ShmupAlly:destroy()
	self.object.dead = true
	if self.convertobject then
		self.convertobject.dead = true
	end
end

function ShmupAlly:beginContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()
	if category == ShmupCollision.Category_NPCShot then
		self:destroy()
	elseif category == ShmupCollision.Category_Camera then
		self.oncamera = true
	end
end

function ShmupAlly:endContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_Camera then
		self.oncamera = false
	end
end

function ShmupAlly:playerDead()
	-- can't capture and can be shot while player dead
	self:refreshFixtures({ShmupCollision.Category_CameraEdge,
				ShmupCollision.Category_Player,
				ShmupCollision.Category_PlayerShot,
				ShmupCollision.Category_NPC})
end

function ShmupAlly:playerRespawned()
	self:destroy()
end

function ShmupAlly:updateConversion(dt)
	self.converttimer = self.converttimer + dt
	if self.converttimer >= ShmupAlly.ConvertTime then
		self.convertobject.dead = true
		self.convertobject = nil
		self.converttimer = nil

		local gid = levity:getTileGid("demonwomen", self.npctype, 0)
		levity:setObjectGid(self.object, gid)

		self:refreshFixtures({ShmupCollision.Category_CameraEdge,
					ShmupCollision.Category_Player,
					ShmupCollision.Category_PlayerShot,
					ShmupCollision.Category_NPCShot})
	end
end

function ShmupAlly:updateFiring(dt)
	if self.firetimer <= 0 then
		local angle = math.pi*1.5
		local cx, cy = self.object.body:getWorldCenter()
		local playerid = levity.map.properties.playerid

		local locktargetid
		if levity.machine:call(playerid, "isFocused") then
			locktargetid = self:findLockTarget()
		end

		if locktargetid then
			if self.locktargetid ~= locktargetid then
				levity.bank:play(Sounds.Lock)
			end
			self.locktargetid = locktargetid
			local targetbody = levity.map.objects[locktargetid].body
			local tx, ty = targetbody:getWorldCenter()
			angle = math.atan2(ty-cy, tx-cx)
		else
			local player = levity.map.objects[playerid]
			local playercx, playercy = player.body:getWorldCenter()
			angle = angle +
				math.atan2(cx - playercx, playercy - cy) * .0625
		end

		self.firetimer = ShmupBullet.fireOverTime({
				x = cx,
				y = cy,
				speed = ShmupPlayer.BulletSpeed,
				angle = angle,
				gid = ShmupAlly.BulletGid,
				category = ShmupCollision.Category_PlayerShot
			}, self.object.layer, self.firetimer,
			ShmupPlayer.BulletInterval)
	end
	self.firetimer = self.firetimer - dt
end

function ShmupAlly:findLockTarget()
	local playerid = levity.map.properties.playerid
	local player = levity.map.objects[playerid]
	local playercx, playercy = player.body:getWorldCenter()
	local cx, cy = self.object.body:getWorldCenter()
	local dx, dy = cx - playercx, cy - playercy

	local x0 = dx + cx - ShmupAlly.LockSearchWidth
	local x1 = dx + cx + ShmupAlly.LockSearchWidth
	local y0 = dy + cy - ShmupAlly.LockSearchHeight
	local y1 = dy + cy + ShmupAlly.LockSearchHeight

	local foundlocktargetid = nil
	levity.world:queryBoundingBox(x0, y0, x1, y1, function(fixture)
		local userdata = fixture:getBody():getUserData()
		local id = userdata.id
		if not levity.machine:call(id, "canBeLockTarget") then
			return true
		end

		foundlocktargetid = id
		return false
	end)

	return foundlocktargetid
end

function ShmupAlly:beginMove(dt)
	local body = self.object.body

	local playerid = levity.map.properties.playerid

	local cx, cy = body:getWorldCenter()
	local dx, dy = levity.machine:call(playerid, "allyPosition", self.allyindex)
	if self.convertobject then
		dx = dx + ShmupAlly.ConvertShake*self.converttimer
				*math.sin(self.converttimer * 60)
	end

	local vx1, vy1 = dx - cx, dy - cy
	local snaptopv = ShmupAlly.SnapToPlayerVelocity / dt

	body:setLinearVelocity(vx1 * snaptopv, vy1 * snaptopv)

	if self.convertobject then
		self:updateConversion(dt)
	elseif self.oncamera then
		if levity.machine:call(playerid, "isFiring") then
			self:updateFiring(dt)
		else
			self.firetimer = 0
		end
	end
end

function ShmupAlly:endMove(dt)
	if self.convertobject then
		local x, y = self.object.body:getPosition()
		self.convertobject.body:setPosition(x, y + 1/64)
	end
end

function ShmupAlly:beginDraw()
	if self.convertobject then
		local flashrate = 30 * self.converttimer
		local flash = 0x80 * (math.cos(flashrate*math.pi) + 3)

		love.graphics.setColor(flash, 0xff, flash)
	end
end

function ShmupAlly:endDraw()
	if self.convertobject then
		love.graphics.setColor(0xff, 0xff, 0xff)
	end
end

return ShmupAlly
