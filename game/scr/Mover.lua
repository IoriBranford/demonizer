--@module Mover

--@field pathid Path object id, path layer name, "player" for player, "mylayer" for original layer, "warninglayer" to derive from original layer's name "*warning"
--@field pathfinder
--@field pathmode "absolute" = get on and follow path, "relative" = treat path as movement from current pos
--@field pathoffsetx Optionally force a specific offset
--@field pathoffsety Optionally force a specific offset
--@field pathspeed
--@field pathspeedfunction "const" (default), "cos", "ncos", "abssin", "abscos"
--@field pathspeedmin when using a varying speed function - should be > 0
--@field pathspeedweighted
--@field pathstartpointname
--@field pathdistmin When path is object, distance to keep from that object
--@field pathdefeat When path is object, defeat when that object is defeated
--@table Properties

local levity = require "levity"
local PathGraph = require "PathGraph"
local ShmupCollision = require "ShmupCollision"

local Mover = class(require("Script"))
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

function Mover:preTypeChange(oldtype, newtype)
	if not oldtype then
		return
	end
	if not rawget(self.properties, "pathid") then
		if oldtype.pathid ~= newtype.pathid then
			self:resetPath()
		end
	end
end

local SpeedFunctions = {}

function SpeedFunctions.linearaccel(t, min, max)
	local a = (max - min)
	return min + a*t
end

function SpeedFunctions.lineardecel(t, min, max)
	local a = (min - max)
	return max + a*t
end

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

function SpeedFunctions.random(t, min, max)
	return min + love.math.random(max-min)
end

function Mover:getPathId(pathid)
	if type(pathid) == "string" then
		if pathid == "player" then
			pathid = levity.map.properties.playerid
		elseif pathid == "mylayer" then
			pathid = self.object.properties.originallayer
				or self.object.layer.name
		elseif pathid == "warninglayer" then
			pathid = self.object.properties.originallayer
				or self.object.layer.name
			pathid = pathid:match("(%g+)warning")
		end
	end
	return tonumber(pathid) or pathid
end

function Mover:beginContact_EnemyTeam(myfixture, otherfixture, contact)
	local otherdata = otherfixture:getBody():getUserData()
	local otherid = otherdata and otherdata.id
	if otherid then
		local pathid = self.properties.pathid
		if pathid == "collidingtop" then
			local x1, y1, x2, y2 = myfixture:getBoundingBox()
			local x3, y3, x4, y4 = otherfixture:getBoundingBox()
			if y2 > y4 then
				self.properties.pathid = otherid
				self.offx, self.offy = self.properties.pathoffsetx,
							self.properties.pathoffsety
			end
		end
	end
end

