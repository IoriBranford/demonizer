local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupPlayer = levity.machine:requireScript("ShmupPlayer")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local ShmupAlly = class(function(self, id, allyindex)
	self.object = levity.map.objects[id]
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)
	self.firetimer = 0
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setFriction(0)
		fixture:setCategory(ShmupCollision.Category_Player)
		fixture:setMask(
			ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_Player,
			ShmupCollision.Category_PlayerShot)
	end

	local playerid = levity.map.properties.playerid
	self.allyindex = allyindex
end)

ShmupAlly.SnapToPlayerVelocity = 1/8

function ShmupAlly:beginMove(dt)
	local body = self.object.body

	local playerid = levity.map.properties.playerid

	local cx, cy = body:getWorldCenter()
	local dx, dy = levity.machine:call(playerid, "allyPosition", self.allyindex)

	local vx0, vy0 = body:getLinearVelocity()
	local vx1, vy1 = dx - cx, dy - cy
	local snaptopv = ShmupAlly.SnapToPlayerVelocity / dt
	local ax = vx1 * snaptopv - vx0
	local ay = vy1 * snaptopv - vy0

	local mass = body:getMass()
	body:applyLinearImpulse(mass * ax, mass * ay)

	if levity.machine:call(playerid, "isFiring") then
		if self.firetimer >= ShmupPlayer.BulletInterval then
			while self.firetimer >= ShmupPlayer.BulletInterval do
				self.firetimer = self.firetimer
						- ShmupPlayer.BulletInterval
			end

			local angle = math.pi*1.5

			local player = levity.map.objects[playerid]
			local playercx, playercy = player.body:getWorldCenter()
			angle = angle +
				math.atan2(cx - playercx, playercy - cy) * .0625

			cx = cx + (math.cos(angle) * ShmupPlayer.BulletSpeed * self.firetimer)
			cy = cy + (math.sin(angle) * ShmupPlayer.BulletSpeed * self.firetimer)

			ShmupBullet.create(cx, cy,
				ShmupPlayer.BulletSpeed, angle,
				"impshot", 0,
				self.object.layer,
				ShmupCollision.Category_PlayerShot)
		end
		self.firetimer = self.firetimer + dt
	else
		self.firetimer = ShmupPlayer.BulletInterval
	end
	--local vx0, vy0 = body:getLinearVelocity()
	--local vx1, vy1 = 0,0
	--body:applyLinearImpulse(mass * (vx1-vx0), mass * (vy1-vy0))
end

return ShmupAlly
