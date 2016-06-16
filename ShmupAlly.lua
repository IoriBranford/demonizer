local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupPlayer = levity.machine:requireScript("ShmupPlayer")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local ShmupAlly = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)
	local os = love.system.getOS()
	self.firing = os == "Android" or os == "iOS"
	self.firetimer = 0
	self.didmousemove = false
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setFriction(0)
		fixture:setCategory(ShmupCollision.Category_Player)
		fixture:setMask(
			ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_Player,
			ShmupCollision.Category_PlayerShot)
	end
end)

function ShmupAlly:beginMove(dt)
	local playerid = levity.map.properties.playerid
	local player = nil

	if playerid then
		player = levity.map.objects[playerid]
	end

	local body = self.object.body

	if self.firing then
		self.firetimer = self.firetimer + dt
		if self.firetimer >= ShmupPlayer.BulletInterval then
			while self.firetimer >= ShmupPlayer.BulletInterval do
				self.firetimer = self.firetimer
						- ShmupPlayer.BulletInterval
			end

			local cx, cy = body:getWorldCenter()
			cy = cy - (ShmupPlayer.BulletSpeed * self.firetimer)
			ShmupBullet.create(cx, cy,
				ShmupPlayer.BulletSpeed, math.pi*1.5,
				"impshot", 0,
				self.object.layer,
				ShmupCollision.Category_PlayerShot)
		end
	end

	--local vx0, vy0 = body:getLinearVelocity()
	--local vx1, vy1 = 0,0
	--local mass = body:getMass()
	--body:applyLinearImpulse(mass * (vx1-vx0), mass * (vy1-vy0))
end

return ShmupAlly
