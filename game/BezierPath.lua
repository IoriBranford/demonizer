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
end)

function BezierPath:getPosition(t, speed)
	return self.positioncurve:evaluate(t * speed)
end

function BezierPath:getVelocity(t, speed)
	local vx, vy = self.velocitycurve:evaluate(t * speed)
	return vx * speed, vy * speed
end

function BezierPath:finished(t, speed)
	return t * speed > 1
end

function BezierPath:beginDraw()
	love.graphics.line(self.positioncurve:render())
end

return BezierPath
