local levity = require "levity"
require "class"

local BezierPath = class(function(self, id)
	local path = levity.map.objects[id]
	local polyline = path.polyline
	local points = {}

	for _, p in ipairs(polyline) do
		table.insert(points, p.x)
		table.insert(points, p.y)
	end

	self.positioncurve = love.math.newBezierCurve(points)
	self.velocitycurve = self.positioncurve:getDerivative()
	local time = path.properties.time or 1
	self.invtime = 1/time
end)

function BezierPath:getPosition(t)
	t = math.max(0, math.min(t * self.invtime, 1))
	return self.positioncurve:evaluate(t)
end

function BezierPath:getVelocity(t)
	t = math.max(0, math.min(t * self.invtime, 1))
	local vx, vy = self.velocitycurve:evaluate(t)
	return vx * self.invtime, vy * self.invtime
end

function BezierPath:finished(t)
	return t * self.invtime > 1
end

function BezierPath:beginDraw()
	love.graphics.line(self.positioncurve:render())
end

return BezierPath
