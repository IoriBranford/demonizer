local levity = require "levity"

local BulletLayer = class(require("Script"))
function BulletLayer:_init(layer)
	self.properties = layer.properties
end

function BulletLayer:beginDraw()
	local glowcolor = self.properties.glowcolor
	if glowcolor then
		local a, r, g, b = levity.parseARGB(glowcolor)
		local glowspeed = self.properties.glowspeed or 4
		local glow = 1 + math.cos(love.timer.getTime()*glowspeed*math.pi*2)
		local glowstrength = self.properties.glowstrength or 1
		glow = glow * glowstrength
		r = 0x100 + r*glow
		g = 0x100 + g*glow
		b = 0x100 + b*glow
		love.graphics.setColor(r, g, b)
	end
end

function BulletLayer:endDraw()
	love.graphics.setColor(0xff, 0xff, 0xff)
end

return BulletLayer
