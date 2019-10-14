local levity = require "levity"

local BobbingLayer = class(require("Script"))
function BobbingLayer:_init(layer)
	self.layer = layer
	self.active = false
	self.timer = 0
	self.inwave = false
end

function BobbingLayer:setBobbing(y, a, f)
	self.layer.properties.boborigin = y
	self.layer.properties.bobamplitude = a
	self.layer.properties.bobfrequency = f
	self.inwave = false
end

function BobbingLayer:setScrolling(scroll)
	self.active = scroll
	if self.layer.properties.bobanimate then
		self.layer.properties.animated = scroll
	end
end

function BobbingLayer:beginMove(dt)
	if self.active then
		local y = self.layer.offsety
		local o = self.layer.properties.boborigin or 0
		local a = self.layer.properties.bobamplitude or 1
		local f = self.layer.properties.bobfrequency or 1

		if not self.inwave then
			local targety = o + a
			y = y + (targety - y)*2*dt
			if math.abs(targety - y) <= 1 then
				y = targety
				self.inwave = true
			end
		else
			self.timer = self.timer + dt
			y = o + a*math.cos(self.timer*f*math.pi)
		end
		self.layer.offsety = y
	end
end

return BobbingLayer
