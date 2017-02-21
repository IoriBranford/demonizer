local levity = require "levity"

local NavLayerTester
NavLayerTester = class(function(self, id)
	self.object = levity.map.objects[id]
	self.walker = nil
end)

function NavLayerTester.pickNextDest(dests)
	return dests[love.math.random(#dests)]
end

function NavLayerTester:beginMove(dt)
	local x, y = self.object.body:getPosition()

	if not self.walker then
		self.walker = levity.machine:call(
			self.object.properties.navlayerid, "newWalker",
			NavLayerTester.pickNextDest, x, y)
	end

	local vx, vy = self.walker:getVelocity(dt, 60, x, y)
	self.object.body:setLinearVelocity(vx, vy)
end

return NavLayerTester
