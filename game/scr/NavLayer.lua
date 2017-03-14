local levity = require "levity"

--- @table NavEdge
-- @field dest
-- @field cost

local NavLayer

local function addSegment(self, p1, p2, cost)
	local n1 = self:getNode(p1.x, p1.y, true)
	local n2 = self:getNode(p2.x, p2.y, true)
	if n1 ~= n2 then
		n1[#n1 + 1] = { dest = p2, cost = cost }
		n2[#n2 + 1] = { dest = p1, cost = cost }
	end
end

NavLayer = class(function(self, layer)
	self.layer = layer
	self.nodegrid = {} -- lists of possible destinations from each grid cell
	-- in the form:
	-- {
	-- 	cell1 = {edge1, edge2, ...},
	-- 	cell2 = {edge3, edge4, ...}, ...
	-- }

	for _, object in pairs(self.layer.objects) do
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
end)

function NavLayer:getNode(x, y, createnode)
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

function NavLayer:findNearestPoint(x, y)
	local nearestpoint
	local nearestdistsq = math.huge
	for ni, node in pairs(self.nodegrid) do
		for ei, edge in pairs(node) do
			local dest = edge.dest
			local distsq = math.hypotsq(dest.x - x, dest.y - y)
			if distsq < nearestdistsq then
				nearestpoint = dest
				nearestdistsq = distsq
			end
		end
	end

	return nearestpoint
end

function NavLayer:beginDraw()
	for _, object in pairs(self.layer.objects) do
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
end

local Walker

Walker = class(function(self, navlayer, pickNextDest, x, y, userdata)
	self.navlayer = navlayer

	local node = navlayer:getNode(x, y)
	if node then
		self.destpoint = pickNextDest(navlayer, node, userdata)
	else
		self.destpoint = navlayer:findNearestPoint(x, y)
	end

	self.pickNextDest = pickNextDest
	self.userdata = userdata
end)

function Walker:getVelocity(dt, speed, x, y)
	if not self.destpoint then
		return 0, 0
	end
	local vx, vy = 0, 0
	local distx = self.destpoint.x - x
	local disty = self.destpoint.y - y
	local distsq = math.hypotsq(distx, disty)

	local exdistsq = (speed * speed * dt * dt) - distsq
	-- amount squared by which you would overshoot destination this frame

	if exdistsq >= 0 then
		local node = self.navlayer:getNode(self.destpoint.x,
							self.destpoint.y)
		local newdest = self.pickNextDest(self.navlayer.layer.name,
							node, self.userdata)
		if newdest then
			-- apply excess dist towards new destination
			local exdist = math.sqrt(exdistsq)

			local newdirx = newdest.x - self.destpoint.x
			local newdiry = newdest.y - self.destpoint.y
			local newdestdist = math.hypot(newdirx, newdiry)

			newdirx = exdist * newdirx / newdestdist
			newdiry = exdist * newdiry / newdestdist

			distx = distx + newdirx
			disty = disty + newdiry
		end
		self.destpoint = newdest

		vx, vy = distx / dt, disty / dt
	else
		local dist = math.sqrt(distsq)
		local dirx, diry = distx / dist, disty / dist

		vx, vy = dirx * speed, diry * speed
	end

	return vx, vy
end

function NavLayer:newWalker(pickNextDest, x, y, userdata)
	return Walker(self, pickNextDest, x, y, userdata)
end

return NavLayer
