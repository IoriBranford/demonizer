local levity = require "levity"

local UIButton = class()
function UIButton:_init(object)
	self.object = object
	self.pressed = false
end

function UIButton:isVisible()
	return self.object.visible and self.object.layer.visible
end

function UIButton:isPressable()
	return self:isVisible() and not self.locked
end

local Sounds = {
	Press = "snd/ting.ogg"
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
	if self:isPressable() then
		x, y = levity:screenToCamera(x, y)
		if math.rectsisect(x, y, 0, 0, self.object.x, self.object.y,
			self.object.width, self.object.height)
		then
			levity.bank:play(Sounds.Press)
			self:press()
			levity.scripts:call(self.object.layer.name,
				"setCursorButton", self.object.id)
		else
			self:unpress()
		end
	end
end

function UIButton:touchmoved(touch, x, y, dx, dy, pressure)
	if self:isPressable() then
		x, y = levity:screenToCamera(x, y)
		self.pressed = math.rectsisect(x, y, 0, 0,
			self.object.x, self.object.y,
			self.object.width, self.object.height)
	end
end

function UIButton:touchreleased(touch, x, y, dx, dy, pressure)
	if self:isPressable() then
		x, y = levity:screenToCamera(x, y)
		if math.rectsisect(x, y, 0, 0, self.object.x, self.object.y,
			self.object.width, self.object.height)
		then
			self:activate()
		end
	end
end

function UIButton:setLock(locked)
	self.locked = locked
end

function UIButton:press()
	self.pressed = true
end

function UIButton:unpress()
	self.pressed = false
end

function UIButton:activate()
	self.pressed = false
	if self.buttonReleased then
		self:buttonReleased()
	end
end

function UIButton:beginDraw()
	local x, y, w, h = self.object.x, self.object.y,
				self.object.width, self.object.height

	if self.locked then
		for i = 1, 4 do
			self.object.color[i] = 0x80
		end
		love.graphics.setColor(32, 32, 32, 128)
		love.graphics.rectangle("fill", x, y, w, h)
	else
		for i = 1, 4 do
			self.object.color[i] = 0xff
		end
		if self.pressed then
			love.graphics.setColor(115, 89, 165, 128)
			love.graphics.rectangle("fill", x, y, w, h)
		else
			love.graphics.setColor(41, 32, 66, 128)
			love.graphics.rectangle("fill", x, y, w, h)
		end
		love.graphics.setColor(82, 60, 132, 255)
		love.graphics.rectangle("line", x, y, w, h)
	end

	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

return UIButton
