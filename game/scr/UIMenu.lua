local levity = require "levity"
local Object = require "levity.object"
local UIButton = require "UIButton"

local Sounds = {
	Press = "snd/ting.wav"
}
levity.bank:load(Sounds)

local UIMenu = class()
function UIMenu:_init(layer)
	self.layer = layer
	self.buttonids = {}
	for _, object in ipairs(layer.objects) do
		if object.type == "UIButton" then
			self.buttonids[#self.buttonids+1] = object.id
		end
	end
	self.cursorpos = nil
	self.joyaxisy = 0
end

function UIMenu:initQuery()
	self:moveCursor(1, #self.buttonids + 1)
end

function UIMenu:setMouseCursorMode(cursormode)
	love.mouse.setVisible(cursormode)
	love.mouse.setRelativeMode(not cursormode)
end

function UIMenu:mousemoved()
	if not self.layer.visible then
		return
	end
	self:setMouseCursorMode(true)
end

function UIMenu:joystickaxis(joystick, axis, value)
	if not self.layer.visible then
		return
	end
	self:setMouseCursorMode(false)
	if axis == 2 then
		if value < 0 and self.joyaxisy >= 0 then
			self:moveCursor(-1, 0)
		elseif value > 0 and self.joyaxisy <= 0 then
			self:moveCursor(1, #self.buttonids + 1)
		end
		self.joyaxisy = value
	end
end

function UIMenu:joystickhat(joystick, hat, value)
	if value:find("l") then
		self:joystickaxis(joystick, 1, -1)
	elseif value:find("r") then
		self:joystickaxis(joystick, 1, 1)
	else
		self:joystickaxis(joystick, 1, 0)
	end

	if value:find("u") then
		self:joystickaxis(joystick, 2, -1)
	elseif value:find("d") then
		self:joystickaxis(joystick, 2, 1)
	else
		self:joystickaxis(joystick, 2, 0)
	end
end

function UIMenu:joystickpressed(joystick, button)
	if not self.layer.visible then
		return
	end
	self:setMouseCursorMode(false)
	if button == 1 then
		self:activateCursorButton()
	end
end

function UIMenu:keypressed(key)
	if not self.layer.visible then
		return
	end
	self:setMouseCursorMode(false)
	if key == "up" then
		self:moveCursor(-1, 0)
	elseif key == "down" then
		self:moveCursor(1, #self.buttonids + 1)
	elseif key == "z" then
		self:activateCursorButton()
	end
end

function UIMenu:setCursorButton(buttonid)
	for i = 1, #self.buttonids do
		if self.buttonids[i] == buttonid then
			self.cursorpos = i
			break
		end
	end
end

function UIMenu:moveCursor(dir, limit)
	dir = dir / math.abs(dir)

	local cursorpos = self.cursorpos or limit - dir

	repeat
		cursorpos = cursorpos + dir
		if cursorpos == limit then
			cursorpos = cursorpos - #self.buttonids*dir
		end
	until cursorpos == self.cursorpos
	or levity.scripts:call(self.buttonids[cursorpos], "isPressable")

	if self.cursorpos and self.cursorpos ~= cursorpos then
		levity.bank:play(Sounds.Press)
	end
	levity.scripts:call(self.buttonids[self.cursorpos], "unpress")
	levity.scripts:call(self.buttonids[cursorpos], "press")
	self.cursorpos = cursorpos
end

function UIMenu:activateCursorButton()
	levity.scripts:call(self.buttonids[self.cursorpos], "activate")
end

return UIMenu
