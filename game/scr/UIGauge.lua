local levity = require "levity"

local UIGauge = class(function(self, id)
	self.object = levity.map.objects[id]
	self.fillrect = self.object

	if self.object.tile then
		local objectgroup = self.object.tile.objectGroup
		for _, object in ipairs(objectgroup.objects) do
			if object.name == "fill" then
				self.fillrect = object
				break
			end
		end
	end

	self.direction = self.object.properties.direction
		or self.fillrect.properties.direction
		or "right"

	local color = self.object.properties.color
		or self.fillrect.properties.color
		or "#ffffffff"

	local a, r, g, b = string.match(color, "#(%x%x)(%x%x)(%x%x)(%x%x)")
	self.a = tonumber("0x"..a)
	self.r = tonumber("0x"..r)
	self.g = tonumber("0x"..g)
	self.b = tonumber("0x"..b)

	self:setFill(0)
end)

function UIGauge:setFill(fill)
	self.fill = fill

	self.x = self.object.x + self.fillrect.x
	self.y = self.object.y + self.fillrect.y
	if self.object.tile then
		local tileset = levity:getMapTileset(self.object.tile.tileset)
		self.y = self.y - tileset.tileheight
	end
	self.w = self.fillrect.width
	self.h = self.fillrect.height

	if self.direction == "left" then
		self.x = self.x + self.w*(1 - self.fill)
		self.w = self.w*self.fill
	elseif self.direction == "up" then
		self.y = self.y + self.h*(1 - self.fill)
		self.h = self.h*self.fill
	elseif self.direction == "right" then
		self.w = self.w*self.fill
	else
		self.h = self.h*self.fill
	end
end

function UIGauge:beginDraw()
	if self.w > 0 and self.h > 0 then
		love.graphics.setColor(self.r, self.g, self.b, self.a)
		love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
		love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
	end
end

return UIGauge
