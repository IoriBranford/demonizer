local levity = require "levity"

--- A possible move from a PathGraph node
-- @field destx
-- @field desty
-- @field length
-- @field cost
-- @field curve if bezier path
-- @field curvedir 1 = forward, -1 = reverse
-- @table Path

local PathGraph

local function addSegment(self, x1, y1, x2, y2, cost)
	local n1 = self:getPaths(x1, y1, true)
	local n2 = self:getPaths(x2, y2, true)
	local length = math.hypot(x2-x1, y2-y1)
	n1[#n1 + 1] = { destx = x2, desty = y2, length = length, cost = cost }
	n2[#n2 + 1] = { destx = x1, desty = y1, length = length, cost = cost }
end

local function addCurve(self, curve, cost)
	local points = curve:render()
	local length = 0
	for i = 1, #points - 3, 2 do
		local lenx = points[i+2] - points[i+0]
		local leny = points[i+3] - points[i+1]
		length = length + math.sqrt(lenx*lenx + leny*leny)
	end

	local x1, y1 = curve:getControlPoint(1)
	local x2, y2 = curve:getControlPoint(curve:getControlPointCount())

	addSegment(self, x1, y1, x2, y2, cost)
	local n1 = self:getPaths(x1, y1)
	local n2 = self:getPaths(x2, y2)
	n1[#n1].length = length
	n2[#n2].length = length
	n1[#n1].curve = curve
	n2[#n2].curve = curve
	n1[#n1].curvedir = 1
	n2[#n2].curvedir = -1
end

local function addLineObject(self, object)
	local line = object.polyline or object.polygon
	if not line then
		return
	end

	local drawpoints

	local cost = object.properties.cost or 1
	local beziercurve = object.properties.beziercurve or false
	if beziercurve and #line > 2 then
		local curve = love.math.newBezierCurve( line[1].x, line[1].y,
							line[2].x, line[2].y,
							line[3].x, line[3].y)

		for i = 4, #line do
			local p = line[i]
			curve:insertControlPoint(p.x, p.y,
				curve:getControlPointCount() + 1)
		end

		if object.shape == "polygon" then
			curve:insertControlPoint(line[1].x, line[1].y,
				curve:getControlPointCount() + 1)
		end

		addCurve(self, curve, cost)
		drawpoints = curve:render()
	else
		drawpoints = {}
		local p1 = line[1]
		drawpoints[#drawpoints + 1] = p1.x
		drawpoints[#drawpoints + 1] = p1.y
		for i = 2, #line do
			local p2 = line[i]
			drawpoints[#drawpoints + 1] = p2.x
			drawpoints[#drawpoints + 1] = p2.y
			addSegment(self, p1.x, p1.y, p2.x, p2.y, cost)
			p1 = p2
		end
		if object.shape == "polygon" then
			local p2 = line[1]
			drawpoints[#drawpoints + 1] = p2.x
			drawpoints[#drawpoints + 1] = p2.y
			addSegment(self, p1.x, p1.y, p2.x, p2.y, cost)
		end
	end

	object.properties.drawpoints = drawpoints
end

PathGraph = class()
function PathGraph:_init(element)
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
	element.visible = false
end

function PathGraph:getPaths(x, y, createnode)
	local c, r = x, y--levity.map:convertPixelToTile(x, y)
	c = math.floor(c)
	r = math.floor(r)
	local mapcolumns = levity.map.width*levity.map.tilewidth
	local ni = mapcolumns*r + c
	local n = self.nodegrid[ni]
	if createnode and not n then
		self.nodegrid[ni] = {}
		n = self.nodegrid[ni]
	end
	return n
end

function PathGraph:findNearestPoint(x, y)
	local paths = self:getPaths(x, y)
	if paths then
		return x, y
	end
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

function PathGraph:drawOver()
	for _, object in pairs(self.layer.objects) do
		local drawpoints = object.properties.drawpoints
		if drawpoints then
			love.graphics.line(drawpoints)
		end
	end
end

function PathGraph:beginDraw()
	if self.object then
		local drawpoints = self.object.properties.drawpoints
		if drawpoints then
			love.graphics.line(drawpoints)
		end
	end
end

function PathGraph:findTripLength(pickNextPath, x, y, userdata)
	if not self:getPaths(x, y) then
		x, y = self:findNearestPoint(x, y)
	end

	local length = 0
	local prevx, prevy = x, y
	local path = pickNextPath(self:getId(), self:getPaths(x, y),
			prevx, prevy, userdata)

	while path and length < 0x1000000 do
		length = length + path.length

		prevx, prevy = x, y
		x, y = path.destx, path.desty
		path = pickNextPath(self:getId(), self:getPaths(x, y),
			prevx, prevy, userdata)
	end
	return length
end

local Walker

Walker = class()
function Walker:_init(graph, pickNextPath, x, y, mode, userdata)
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
			if path.curve then
				self.curveodo = 0 -- odometer
			end
			self.path = path
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
end

function PathGraph.getCurvePoint(curvepath, odo)
	if not curvepath.curve then
		return
	end

	local t = odo / curvepath.length
	if curvepath.curvedir < 0 then
		t = 1 - t
	end
	return curvepath.curve:evaluate(t)
end

function Walker:getVelocity(dt, speed, x, y)
	if not self.destx or not self.desty then
		return 0, 0
	end

	local vx, vy = 0, 0

	local distx = self.destx + self.offx - x
	local disty = self.desty + self.offy - y
	local exdist -- amount by which you would overshoot destination this frame

	if self.path and self.path.curve then
		self.curveodo = self.curveodo + speed*dt
		exdist = self.curveodo - self.path.length
		if exdist <= 0 then
			local nextx, nexty = PathGraph.getCurvePoint(self.path,
						self.curveodo)

			distx = nextx + self.offx - x
			disty = nexty + self.offy - y
			vx, vy = distx / dt, disty / dt
		end
	else
		local dist = math.hypot(distx, disty)
		exdist = speed*dt - dist
		if exdist < 0 then
			local dirx, diry = distx / dist, disty / dist

			vx, vy = dirx * speed, diry * speed
		end
	end

	while exdist >= 0 do
		local paths = self.graph:getPaths(self.destx, self.desty)
		local nextpath = self.pickNextPath(self.graph:getId(),
				paths, self.prevx, self.prevy, self.userdata)

		if nextpath then
			local nextdestx, nextdesty =
				nextpath.destx, nextpath.desty

			-- apply excess dist towards next destination

			local nextdirx = nextdestx - self.destx
			local nextdiry = nextdesty - self.desty
			local nextdestdist = nextpath.length

			if exdist < nextdestdist then
				if nextpath.curve then
					self.curveodo = exdist
					local nextx, nexty =
						PathGraph.getCurvePoint(
							nextpath, exdist)

					nextdirx = nextx - self.destx
					nextdiry = nexty - self.desty
				else
					nextdirx = exdist * nextdirx / nextdestdist
					nextdiry = exdist * nextdiry / nextdestdist
				end
			end

			distx = distx + nextdirx
			disty = disty + nextdiry

			self.prevx, self.prevy = self.destx, self.desty
			self.destx, self.desty = nextdestx, nextdesty
			self.path = nextpath

			exdist = exdist - nextdestdist

			vx, vy = distx / dt, disty / dt
		else
			vx, vy = distx / dt, disty / dt
			break
		end
	end

	return vx, vy
end

return PathGraph
