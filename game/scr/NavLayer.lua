local levity = require "levity"

local NavLayer
NavLayer = class(function(self, layer)
	self.layer = layer
	self.nodegrid = {} -- lists of possible destinations from each grid cell
	-- in the form:
	-- {
	-- 	cell1 = {destpoint1, destpoint2, ...},
	-- 	cell2 = {destpoint3, destpoint4, ...}, ...
	-- }

	local function addSegment(p1, p2)
		local n1 = self:getNode(p1.x, p1.y)
		local n2 = self:getNode(p2.x, p2.y)
		if n1 ~= n2 then
			n1[#n1 + 1] = p2
			n2[#n2 + 1] = p1
		end
	end

	for _, object in pairs(self.layer.objects) do
		local line = object.polyline or object.polygon
		if line then
			local p1 = line[1]
			for i = 2, #line do
				local p2 = line[i]
				addSegment(p1, p2)
				p1 = p2
			end
			if object.shape == "polygon" then
				local p2 = line[1]
				addSegment(p1, p2)
			end
		end
	end
end)

function NavLayer:getNode(x, y)
	local mapcolumns = self.layer.map.width
	local c = math.floor(x / self.layer.map.tilewidth)
	local r = math.floor(y / self.layer.map.tileheight)
	local ni = mapcolumns*r + c
	local n = self.nodegrid[ni]
	if not n then
		self.nodegrid[ni] = {}
		n = self.nodegrid[ni]
	end
	return n
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

Walker = class(function(self, navlayer, pickNextDest, x, y)
	self.navlayer = navlayer

	local node = navlayer:getNode(x, y)
	self.destpoint = pickNextDest(node)

	self.pickNextDest = pickNextDest
end)

function Walker:getVelocity(dt, speed, x, y)
	local distx = self.destpoint.x - x
	local disty = self.destpoint.y - y
	local distsq = math.hypotsq(distx, disty)

	local exdistsq = (speed * speed * dt * dt) - distsq
	-- amount you would overshoot destination this frame

	if exdistsq >= 0 then
		vx, vy = distx / dt, disty / dt
		local node = self.navlayer:getNode(self.destpoint.x,
							self.destpoint.y)
		self.destpoint = self.pickNextDest(node)
	else
		local dist = math.sqrt(distsq)
		local dirx, diry = distx / dist, disty / dist

		vx, vy = dirx * speed, diry * speed
	end

	return vx, vy
end

function NavLayer:newWalker(pickNextDest, x, y)
	return Walker(self, pickNextDest, x, y)
end

return NavLayer
