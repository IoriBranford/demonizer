local levity = require "levity"

local TitleLayer = class()

function TitleLayer:_init(layer)
	self.title = layer
end

function TitleLayer:endMove(dt)
	if self.title then
		self.title.offsety = self.title.offsety +
			math.cos(math.pi*love.timer.getTime())/4
	end
end

return TitleLayer

