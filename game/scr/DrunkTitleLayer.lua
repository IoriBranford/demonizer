local levity = require "levity"
local TitleLayer = require "TitleLayer"

local DrunkTitleLayer = class(TitleLayer, TitleLayer._init)

function DrunkTitleLayer:endMove(dt)
	if self.title then
		local pitime = math.pi*love.timer.getTime()
		local cost = math.cos(pitime)
		local sint = math.sin(pitime)
		self.title.offsetx = self.title.offsetx + cost*love.math.random()
		self.title.offsety = self.title.offsety + sint*love.math.random()
	end
end

return DrunkTitleLayer

