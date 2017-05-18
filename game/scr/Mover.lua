local levity = require "levity"

local Mover
Mover = class(function(self, object)
	self.object = object
	self.properties = object.properties

	local x, y = self.object.body:getPosition()

	if self.properties.pathmode == "relative" then
		local nearestx, nearesty = levity.scripts:call(
			self.properties.pathid, "findNearestPoint", x, y)
		self.offx = x - nearestx
		self.offy = y - nearesty
	else
		self.offx = 0
		self.offy = 0
	end

	x = x - self.offx
	y = y - self.offy

	local paths = levity.scripts:call(self.properties.pathid,
						"getPaths", x, y)
	if paths then
		local path = levity.scripts:call(self.object.id,
						"pathfind", paths, x, y)

		if path then
			if path.curve then
				self.curveodo = 0 -- odometer
			end
			self.path = path
			self.destx = path.destx
			self.desty = path.desty
		end
	else
		self.destx, self.desty = levity.scripts:call(
				self.properties.pathid, "findNearestPoint", x, y)
	end

	self.prevx = x
	self.prevy = y
end)

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

function Mover:beginMove(dt)
	if not self.destx or not self.desty then
		--self.object.body:setLinearVelocity(0, 0)
		return
	end

	local speed = self.properties.pathspeed or 60
	local x, y = self.object.body:getPosition()

	local vx, vy = 0, 0

	local distx = self.destx + self.offx - x
	local disty = self.desty + self.offy - y
	local exdist -- amount by which you would overshoot destination this frame

	if self.path and self.path.curve then
		self.curveodo = self.curveodo + speed*dt
		exdist = self.curveodo - self.path.length
		if exdist <= 0 then
			local nextx, nexty = getCurvePoint(self.path, self.curveodo)

			distx = nextx + self.offx - x
			disty = nexty + self.offy - y
			vx, vy = distx / dt, disty / dt
			if vx ~= 0 or vy ~= 0 then
				levity.scripts:send(self.object.id, "faceAngle",
							math.atan2(vy, vx))
			end
		end
	else
		local dist = math.hypot(distx, disty)
		exdist = speed*dt - dist
		if exdist < 0 then
			local dirx, diry = distx / dist, disty / dist

			vx, vy = dirx * speed, diry * speed
			if vx ~= 0 or vy ~= 0 then
				levity.scripts:send(self.object.id, "faceAngle",
							math.atan2(vy, vx))
			end
		end
	end

	while exdist >= 0 do
		local paths = levity.scripts:call(self.properties.pathid,
					"getPaths", self.destx, self.desty)
		local nextpath
		if paths then
			nextpath = levity.scripts:call(self.object.id,
				"pathfind", paths, self.prevx, self.prevy)

		end

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
						getCurvePoint(nextpath, exdist)
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

	self.object.body:setLinearVelocity(vx, vy)
end

function Mover.pathfind_linear1way(self, paths, prevx, prevy)
	for i = 1, #paths do
		local path = paths[i]
		if path.destx ~= prevx or path.desty ~= prevy then
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

function Mover.pathfind_random1way(self, paths, prevx, prevy)
	if #paths == 1 then
		return paths[1]
	end

	local path
	repeat
		path = paths[love.math.random(1, #paths)]
	until path.destx ~= prevx or path.desty ~= prevy

	return path
end

return Mover
