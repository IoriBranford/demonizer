local levity = require "levity"

local PathGraphTester = class()
function PathGraphTester:_init(object)
	self.object = object
	self.walker = nil
	self.speed = 60
end

function PathGraphTester.pickNextPath(graphid, paths, prevx, prevy, self)
	if #paths == 1 then
		return paths[1]
	end
	for i = 1, #paths do
		local path = paths[i]
		if path.destx ~= prevx or path.desty ~= prevy then
			self.speed = 60 / path.cost
			return path
		end
	end
end

function PathGraphTester:beginMove(dt)
	local x, y = self.object.body:getPosition()

	if not self.walker then
		self.walker = levity.scripts:call(
			self.object.properties.pathgraphid, "newWalker",
			PathGraphTester.pickNextPath, x, y, "absolute", self)
	end

	local vx, vy = self.walker:getVelocity(dt, self.speed, x, y)
	self.object.body:setLinearVelocity(vx, vy)
end

return PathGraphTester
