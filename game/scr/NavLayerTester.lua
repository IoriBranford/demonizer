local levity = require "levity"

local NavLayerTester
NavLayerTester = class(function(self, object)
	self.object = object
	self.walker = nil
	self.speed = 60
end)

function NavLayerTester.pickNextPath(navlayername, paths, prevx, prevy, self)
	local path = paths[love.math.random(#paths)]
	if #paths > 1 then
		while path.destx == prevx and path.desty == prevy do
			path = paths[love.math.random(#paths)]
		end
	end

	self.speed = 60 / path.cost
	return path
end

function NavLayerTester:beginMove(dt)
	local x, y = self.object.body:getPosition()

	if not self.walker then
		self.walker = levity.map.scripts:call(
			self.object.properties.navlayerid, "newWalker",
			NavLayerTester.pickNextPath, x, y, self)
	end

	local vx, vy = self.walker:getVelocity(dt, self.speed, x, y)
	self.object.body:setLinearVelocity(vx, vy)
end

return NavLayerTester
