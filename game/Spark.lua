local levity = require "levity"

local function loopedAnimation(self)
	levity:discardObject(self.object.id)
end

local function beginMove(self, dt)
	self.object.body:applyForce(self.ax, self.ay)
end

local Spark = class(function(self, id)
	self.object = levity.map.objects[id]
	local properties = self.object.properties

	self.time = properties.lifetime or 1

	if self.object.animation then
		self.loopedAnimation = loopedAnimation
	end

	if properties.accelx or properties.accely then
		self.beginMove = beginMove
		self.ax = properties.accelx or 0
		self.ay = properties.accely or 0
	end

	local vx = properties.velx or 0
	local vy = properties.vely or 0
	local body = self.object.body
	body:setLinearVelocity(vx, vy)
end)

function Spark:endMove(dt)
	self.time = self.time - dt
	if self.time <= 0 then
		levity:discardObject(self.object.id)
	end
end

return Spark
