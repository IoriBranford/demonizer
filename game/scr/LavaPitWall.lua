local levity = require "levity"

local LavaPitWall = class()
function LavaPitWall:_init(layer)
	self.layer = layer
	assert(self.layer.type == "tilelayer")
	self.active = false
	self.timer = 0

	-- let y = a + b*sin(t)/t
	self.a = self.layer.offsety * .25
	self.b = self.layer.offsety * .75
end

function LavaPitWall:setScrolling(scroll)
	self.active = scroll
	self.layer.properties.animated = scroll
end

function LavaPitWall:beginMove(dt)
	if self.active then
		self.timer = self.timer + dt*math.pi
		self.layer.offsety = self.a + self.b*math.sin(self.timer)/self.timer
	end
end

return LavaPitWall
