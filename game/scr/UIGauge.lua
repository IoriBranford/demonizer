local levity = require "levity"

local UIGauge = class(require("Script"))
function UIGauge:_init(object)
	self.object = object
	self.properties = object.properties

	local x = math.huge
	local y = math.huge
	local w = 0
	local h = 0

	if self.object.tile then
		local x2 = -math.huge
		local y2 = -math.huge
		local rects = {}
		local objectgroup = self.object.tile.objectGroup
		local gid = self.object.gid
		for _, shape in ipairs(objectgroup.objects) do
			if shape.shape == "rectangle" then
				local rect = {
					width = shape.width,
					height = shape.height
				}
				rects[#rects+1] = rect

				local rectx, recty = levity.map:getTileShapePosition(gid, shape)
				rect.x = rectx
				rect.y = recty

				x = math.min(x, rectx)
				y = math.min(y, recty)
				x2 = math.max(x2, rectx + rect.width)
				y2 = math.max(y2, recty + rect.height)
			end
		end
		w = x2 - x
		h = y2 - y
		x = x + object.x
		y = y + object.y

		self.stencil = #rects > 1 and function()
			for i = 1, #rects do
				local rect = rects[i]
				love.graphics.rectangle("fill",
					object.x + rect.x, object.y + rect.y,
					rect.width, rect.height)
			end
		end
	else
		x = self.object.x
		y = self.object.y
		w = self.object.width
		h = self.object.height
	end

	self.minx = x
	self.miny = y
	self.maxw = w
	self.maxh = h
	self.x = x
	self.y = y
	self.w = w
	self.h = h
end

function UIGauge:setFill(amount)
	local x = self.minx
	local y = self.miny
	local w = self.maxw
	local h = self.maxh

	local direction = self.properties.direction
	if direction == "left" then
		self.x = x + w*(1 - amount)
		self.y = y
		self.w = w*amount
		self.h = h
	elseif direction == "up" then
		self.x = x
		self.y = y + h*(1 - amount)
		self.w = w
		self.h = h*amount
	elseif direction == "right" then
		self.x = x
		self.y = y
		self.w = w*amount
		self.h = h
	else
		self.x = x
		self.y = y
		self.w = w
		self.h = h*amount
	end
end

function UIGauge:beginDraw()
	if self.w > 0 and self.h > 0 then
		if self.stencil then
			love.graphics.stencil(self.stencil, "replace", 1)
			love.graphics.setStencilTest("greater", 0)
		end
		local color = self.object.properties.color or "#ffffffff"
		local a, r, g, b = levity.parseARGB(color)
		love.graphics.setColor(r,g,b,a)
		love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
		love.graphics.setColor(1, 1, 1, 1)
		if self.stencil then
			love.graphics.setStencilTest()
		end
	end
end

return UIGauge
