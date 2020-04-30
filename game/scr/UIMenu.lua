local levity = require "levity"
local prefs = levity.prefs
local Object = require "levity.object"
local UIButton = require "UIButton"

local AxisDeadZone = .5
local HorizontalAxes = {
	[1] = true,
	leftx = true,
}
local VerticalAxes = {
	[2] = true,
	lefty = true,
}

local UIMenu = class(require("Script"))
function UIMenu:_init(layer)
	self.layer = layer
	self.objects = layer.objects
	self.cursorpos = nil
	self.joyaxes = {}
	self.bindinginputtype = nil
end

function UIMenu:initQuery()
	if self.layer.visible then
		self:initCursor()
	end
end

function UIMenu:initCursor()
	if not self.cursorpos then
		self:moveCursor(1, #self.objects + 1)
	end
end

function UIMenu:setMouseCursorMode(cursormode)
	love.mouse.setVisible(cursormode)
	love.mouse.setRelativeMode(not cursormode)
end

function UIMenu:startBindingInput(inputbindid, inputtype)
	self.inputbindid = inputbindid
	self.bindinginputtype = inputtype
	local instructions = levity.map.layers["inputbind_instructions"]
	if instructions then
		instructions.visible = true
		local instruction = instructions.objects[1]
		local textformat = instruction.properties.textformat
		if textformat then
			textformat = levity.prefs.string_gsub(textformat)
			instruction.text = textformat:format(inputtype)
		end
	end
end

function UIMenu:bindInput(input)
	self:send(self.inputbindid, "set", input)
	self:send(self.inputbindid, "playChangeSound")
	self:stopBindingInput()
end

function UIMenu:cancelBindingInput()
	local inputbind = levity.map.objects[self.inputbindid]
	local input = inputbind and levity.prefs[inputbind.name]
	self:send(self.inputbindid, "set", input)
	self:stopBindingInput()
end

function UIMenu:stopBindingInput()
	self.bindinginputtype = nil
	self.inputbindid = nil
	local instructions = levity.map.layers["inputbind_instructions"]
	if instructions then
		instructions.visible = false
	end
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
	if self.bindinginputtype then
		if math.abs(value) > AxisDeadZone then
			axis = type(axis)=="number" and "axis"..axis or axis
			if self.bindinginputtype == "axis" then
				self:bindInput(axis)
			end
		end
		return
	end
	self:setMouseCursorMode(false)
	if HorizontalAxes[axis] then
		local prevvalue = self.joyaxes[axis] or 0
		if value < -AxisDeadZone and prevvalue >= -AxisDeadZone then
			self:changeCursorOption(-1)
		elseif value > AxisDeadZone and prevvalue <= AxisDeadZone then
			self:changeCursorOption(1)
		end
		self.joyaxes[axis] = value
	elseif VerticalAxes[axis] then
		local prevvalue = self.joyaxes[axis] or 0
		if value < -AxisDeadZone and prevvalue >= -AxisDeadZone then
			self:moveCursor(-1, 0)
		elseif value > AxisDeadZone and prevvalue <= AxisDeadZone then
			self:moveCursor(1, #self.objects + 1)
		end
		self.joyaxes[axis] = value
	end
end

UIMenu.gamepadaxis = UIMenu.joystickaxis

function UIMenu:joystickhat(joystick, hat, value)
	if not self.layer.visible then
		return
	end
	if self.bindinginputtype then
		if self.bindinginputtype == "axis"
		and value ~= "c" then
			hat = type(hat)=="number" and "hat"..hat or hat
			self:bindInput(hat)
		end
		return
	end

	if value:find("l") then
		self:changeCursorOption(-1)
	elseif value:find("r") then
		self:changeCursorOption(1)
	end

	if value:find("u") then
		self:moveCursor(-1, 0)
	elseif value:find("d") then
		self:moveCursor(1, #self.objects + 1)
	end
end

local dpadhat = require("dpadhat")

function UIMenu:gamepadpressed(joystick, button)
	if button:find("^dp") then
		self:joystickhat(joystick, "dpad", dpadhat(joystick))
	elseif button == "back" then
		if self.bindinginputtype then
			self:cancelBindingInput()
			return
		else
			self:send(levity.mapfile, "goBack")
		end
	else
		self:joystickpressed(joystick, button)
	end
end

function UIMenu:joystickpressed(joystick, button)
	if not self.layer.visible then
		return
	end
	if self.bindinginputtype then
		if self.bindinginputtype == "button" then
			self:bindInput(button)
		end
		return
	end
	self:setMouseCursorMode(false)
	self:activateCursorButton()
end

function UIMenu:keypressed(key)
	if not self.layer.visible then
		return
	end
	self:setMouseCursorMode(false)
	if key == prefs.key_pausemenu then
		self:send(levity.mapfile, "goBack")
	elseif key == prefs.key_up or key == "up" then
		self:moveCursor(-1, 0)
	elseif key == prefs.key_down or key == "down" then
		self:moveCursor(1, #self.objects + 1)
	elseif key == prefs.key_fire or key == "return" then
		self.isactivatekeypressed = true
	end
end

function UIMenu:keyreleased(key)
	if not self.layer.visible then
		return
	end
	if self.bindinginputtype then
		if key == prefs.key_pausemenu then
			self:cancelBindingInput()
		elseif self.bindinginputtype == "key" then
			self:bindInput(key)
		end
		return
	end
	if key == prefs.key_left or key == "left" then
		self:changeCursorOption(-1)
	elseif key == prefs.key_right or key == "right" then
		self:changeCursorOption(1)
	elseif key == prefs.key_fire or key == "return" then
		if self.isactivatekeypressed then
			self:activateCursorButton()
		end
		self.isactivatekeypressed = false
	end
end

function UIMenu:setCursorButton(buttonid)
	for i = 1, #self.objects do
		if self.objects[i].id == buttonid then
			self.cursorpos = i
			break
		end
	end
end

function UIMenu:moveCursor(dir, limit)
	dir = dir / math.abs(dir)

	local cursorpos = self.cursorpos or limit - dir

	local i = 0
	local newcursorobject, isbutton
	repeat
		cursorpos = cursorpos + dir
		if cursorpos == limit then
			cursorpos = cursorpos - #self.objects*dir
		end
		newcursorobject = self.objects[cursorpos]
		isbutton = newcursorobject and
			self:call(newcursorobject.id, "isPressable")
		i = i + 1
	until cursorpos == self.cursorpos or isbutton or i > #self.objects

	if newcursorobject then
		local oldcursorobject = self.objects[self.cursorpos]
		if oldcursorobject then
			self:send(oldcursorobject.id, "unpress")
		end
		if self.cursorpos and self.cursorpos ~= cursorpos then
			self:send(newcursorobject.id, "playPressSound")
		end
		self:send(newcursorobject.id, "press")
	end
	self.cursorpos = cursorpos
end

function UIMenu:activateCursorButton()
	local button = self.objects[self.cursorpos]
	local _ = button and self:send(button.id, "activate")
end

function UIMenu:changeCursorOption(dir)
	local button = self.objects[self.cursorpos]
	local _ = button and self:send(button.id, "change", dir)
end

function UIMenu:drawOver()
	local button = self.objects[self.cursorpos]
	local _ = button and self:send(button.id, "drawPressedOutline")
end

return UIMenu
