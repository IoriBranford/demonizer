local levity = require "levity"

local UIButton = class(function(self, id)
	self.object = levity.map.objects[id]
	self.pressed = false
end)

local Sounds = {
	Press = "snd/ting.wav"
}
levity.bank:load(Sounds)

function UIButton:mousepressed(x, y, button)
	if button == 1 then
		self:touchpressed(nil, x, y)
	end
end

function UIButton:mousemoved(x, y, dx, dy)
	if love.mouse.isDown(1) then
		self:touchmoved(nil, x, y, dx, dy)
	end
end

function UIButton:mousereleased(x, y, button)
	if button == 1 then
		self:touchreleased(nil, x, y)
	end
end

function UIButton:touchpressed(touch, x, y, dx, dy, pressure)
	if self.object.visible and self.object.layer.visible then
		x, y = levity:screenToCamera(x, y)
		if math.rectsisect(x, y, 0, 0, self.object.x, self.object.y,
			self.object.width, self.object.height)
		then
			levity.bank:play(Sounds.Press)
			self.pressed = true
		end
	end
end

function UIButton:touchmoved(touch, x, y, dx, dy, pressure)
	if self.object.visible and self.object.layer.visible then
		x, y = levity:screenToCamera(x, y)
		self.pressed = math.rectsisect(x, y, 0, 0,
			self.object.x, self.object.y,
			self.object.width, self.object.height)
	end
end

function UIButton:touchreleased(touch, x, y, dx, dy, pressure)
	if self.object.visible and self.object.layer.visible then
		x, y = levity:screenToCamera(x, y)
		if math.rectsisect(x, y, 0, 0, self.object.x, self.object.y,
			self.object.width, self.object.height)
		then
			self.pressed = false
			if self.buttonReleased then
				self:buttonReleased()
			end
		end
	end
end

function UIButton:beginDraw()
	local x, y, w, h = self.object.x, self.object.y,
				self.object.width, self.object.height

	if self.pressed then
		love.graphics.setColor(115, 89, 165, 128)
	else
		love.graphics.setColor(41, 32, 66, 128)
	end
	love.graphics.rectangle("fill", x, y, w, h)

	love.graphics.setColor(82, 60, 132, 255)
	love.graphics.rectangle("line", x, y, w, h)

	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

return UIButton
