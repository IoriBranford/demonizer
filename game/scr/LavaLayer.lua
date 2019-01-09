local levity = require "levity"

local LavaLayer = class()
function LavaLayer:_init(layer)
	self.layer = layer
	assert(self.layer.type == "tilelayer")
	self.active = false
	self.timer = 0

	-- let y = a + b*sin(t)/t
	self.a = self.layer.offsety * .5
	self.b = self.layer.offsety * .5
end

function LavaLayer:setScrolling(scroll)
	self.active = scroll
end

function LavaLayer:beginMove(dt)
	if self.active then
		self.timer = self.timer + dt*math.pi
		self.layer.offsety = self.a + self.b*math.sin(self.timer)/self.timer
	end
end

return LavaLayer
