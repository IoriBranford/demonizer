--@module Mover

--@field pathid Path object id, path layer name, "player" for player, or "mylayer" for original layer
--@field pathfinder
--@field pathmode "absolute" = get on and follow path, "relative" = treat path as movement from current pos
--@field pathoffsetx
--@field pathoffsety
--@field pathspeed
--@field pathspeedfunction "const" (default), "cos", "ncos", "abssin", "abscos"
--@field pathspeedmin when using a varying speed function - should be > 0
--@field pathspeedweighted
--@table Properties

local levity = require "levity"
local PathGraph = require "PathGraph"

local Mover = class()
function Mover:_init(object)
	self.object = object
	self.id = object.id
	self.body = object.body
	self.properties = object.properties

	self.prevx, self.prevy = self.body:getPosition()
end

local function getCurvePoint(curvepath, odo)
	if not curvepath.curve then
		return
	end

	local t = odo / curvepath.length
	if curvepath.curvedir < 0 then
		t = 1 - t
	end
	return curvepath.curve:evaluate(t)
end

function Mover:setOffsetX(ox)
	self.offx = ox
end

function Mover:resetPath()
	self.path = nil
	self.destx, self.desty = nil, nil
	self.curvetraveled = nil
end

local SpeedFunctions = {}

function SpeedFunctions.cos(t, min, max)
	local amp = (max - min)/2
	local mid = min + amp
	return mid + amp*math.cos(t*math.pi*2)
end

function SpeedFunctions.ncos(t, min, max)
	local amp = (max - min)/2
	local mid = min + amp
	return mid - amp*math.cos(t*math.pi*2)
end

function SpeedFunctions.abssin(t, min, max)
	local amp = (max - min)
	return min + amp*math.abs(math.sin(t*math.pi))
end

function SpeedFunctions.abscos(t, min, max)
	local amp = (max - min)
	return min + amp*math.abs(math.cos(t*math.pi))
end

function SpeedFunctions.halfabscos(t, min, max)
	return SpeedFunctions.abscos(t/2, min, max)
end

function SpeedFunctions.halfabssin(t, min, max)
	return SpeedFunctions.abssin(t/2, min, max)
end

function Mover:beginMove(dt)
	if self.orbitangle then
		local orbitspeed = math.rad(self.properties.rideorbitspeed or 360)
		self.orbitangle = self.orbitangle + orbitspeed*dt
	end

	local playerid = levity.map.properties.playerid
	local rideid = self.properties.rideid
	if rideid == "player" then
		rideid = playerid
	end
	local ride = levity.map.objects[rideid]
	if ride then
		return
	end

	local destx, desty = self.destx, self.desty
	local offx, offy = self.offx or 0, self.offy or 0

	local pathid = self.properties.pathid
	if pathid == "player" then
		pathid = playerid
	elseif pathid == "mylayer" then
		pathid = self.object.properties.originallayer or self.object.layer.name
	end
	pathid = tonumber(pathid) or pathid

	local pathobjbody = levity.map.objects[pathid] or levity.map.layers[pathid]
	pathobjbody = pathobjbody and pathobjbody.body

	if not destx or not desty then -- Choose dest
		local x, y = self.body:getPosition()

		if self.properties.pathmode == "relative"
		and (not self.offx or not self.offy) then
			local nearestx, nearesty = levity.scripts:call(pathid, "findNearestPoint", x, y)
			nearestx = nearestx or (pathobjbody and pathobjbody:getX())
			nearesty = nearesty or (pathobjbody and pathobjbody:getY())
			offx = x - nearestx
			offy = y - nearesty
			self.offx, self.offy = offx, offy
		end

		local pathx, pathy = math.floor(x - offx), math.floor(y - offy)

		local paths = pathid and levity.scripts:call(pathid, "getPaths", pathx, pathy)
		local pathfinder = self.properties.pathfinder
		pathfinder = pathfinder and Mover["pathfind_"..pathfinder]

		if pathfinder and paths then
			local prevx = self.prevx
			local prevy = self.prevy
			local path = pathfinder(self, paths, prevx, prevy)
			destx = path and path.destx
			desty = path and path.desty
			if path then
				self.path = path
				self.prevx, self.prevy = pathx, pathy
			end
		else
			destx, desty = levity.scripts:call(pathid, "findNearestPoint", pathx, pathy)
			destx = destx or (pathobjbody and pathobjbody:getX())
			desty = desty or (pathobjbody and pathobjbody:getY())
		end

		self.destx, self.desty = destx, desty
	end

	local reacheddest

	if destx and desty then -- Correct for situation changes or arrival
		local newvx, newvy
		local path = self.path

		local x, y = self.body:getPosition()

		if pathobjbody and not levity.scripts:call(pathid, "is_a", PathGraph) then
			destx, desty = pathobjbody:getPosition()
			if self.properties.pathawayfromobj then
				destx = x + x - destx
				desty = y + y - desty
			end
			self.destx, self.desty = destx, desty
		end

		local distx = destx + offx - x
		local disty = desty + offy - y
		local distsq = math.hypotsq(distx, disty)
		local dist

		local pathspeed = self.properties.pathspeed or 0

		local speedfunc = self.properties.pathspeedfunction
		speedfunc = speedfunc and SpeedFunctions[speedfunc]
		local prevx, prevy = self.prevx, self.prevy
		if speedfunc and prevx and prevy then
			local length = path and path.length
				or math.hypot(destx - prevx, desty - prevy)
			local speedmin = self.properties.pathspeedmin or 15
			dist = dist or math.sqrt(distsq)
			pathspeed = speedfunc(dist / length, speedmin, pathspeed)
		end

		if self.path and self.properties.pathspeedweighted then
			pathspeed = pathspeed / self.path.cost
		end

		local vx, vy = self.body:getLinearVelocity()
		local dot = math.dot(distx, disty, vx, vy)

		local path = self.path
		local curve = path and path.curve
		if curve then
			local curvetraveled = self.curvetraveled or 0
			curvetraveled = curvetraveled + pathspeed*dt
			if curvetraveled >= path.length then
				curvetraveled = path.length
				self.curvetraveled = nil
				self.destx, self.desty = nil, nil
				reacheddest = true
			else
				self.curvetraveled = curvetraveled
			end
			local curvex, curvey = getCurvePoint(path, curvetraveled)
			distx = curvex + offx - x
			disty = curvey + offy - y
			distsq = math.hypotsq(distx, disty)
			newvx = distx / dt
			newvy = disty / dt
		elseif distsq < pathspeed*pathspeed*dt*dt then
			self.destx, self.desty = nil, nil
			newvx = distx / dt
			newvy = disty / dt
			reacheddest = true
		elseif math.abs(dot*dot - distsq*pathspeed*pathspeed) >= 1 then
			dist = dist or math.sqrt(distsq)
			newvx = pathspeed * distx / dist
			newvy = pathspeed * disty / dist
		end

		if newvx and newvy then
			self.body:setLinearVelocity(newvx, newvy)
		end
	end

	local vx, vy = self.body:getLinearVelocity()
	levity.scripts:send(self.id, "updateRidersVelocity", dt, vx, vy)

	if reacheddest then
		levity.scripts:send(self.id, "reachedDest", destx, desty)
	end
