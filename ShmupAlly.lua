local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupPlayer = levity.machine:requireScript("ShmupPlayer")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local ShmupAlly = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)
	self.firetimer = ShmupPlayer.BulletInterval
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

ShmupAlly.ConvertTime = 1
ShmupAlly.ConvertShake = 4
ShmupAlly.SnapToPlayerVelocity = 1/8

function ShmupAlly:destroyed()
	self.object.destroy = true
	if self.convertobject then
		self.convertobject.destroy = true
	end
end

function ShmupAlly:beginContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()
	if category == ShmupCollision.Category_NPCShot then
		self:destroyed()
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
	self:destroyed()
end

function ShmupAlly:updateConversion(dt)
	self.converttimer = self.converttimer + dt
	if self.converttimer >= ShmupAlly.ConvertTime then
		self.convertobject.destroy = true
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
	if self.firetimer >= ShmupPlayer.BulletInterval then
		local angle = math.pi*1.5

		local cx, cy = self.object.body:getWorldCenter()
		local playerid = levity.map.properties.playerid
		local player = levity.map.objects[playerid]
		local playercx, playercy = player.body:getWorldCenter()
		angle = angle +
			math.atan2(cx - playercx, playercy - cy) * .0625

		self.firetimer = ShmupBullet.fireOverTime(self.firetimer,
			ShmupPlayer.BulletInterval,
			cx, cy, ShmupPlayer.BulletSpeed, angle,
			"impshot", 0, self.object.layer,
			ShmupCollision.Category_PlayerShot)
	end
	self.firetimer = self.firetimer + dt
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
			self.firetimer = ShmupPlayer.BulletInterval
		end
	end
end

function ShmupAlly:endMove(dt)
	if self.convertobject then
		local x, y = self.object.body:getPosition()
		self.convertobject.body:setPosition(x, y + 1/64)
	end
end

return ShmupAlly
