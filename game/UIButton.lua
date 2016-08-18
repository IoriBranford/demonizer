local levity = require "levity"

local UIButton = class(function(self, id)
	self.object = levity.map.objects[id]
end)

function UIButton:mousepressed(x, y, button)
	if button == 1 then
		self:touchpressed(nil, x, y)
	end
end

function UIButton:touchpressed(touch, x, y, dx, dy, pressure)
	if self.object.visible and self.object.layer.visible then
		x, y = levity:screenToCamera(x, y)
		if math.rectsisect(x, y, 0, 0, self.object.x, self.object.y,
			self.object.width, self.object.height)
		then
			if self.buttonPressed then
				self:buttonPressed()
			end
		end
	end
end

return UIButton
