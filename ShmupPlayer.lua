local levity = require "levity"
local CollisionRules = require "CollisionRules"
require "class"

local ShmupPlayer = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.body:setFixedRotation(true)
	self.vx = 0
	self.vy = 0
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setFriction(0)
	end
end)

ShmupPlayer.Speed = 180

function ShmupPlayer:keypressed(key, u)
	if key == "up" then
		self.vy = self.vy - 1
	elseif key == "down" then
		self.vy = self.vy + 1
	elseif key == "left" then
		self.vx = self.vx - 1
	elseif key == "right" then
		self.vx = self.vx + 1
	end
end

function ShmupPlayer:keyreleased(key, u)
	if key == "up" then
		self.vy = self.vy + 1
	elseif key == "down" then
		self.vy = self.vy - 1
	elseif key == "left" then
		self.vx = self.vx + 1
	elseif key == "right" then
		self.vx = self.vx - 1
	end
end

function ShmupPlayer:beginMove(dt)
	local body = self.object.body
	local vx0, vy0 = body:getLinearVelocity()
	local vx1, vy1 = ShmupPlayer.Speed * self.vx, ShmupPlayer.Speed * self.vy

	local cameraid = self.object.properties.cameraid
	local camera = nil
	if cameraid then
		camera = levity.map.objects[cameraid]
	end
	if camera then
		local camvx, camvy = camera.body:getLinearVelocity()
		--vx1 = vx1 + camvx
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