function Mover:beginContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_EnemyTeam then
			self:beginContact_EnemyTeam(myfixture, otherfixture, contact)
		end
	end
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

	local pathid = self:getPathId(self.properties.pathid)
	local pathobjbody = levity.map.objects[pathid] or levity.map.layers[pathid]
	pathobjbody = pathobjbody and pathobjbody.body

	if not destx or not desty then -- Choose dest
		local x, y = self.body:getPosition()
		local startx, starty = x, y
		local nearestx, nearesty = x - offx, y - offy

		local paths = self:call(pathid, "getPaths", nearestx, nearesty)
		if not paths then
			startx, starty = self:call(pathid, "getNamedPoint", self.properties.pathstartpointname)
			startx = startx or x
			starty = starty or y

			nearestx, nearesty = self:call(pathid, "findNearestPoint", startx - offx, starty - offy)
			nearestx = nearestx or (pathobjbody and pathobjbody:getX()) or x
			nearesty = nearesty or (pathobjbody and pathobjbody:getY()) or y

			if self.properties.pathmode == "relative"
			and (not self.offx or not self.offy) then
				offx = self.properties.pathoffsetx or (startx - nearestx)
				offy = self.properties.pathoffsety or (starty - nearesty)
				self.offx, self.offy = offx, offy
			end

			paths = self:call(pathid, "getPaths", startx - offx, starty - offy)
		end

		destx, desty = nearestx, nearesty

		local pathfinder = self.properties.pathfinder
		pathfinder = pathfinder and Mover["pathfind_"..pathfinder]
		if pathfinder and paths then
			local prevx = self.prevx
			local prevy = self.prevy
			local path = pathfinder(self, paths, prevx, prevy)
			if path then
				self.prevx = math.floor(startx - offx)
				self.prevy = math.floor(starty - offy)
				destx = path.destx
				desty = path.desty
				self.curvetraveled = nil
			end
			self.path = path
		end

		self.destx, self.desty = destx, desty
	end

	local reacheddest

	if destx and desty then -- Correct for situation changes or arrival
		local newvx, newvy
		local path = self.path
		local movetype = path and path.properties.movetype

		local x, y = self.body:getPosition()

		if pathobjbody and not self:call(pathid, "is_a", PathGraph) then
			destx, desty = pathobjbody:getPosition()

			local pathdistmin = self.properties.pathdistmin

			if self.properties.pathawayfromobj then
				destx = x + x - destx
				desty = y + y - desty
			else
				local distx = destx + offx - x
				local disty = desty + offy - y
				local distsq = math.hypotsq(distx, disty)
				if pathdistmin and pathdistmin*pathdistmin > distsq then
					local dist = math.sqrt(distsq)
					destx = x + distx - pathdistmin*distx/dist
					desty = y + disty - pathdistmin*disty/dist
				end
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
		if speedfunc and prevx and prevy and movetype ~= "jump" then
			local length = path and path.length
				or math.hypot(destx - prevx, desty - prevy)
			local speedmin = self.properties.pathspeedmin or 0
			dist = dist or math.sqrt(distsq)
			pathspeed = speedfunc(1 - (dist / length), speedmin, pathspeed)
		end

		if self.path and self.properties.pathspeedweighted then
			local cost = self.path.properties.cost or 1
			pathspeed = pathspeed / cost
		end

		local damagetilelayer = self.properties.damagetilelayer
		if damagetilelayer then
			local damagetile = self:call(damagetilelayer,
				"getPositionProperties", self.body:getPosition())
			local speedfactor = damagetile and damagetile.speedfactor or 1
			pathspeed = pathspeed * speedfactor
		end

		local vx, vy = self.body:getLinearVelocity()
		local dot = math.dot(distx, disty, vx, vy)

		local path = self.path
		local curve = path and path.curve
		if movetype == "jump" then
			local jumpgravity = path.properties.jumpgravity or 480
			if not self.jumpz then
				self.jumpx = x
				self.jumpy = y
				self.jumpz = 0
				dist = dist or math.sqrt(distsq)
				local t = dist / pathspeed
				self.jumpvx = distx / t
				self.jumpvy = disty / t
				-- p1 = 0.5*a*t^2 + v0*t + p0
				-- 0 = 0.5*a*t^2 + v0*t + 0
				-- 0.5*a*t^2 = -v0*t
				-- 0.5*a*t = -v0
				-- -0.5*a*t = v0
				self.jumpvz = -0.5 * jumpgravity * t
			end
			self.jumpvz = self.jumpvz + jumpgravity * dt
			self.jumpx = self.jumpx + self.jumpvx * dt
			self.jumpy = self.jumpy + self.jumpvy * dt
			self.jumpz = self.jumpz + self.jumpvz * dt
			if self.jumpz < 0 then
				distx = self.jumpx - x
				disty = self.jumpy + self.jumpz - y
			else
				self.destx, self.desty = nil, nil
				self.jumpx = nil
				self.jumpy = nil
				self.jumpz = nil
				self.jumpvx = nil
				self.jumpvy = nil
				self.jumpvz = nil
				reacheddest = true
			end
			newvx = distx / dt
			newvy = disty / dt
		elseif curve then
			local curvetraveled = self.curvetraveled or 0
			curvetraveled = curvetraveled + pathspeed*dt
			if curvetraveled >= path.length then
				curvetraveled = path.length
				self.destx, self.desty = nil, nil
				reacheddest = true
			end
			self.curvetraveled = curvetraveled
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
	self:send(self.id, "updateRidersVelocity", dt, vx, vy)

	if reacheddest then
		self:send(self.id, "reachedDest", destx, desty)
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
		self:send(self.id, "updateRidersVelocity", 0, 0, 0)
	end

	local pathid = self:getPathId(self.properties.pathid)
	local pathobj = levity.map.objects[pathid] or levity.map.layers[pathid]
	if pathid and not pathobj then
		self.properties.pathid = nil
		self:resetPath()
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
