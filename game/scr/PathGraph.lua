local levity = require "levity"

--- @table Path a possible move from a PathGraph node
-- @field destx
-- @field desty
-- @field cost

local PathGraph

local function addSegment(self, p1, p2, cost)
	local n1 = self:getPaths(p1.x, p1.y, true)
	local n2 = self:getPaths(p2.x, p2.y, true)
	if n1 ~= n2 then
		n1[#n1 + 1] = { destx = p2.x, desty = p2.y, cost = cost }
		n2[#n2 + 1] = { destx = p1.x, desty = p1.y, cost = cost }
	end
end

local function addLineObject(self, object)
	local line = object.polyline or object.polygon
	if line then
		local cost = object.properties.cost or 1
		local p1 = line[1]
		for i = 2, #line do
			local p2 = line[i]
			addSegment(self, p1, p2, cost)
			p1 = p2
		end
		if object.shape == "polygon" then
			local p2 = line[1]
			addSegment(self, p1, p2, cost)
		end
	end
end

PathGraph = class(function(self, element)
	self.nodegrid = {} -- lists of possible paths from each grid cell
	-- in the form:
	-- {
	-- 	cell1 = {path1, path2, ...},
	-- 	cell2 = {path3, path4, ...}, ...
	-- }

	if element.objects then
		self.layer = element
		for _, object in pairs(self.layer.objects) do
			addLineObject(self, object)
		end
	else
		self.object = element
		addLineObject(self, self.object)
	end
end)

function PathGraph:getPaths(x, y, createnode)
	local c, r = levity.map:convertPixelToTile(x, y)
	c = math.floor(c)
	r = math.floor(r)
	local mapcolumns = levity.map.width
	local ni = mapcolumns*r + c
	local n = self.nodegrid[ni]
	if createnode and not n then
		self.nodegrid[ni] = {}
		n = self.nodegrid[ni]
	end
	return n
end

function PathGraph:findNearestPoint(x, y)
	local nearestx, nearesty
	local nearestdistsq = math.huge
	for ni, paths in pairs(self.nodegrid) do
		for pi, path in pairs(paths) do
			local destx, desty = path.destx, path.desty
			local distsq = math.hypotsq(destx - x, desty - y)
			if distsq < nearestdistsq then
				nearestx = destx
				nearesty = desty
				nearestdistsq = distsq
			end
		end
	end

	return nearestx, nearesty
end

function PathGraph:getId()
	if self.object then
		return self.object.id
	elseif self.layer then
		return self.layer.name
	end
end

local function drawLineObject(object)
	local line = object.polyline or object.polygon
	if line then
		local p1 = line[1]
		for i = 2, #line do
			local p2 = line[i]
			love.graphics.line(p1.x, p1.y, p2.x, p2.y)
			p1 = p2
		end
		if object.shape == "polygon" then
			local p2 = line[1]
			love.graphics.line(p1.x, p1.y, p2.x, p2.y)
		end
	end
end

function PathGraph:beginDraw()
	if self.object then
		drawLineObject(self.object)
	elseif self.layer then
		for _, object in pairs(self.layer.objects) do
			drawLineObject(object)
		end
	end
end

local Walker

Walker = class(function(self, graph, pickNextPath, x, y, mode, userdata)
	self.graph = graph

	if mode == "relative" then
		local nearestx, nearesty = graph:findNearestPoint(x, y)
		self.offx = x - nearestx
		self.offy = y - nearesty
	else
		self.offx = 0
		self.offy = 0
	end

	x = x - self.offx
	y = y - self.offy

	local paths = graph:getPaths(x, y)
	if paths then
		local path = pickNextPath(graph, paths, x, y, userdata)
		if path then
			self.destx = path.destx
			self.desty = path.desty
		end
	else
		self.destx, self.desty = graph:findNearestPoint(x, y)
	end
	self.prevx = x
	self.prevy = y

	self.pickNextPath = pickNextPath
	self.userdata = userdata
end)

function Walker:getVelocity(dt, speed, x, y)
	if not self.destx or not self.desty then
		return 0, 0
	end
	local vx, vy = 0, 0
	local distx = self.destx + self.offx - x
	local disty = self.desty + self.offy - y
	local distsq = math.hypotsq(distx, disty)

	local exdistsq = (speed * speed * dt * dt) - distsq
	-- amount squared by which you would overshoot destination this frame

	if exdistsq >= 0 then
		local paths = self.graph:getPaths(self.destx, self.desty)
		local nextpath = self.pickNextPath(self.graph:getId(),
				paths, self.prevx, self.prevy, self.userdata)

		if nextpath then
			local nextdestx, nextdesty =
				nextpath.destx, nextpath.desty

			-- apply excess dist towards next destination
			local exdist = math.sqrt(exdistsq)

			local nextdirx = nextdestx - self.destx
			local nextdiry = nextdesty - self.desty
			local nextdestdist = math.hypot(nextdirx, nextdiry)

			nextdirx = exdist * nextdirx / nextdestdist
			nextdiry = exdist * nextdiry / nextdestdist

			distx = distx + nextdirx
			disty = disty + nextdiry
			self.prevx, self.prevy = self.destx, self.desty
			self.destx, self.desty = nextdestx, nextdesty
		end

		vx, vy = distx / dt, disty / dt
	else
		local dist = math.sqrt(distsq)
		local dirx, diry = distx / dist, disty / dist

		vx, vy = dirx * speed, diry * speed
	end

	return vx, vy
end

--- Init state of a journey through a PathGraph.
-- Paths can be considered one of:
-- 	absolute positions - get on and stay on line
-- 	relative positions - move in line direction, not necessarily on line
-- @param pickNextPath function(graphid, paths, prevx, prevy, userdata) returns desired path from paths
-- @param x starting position
-- @param y starting position
-- @param mode "absolute" or "relative"
-- @param userdata
-- @return new walker
function PathGraph:newWalker(pickNextPath, x, y, mode, userdata)
	return Walker(self, pickNextPath, x, y, mode, userdata)
end

function PathGraph.pickNextPath_linear1way(graphid, paths, prevx, prevy, userdata)
	for i = 1, #paths do
		local path = paths[i]
		if path.destx ~= prevx or path.desty ~= prevy then
			return path
		end
	end
end

function PathGraph.pickNextPath_linearUp(graphid, paths, prevx, prevy, userdata)
	for i = 1, #paths do
		local path = paths[i]
		if path.desty < prevy then
			return path
		end
	end
end

function PathGraph.pickNextPath_linear2way(graphid, paths, prevx, prevy, userdata)
	if #paths == 1 then
		return paths[1]
	end
	return PathGraph.pickNextPath_linear(graphid, paths, prevx, prevy, userdata)
end

return PathGraph
