local levity = require "levity"
local prefs = levity.prefs
local Object = require "levity.object"
local UIButton = require "UIButton"

local AxisDeadZone = .5

local UIMenu = class()
function UIMenu:_init(layer)
	self.layer = layer
	self.objects = layer.objects
	self.cursorpos = nil
	self.joyaxisx = 0
	self.joyaxisy = 0
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
	instructions = instructions and instructions.objects[1]
	if instructions then
		instructions.visible = true
		local textformat = instructions.properties.textformat
		if textformat then
			instructions.text = textformat:format(inputtype)
		end
	end
end

function UIMenu:bindInput(input)
	levity.scripts:send(self.inputbindid, "updateValue", input)
	levity.scripts:send(self.inputbindid, "playChangeSound")
	self:stopBindingInput()
end

function UIMenu:cancelBindingInput()
	local inputbind = levity.map.objects[self.inputbindid]
	local input = inputbind and levity.prefs[inputbind.name]
	levity.scripts:send(self.inputbindid, "updateValue", input)
	self:stopBindingInput()
end

function UIMenu:stopBindingInput()
	self.bindinginputtype = nil
	self.inputbindid = nil
	local instructions = levity.map.layers["inputbind_instructions"]
	instructions = instructions and instructions.objects[1]
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
		if self.bindinginputtype == "axis"
		and math.abs(value) > .25
		then
			self:bindInput("axis"..axis)
		end
		return
	end
	self:setMouseCursorMode(false)
	if value < -AxisDeadZone and self.joyaxisx >= -AxisDeadZone then
		self:changeCursorOption(-1)
	elseif value > AxisDeadZone and self.joyaxisx <= AxisDeadZone then
		self:changeCursorOption(1)
	end
	self.joyaxisx = value
	if value < -AxisDeadZone and self.joyaxisy >= -AxisDeadZone then
		self:moveCursor(-1, 0)
	elseif value > AxisDeadZone and self.joyaxisy <= AxisDeadZone then
		self:moveCursor(1, #self.objects + 1)
	end
	self.joyaxisy = value
end

function UIMenu:joystickhat(joystick, hat, value)
	if not self.layer.visible then
		return
	end
	if self.bindinginputtype then
		if self.bindinginputtype == "axis"
		and value ~= "c" then
			self:bindInput("hat"..hat)
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
	if button == prefs.joy_fire then
		self:activateCursorButton()
	end
end

function UIMenu:keypressed(key)
	if not self.layer.visible then
		return
	end
	if self.bindinginputtype then
		if key == "escape" then
			self:cancelBindingInput()
		elseif self.bindinginputtype == "key" then
			self:bindInput(key)
		end
		return
	end
	self:setMouseCursorMode(false)
	if key == "escape" then
		levity.scripts:send(levity.mapfile, "goBack")
	elseif key == prefs.key_up then
		self:moveCursor(-1, 0)
	elseif key == prefs.key_down then
		self:moveCursor(1, #self.objects + 1)
	elseif key == prefs.key_left then
		self:changeCursorOption(-1)
	elseif key == prefs.key_right then
		self:changeCursorOption(1)
	elseif key == prefs.key_fire then
		self:activateCursorButton()
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
			levity.scripts:call(newcursorobject.id, "isPressable")
		i = i + 1
	until cursorpos == self.cursorpos or isbutton or i > #self.objects

	if newcursorobject then
		local oldcursorobject = self.objects[self.cursorpos]
		if oldcursorobject then
			levity.scripts:send(oldcursorobject.id, "unpress")
		end
		if self.cursorpos and self.cursorpos ~= cursorpos then
			levity.scripts:send(newcursorobject.id, "playPressSound")
		end
		levity.scripts:send(newcursorobject.id, "press")
	end
	self.cursorpos = cursorpos
end

function UIMenu:activateCursorButton()
	local button = self.objects[self.cursorpos]
	local _ = button and levity.scripts:send(button.id, "activate")
end

function UIMenu:changeCursorOption(dir)
	local button = self.objects[self.cursorpos]
	local _ = button and levity.scripts:send(button.id, "change", dir)
end

function UIMenu:drawOver()
	local button = self.objects[self.cursorpos]
	local _ = button and levity.scripts:send(button.id, "drawPressedOutline")
end

return UIMenu
