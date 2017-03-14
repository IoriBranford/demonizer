local levity = require "levity"

local NavLayerTester
NavLayerTester = class(function(self, object)
	self.object = object
	self.walker = nil
	self.speed = 60
end)

function NavLayerTester.pickNextDest(navlayername, node, self)
	local edge = node[love.math.random(#node)]
	self.speed = 60 / edge.cost
	return edge.dest
end

function NavLayerTester:beginMove(dt)
	local x, y = self.object.body:getPosition()

	if not self.walker then
		self.walker = levity.map.scripts:call(
			self.object.properties.navlayerid, "newWalker",
			NavLayerTester.pickNextDest, x, y, self)
	end

	local vx, vy = self.walker:getVelocity(dt, self.speed, x, y)
	self.object.body:setLinearVelocity(vx, vy)
end

return NavLayerTester
