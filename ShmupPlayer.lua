local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local ShmupPlayer = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)
	self.vx = 0
	self.vy = 0
	local os = love.system.getOS()
	self.firing = os == "Android" or os == "iOS"
	self.firetimer = 0
	self.didmousemove = false
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setFriction(0)
		fixture:setCategory(ShmupCollision.Category_Player)
		fixture:setMask(
			ShmupCollision.Category_Player,
			ShmupCollision.Category_PlayerShot)
	end
end)

ShmupPlayer.Speed = 180
ShmupPlayer.BulletSpeed = 32*60
ShmupPlayer.BulletInterval = 1/15

function ShmupPlayer:keypressed(key, u)
	if key == "up" then
		self.vy = self.vy - ShmupPlayer.Speed
	elseif key == "down" then
		self.vy = self.vy + ShmupPlayer.Speed
	elseif key == "left" then
		self.vx = self.vx - ShmupPlayer.Speed
	elseif key == "right" then
		self.vx = self.vx + ShmupPlayer.Speed
	elseif key == "z" then
		self.firetimer = ShmupPlayer.BulletInterval
		self.firing = true
	end
end

function ShmupPlayer:keyreleased(key, u)
	if key == "up" then
		self.vy = self.vy + ShmupPlayer.Speed
	elseif key == "down" then
		self.vy = self.vy - ShmupPlayer.Speed
	elseif key == "left" then
		self.vx = self.vx + ShmupPlayer.Speed
	elseif key == "right" then
		self.vx = self.vx - ShmupPlayer.Speed
	elseif key == "z" then
		self.firetimer = 0
		self.firing = false
	end
end

function ShmupPlayer:touchmoved(touch, x, y, dx, dy)
	self:mousemoved(x, y, dx, dy)
end

function ShmupPlayer:mousemoved(x, y, dx, dy)
	self.vx = self.vx + (dx / levity.camera.scale)
	self.vy = self.vy + (dy / levity.camera.scale)
	self.didmousemove = true
end

function ShmupPlayer:beginMove(dt)
	local body = self.object.body

	if self.firing then
		self.firetimer = self.firetimer + dt
		if self.firetimer >= ShmupPlayer.BulletInterval then
			local cx, cy = body:getWorldCenter()
			ShmupBullet.create(cx, cy,
				0, -ShmupPlayer.BulletSpeed,
				"impshot", 0,
				self.object.layer,
				ShmupCollision.Category_PlayerShot)

			while self.firetimer >= ShmupPlayer.BulletInterval do
				self.firetimer = self.firetimer
						- ShmupPlayer.BulletInterval
			end
		end
	end

	local vx0, vy0 = body:getLinearVelocity()
	local vx1, vy1 = self.vx, self.vy
	if self.didmousemove then
		vx1 = vx1 / dt
		vy1 = vy1 / dt
		self.vx = 0
		self.vy = 0
		didmousemove = false
	end

	local cameraid = self.object.properties.cameraid
	local camera = nil
	if cameraid then
		camera = levity.map.objects[cameraid]
	end
	if camera then
		local camvx, camvy = camera.body:getLinearVelocity()
		vy1 = vy1 + camvy
	end

	local mass = body:getMass()
	body:applyLinearImpulse(mass * (vx1-vx0), mass * (vy1-vy0))
end

function ShmupPlayer:endMove(dt)
	local cameraid = self.object.properties.cameraid
	local camera = nil
	if cameraid then
		camera = levity.map.objects[cameraid]
	end
	if camera then
		local cx, cy = self.object.body:getWorldCenter()
		levity.machine:call(cameraid, "swayWithPlayer", cx)
	end
end

return ShmupPlayer
