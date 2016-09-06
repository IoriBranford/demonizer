local levity = require "levity"

local Spark = class(function(self, id)
	self.object = levity.map.objects[id]
	local properties = self.object.properties

	self.time = properties.lifetime or 1
	if properties.accelx or properties.accely then
		self.ax = properties.accelx or 0
		self.ay = properties.accely or 0
	end

	local vx = properties.velx or 0
	local vy = properties.vely or 0
	local body = self.object.body
	body:setLinearVelocity(vx, vy)
end)

function Spark:beginMove(dt)
	if self.ax and self.ay then
		local body = self.object.body
		body:applyForce(self.ax, self.ay)
	end

	self.time = self.time - dt
	if self.time <= 0 then
		self.object.dead = true
	end
end

return Spark
