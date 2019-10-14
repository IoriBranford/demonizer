local levity = require "levity"

local PathGraphTester = class(require("Script"))
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
			local cost = path.properties.cost or 1
			self.speed = 60 / cost
			return path
		end
	end
end

function PathGraphTester:beginMove(dt)
	local x, y = self.object.body:getPosition()

	if not self.walker then
		self.walker = self:call(
			self.object.properties.pathgraphid, "newWalker",
			PathGraphTester.pickNextPath, x, y, "absolute", self)
	end

	local vx, vy = self.walker:getVelocity(dt, self.speed, x, y)
	self.object.body:setLinearVelocity(vx, vy)
end

return PathGraphTester
