local levity = require "levity"
local CollisionRules = require "CollisionRules"
require "class"

local ShmupPlayer = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.body:setFixedRotation(true)
	self.vx = 0
	self.vy = 0
end)

ShmupPlayer.Speed = 120

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
	local mass = body:getMass()
	body:applyLinearImpulse(mass * (vx1-vx0), mass * (vy1-vy0))
end

return ShmupPlayer
