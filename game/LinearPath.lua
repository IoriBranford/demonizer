local levity = require "levity"

local LinearPath = class(function(self, id)
	local path = levity.map.objects[id]
	self.points = path.polyline

	local p = self.points[1]
	self.drawpoints = {p.x, p.y}
	self.directions = {}
	self.totallength = 0
	for i = 2, #self.points do
		local q = self.points[i]
		local dx = (q.x - p.x)
		local dy = (q.y - p.y)
		local length = math.hypot(dx, dy)
		self.totallength = self.totallength + length

		table.insert(self.directions, dx/length)
		table.insert(self.directions, dy/length)

		table.insert(self.drawpoints, q.x)
		table.insert(self.drawpoints, q.y)

		p = q
	end
end)

function LinearPath:getDirection(i)
	return self.directions[2*i - 1], self.directions[2*i]
end

function LinearPath:beginDraw()
	love.graphics.line(self.drawpoints)
end

local Walker = class(function(self, path, pathtime)
	self.path = path
	self.pathtime = pathtime
	self.t = 0
	self.desti = 1
	self.speed = self.path.totallength / (pathtime or 1)
end)

function Walker:getVelocityAt(dt, x, y)
	local point = self.path.points[self.desti]
	local px, py = point.x, point.y

	local distx = px - x
	local disty = py - y
	local distsq = math.hypotsq(distx, disty)

	local exdistsq = (self.speed * self.speed * dt * dt) - distsq
	if exdistsq >= 0 then
		local destx, desty
		if self.desti < #self.path.points then
			local nextdirx, nextdiry = self.path:getDirection(self.desti)
			local exdist = math.sqrt(exdistsq)
			destx = px + nextdirx * exdist
			desty = py + nextdiry * exdist
			self.desti = self.desti + 1
		else
			local endpoint = self.path.points[self.desti]
			destx = endpoint.x
			desty = endpoint.y
		end

		return (destx - x) / dt, (desty - y) / dt
	end

	local dirx, diry

	if self.desti > 1 then
		dirx, diry = self.path:getDirection(self.desti - 1)
	else
		local dist = math.sqrt(distsq)
		dirx, diry = distx / dist, disty / dist
	end

	return dirx * self.speed, diry * self.speed
end

function Walker:finished()
	return self.desti > #self.path.points or self.t >= (self.pathtime or 1)
end

function Walker:walk(dt, x, y)
	if self:finished() then
		return 0, 0
	end

	local vx, vy = 0, 0
	if not self:finished() then
		vx, vy = self:getVelocityAt(dt, x, y)
	end

	self.t = self.t + dt

	return vx, vy
end

function LinearPath:newWalker(pathtime)
	return Walker(self, pathtime)
end

return LinearPath
