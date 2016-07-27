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

function LinearPath:beginDraw()
	love.graphics.line(self.drawpoints)
end

local Walker = class(function(self, path, pathtime)
	self.path = path
	self.pathtime = pathtime
	self.t = 0
	self.i = 1
end)

function Walker:getVelocityAt(x, y)
	local point = self.path.points[self.i]
	local dx = point.x - x
	local dy = point.y - y
	local distsq = (dx*dx + dy*dy)
	if distsq < 1 then
		return 0,0
	end
	local dist = math.sqrt(distsq)
	local dirx, diry = dx / dist, dy / dist
	local speed = self.path.totallength / (self.pathtime or 1)
	return dirx * speed, diry * speed
end

function Walker:updatePoint(x, y, vx, vy)
	local point = self.path.points[self.i]
	local dx = point.x - x
	local dy = point.y - y

	local dot = dx*vx + dy*vy
	if dot <= 0 then
		self.i = self.i + 1
	end
end

function Walker:finished()
	return self.i > #self.path.points or self.t >= (self.pathtime or 1)
end

function Walker:walk(dt, x, y)
	if self:finished() then
		return 0, 0
	end

	local vx, vy = self:getVelocityAt(x, y)

	self:updatePoint(x, y, vx, vy)

	self.t = self.t + dt

	return vx, vy
end

function LinearPath:newWalker(pathtime)
	return Walker(self, pathtime)
end

return LinearPath