end

function Mover:endMove(dt)
	local destx, desty = self.destx, self.desty
	local rideid = self.properties.rideid
	local playerid = levity.map.properties.playerid
	if rideid == "player" then
		rideid = playerid
	end
	local ride = levity.map.objects[rideid]
	if not ride and (not destx or not desty) then
		self.body:setLinearVelocity(0, 0)
		levity.scripts:send(self.id, "updateRidersVelocity", 0, 0, 0)
	end
end

function Mover:initOrbit(centerid)
	local center = levity.map.objects[centerid]
	self.orbitangle = self.orbitangle or
		math.atan2(self.body:getY() - center.body:getY(),
			self.body:getX() - center.body:getX())
end

function Mover:getOrbitUnitVector()
	return math.cos(self.orbitangle), math.sin(self.orbitangle)
end

function Mover.pathfind_linear1way(self, paths, prevx, prevy)
	for i = 1, #paths do
		local path = paths[i]
		if path.destx ~= prevx or path.desty ~= prevy then
			return path
		end
	end
end

function Mover.pathfind_linearDown(self, paths, prevx, prevy)
	for i = 1, #paths do
		local path = paths[i]
		if path.desty > prevy then
			return path
		end
	end
end

function Mover.pathfind_linearUp(self, paths, prevx, prevy)
	for i = 1, #paths do
		local path = paths[i]
		if path.desty < prevy then
			return path
		end
	end
end

function Mover.pathfind_linearDown(self, paths, prevx, prevy)
	for i = 1, #paths do
		local path = paths[i]
		if path.desty > prevy then
			return path
		end
	end
end

function Mover.pathfind_linear2way(self, paths, prevx, prevy)
	if #paths == 1 then
		return paths[1]
	end
	return Mover.pathfind_linear1way(self, paths, prevx, prevy)
end

function Mover.pathfind_random(self, paths, prevx, prevy)
	return paths[love.math.random(#paths)]
end

function Mover.pathfind_random1way(self, paths, prevx, prevy)
	if #paths == 1 then
		return paths[1]
	end

	local n = love.math.random(0, #paths-1)
	local path = paths[n+1]
	local i = 1
	while i < #paths and path.destx == prevx and path.desty == prevy do
		path = paths[1 + ((n+i) % #paths)]
		i = i + 1
	end

	return path
end

return Mover
