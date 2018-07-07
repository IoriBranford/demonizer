local levity = require "levity"

local InfiniteScrollLayer = class()

function InfiniteScrollLayer:_init(layer)
	assert(layer.type == "tilelayer")
	self.layer = layer
	self.properties = layer.properties

	self.offsetx0 = layer.offsetx
	self.offsety0 = layer.offsety

	local cols = self.properties.tilewrapx2 - self.properties.tilewrapx1
	local rows = self.properties.tilewrapy2 - self.properties.tilewrapy1
	self.width = cols * levity.map.tilewidth
	self.height = rows * levity.map.tileheight

	self:setScrolling(nil)
end

---
-- true = scroll
-- false = scroll until end position
-- nil = don't scroll
function InfiniteScrollLayer:setScrolling(scroll, stoptriggerid)
	self.scroll = scroll
	if scroll == true then
		self.properties.tilewrap = true
	elseif scroll == nil then
		self.properties.tilewrap = false
	elseif scroll == false then
		self.stoptriggerid = stoptriggerid
	end
end

function InfiniteScrollLayer:endMove(dt)
	if self.scroll == nil then
		return
	end

	local vx = self.properties.scrollvelx
	local vy = self.properties.scrollvely
	if vx or vy then
		local x = self.layer.offsetx - self.offsetx0
		local y = self.layer.offsety - self.offsety0
		x = x + (vx or 0)*dt
		y = y + (vy or 0)*dt
		if y >= self.height and self.scroll == false then
			levity.scripts:send(self.stoptriggerid, "applyCameraSpeed")
			self:setScrolling(nil)
			x = 0
			y = 0
		end
		x = x % self.width
		y = y % self.height
		self.layer.offsetx = x + self.offsetx0
		self.layer.offsety = y + self.offsety0
	end
end

return InfiniteScrollLayer
