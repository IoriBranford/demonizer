local levity = require "levity"

local LinearPath = class(function(self, object)
	local path = object
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

function Walker:findStartPoint(sx, sy, svx, svy)
	local points = self.path.points
	local p = points[1]
	--local closestdistsq = math.hypotsq(sx - p.x, sy - p.y)

	for i = 2, #points do
		local q = points[i]

		local pqx, pqy = q.x - p.x, q.y - p.y
		local psx, psy = sx - p.x, sy - p.y
		local qsx, qsy = sx - q.x, sy - q.y

		local pqdotps = math.dot(pqx, pqy, psx, psy)
		local pqdotqs = math.dot(pqx, pqy, qsx, qsy)
		local pqdotsv = math.dot(pqx, pqy, svx, svy)

		if pqdotsv >= 0 and pqdotps >= 0 and pqdotqs < 0 then
			self.desti = i
			break
		end

		--local distsq = math.huge
		--
		--if pqdotps < 0 then
		--	distsq = math.hypotsq(psx, psy)
		--elseif pqdotqs < 0 then
		--	local psdistsq = math.hypotsq(psx, psy)
		--	local projdist = pqdotps / math.sqrt(psdistsq)
		--	distsq = psdistsq - (projdist*projdist)
		--end
                --
		--if distsq <= closestdistsq then
		--	self.desti = i
		--	closestdistsq = distsq
		--end

		p = q
	end
end

function Walker:getVelocityAt(dt, x, y)
	local vx, vy
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

		vx, vy = (destx - x) / dt, (desty - y) / dt
	else
		local dist = math.sqrt(distsq)
		local dirx, diry = distx / dist, disty / dist

		vx, vy = dirx * self.speed, diry * self.speed
	end

	return vx, vy
end

function Walker:finished()
	return self.desti > #self.path.points or self.t >= (self.pathtime or 1)
end

function Walker:walk(dt, x, y, timescale)
	if self:finished() then
		return 0, 0
	end

	timescale = timescale or 1
	dt = dt * timescale

	local vx, vy = 0, 0
	if not self:finished() then
		vx, vy = self:getVelocityAt(dt, x, y)
	end

	self.t = self.t + dt

	return vx*timescale, vy*timescale
end

function LinearPath:newWalker(pathtime)
	return Walker(self, pathtime)
end

return LinearPath
