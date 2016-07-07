local levity = require "levity"
require "class"

local LinearPath = class(function(self, id)
	local path = levity.map.objects[id]
	self.points = path.polyline

	local p = self.points[1]
	self.drawpoints = {p.x, p.y}
	self.totallength = 0
	for i = 2, #self.points, 1 do
		local q = self.points[i]
		local dx = (q.x - p.x)
		local dy = (q.y - p.y)
		local length = math.sqrt(dx*dx + dy*dy)
		self.totallength = self.totallength + length

		table.insert(self.drawpoints, q.x)
		table.insert(self.drawpoints, q.y)

		p = q
	end
end)

function LinearPath:getVelocityTo(i, fromx, fromy, pathtime)
	local point = self.points[i]
	local dx = point.x - fromx
	local dy = point.y - fromy
	local distsq = (dx*dx + dy*dy)
	if distsq < 1 then
		return 0,0
	end
	local dist = math.sqrt(distsq)
	local dirx, diry = dx / dist, dy / dist
	local speed = self.totallength / (pathtime or 1)
	return dirx * speed, diry * speed
end

function LinearPath:updatePoint(i, x, y, vx, vy)
	local point = self.points[i]
	local dx = point.x - x
	local dy = point.y - y

	local dot = dx*vx + dy*vy
	if dot <= 0 then
		i = i + 1
	end
	return i
end

function LinearPath:finished(i)
	return i > #self.points
end

function LinearPath:beginDraw()
	love.graphics.line(self.drawpoints)
end

return LinearPath
