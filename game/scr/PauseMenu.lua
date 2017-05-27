local levity = require "levity"
local Object = require "levity.object"
local UIButton = require "UIButton"

local PauseMenu = class(function(self, layer)
	self.layer = layer
	self.layer.visible = false
	--if levity.map.properties.delayinitobjects == true then
	--	for _, object in pairs(self.layer.objects) do
	--		Object.init(object, self.layer)
	--	end
	--end
	self.buttonids = {}
	for _, object in ipairs(layer.objects) do
		if object.type == "UIButton" then
			self.buttonids[#self.buttonids+1] = object.id
		end
	end
	self.cursorpos = nil
	self.joyaxisy = 0
end)

local Sounds = {
	Pause = "snd/pause.wav"
}
levity.bank:load(Sounds)

function PauseMenu:keypressed_escape()
	local pause = not levity.map.paused
	levity.map.paused = pause
	self.layer.visible = pause
	love.mouse.setVisible(pause)
	love.mouse.setRelativeMode(not pause)

	if pause then
		levity.bank:play(Sounds.Pause)
	else
		self.cursorpos = nil
		for _, buttonid in ipairs(self.buttonids) do
			levity.scripts:call(buttonid, "unpress")
		end
	end
end

function PauseMenu:keypressed_pause()
	local pause = not levity.map.paused
	levity.map.paused = pause

	if pause then
		levity.bank:play(Sounds.Pause)
	end
end

function PauseMenu:joystickaxis(joystick, axis, value)
	if not self.layer.visible then
		return
	end
	if axis == 2 then
		if value < 0 and self.joyaxisy >= 0 then
			self:moveCursor(-1, 0)
		elseif value > 0 and self.joyaxisy <= 0 then
			self:moveCursor(1, #self.buttonids + 1)
		end
		self.joyaxisy = value
	end
end

function PauseMenu:joystickpressed(joystick, button)
	if not self.layer.visible then
		return
	end
	if button == 1 then
		self:activateCursorButton()
	end
end

function PauseMenu:keypressed(key)
	if not self.layer.visible then
		return
	end
	if key == "up" then
		self:moveCursor(-1, 0)
	elseif key == "down" then
		self:moveCursor(1, #self.buttonids + 1)
	elseif key == "z" then
		self:activateCursorButton()
	end
end

function PauseMenu:setCursorButton(buttonid)
	for i = 1, #self.buttonids do
		if self.buttonids[i] == buttonid then
			self.cursorpos = i
			break
		end
	end
end

function PauseMenu:moveCursor(dir, limit)
	dir = dir / math.abs(dir)

	if not self.cursorpos then
		self.cursorpos = limit
	else
		levity.scripts:call(self.buttonids[self.cursorpos],
			"unpress")

		self.cursorpos = self.cursorpos + dir
	end

	if self.cursorpos == limit then
		self.cursorpos = self.cursorpos - #self.buttonids*dir
	end

	levity.scripts:call(self.buttonids[self.cursorpos], "press")
end

function PauseMenu:activateCursorButton()
	levity.scripts:call(self.buttonids[self.cursorpos], "activate")
end

function PauseMenu:beginDraw()
	self.layer.offsetx = levity.camera.x
	self.layer.offsety = levity.camera.y
	love.graphics.setColor(0,0,0, 0xc0)
	love.graphics.rectangle("fill",
		levity.camera.x, levity.camera.y,
		levity.camera.w, levity.camera.h)
	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

function PauseMenu:endDraw()
--	if self.layer.visible then
--		local x, y = love.mouse.getPosition()
--		x, y = levity:screenToCamera(x, y)
--		love.graphics.circle("line",
--			levity.camera.x + x,
--			levity.camera.y + y, 2)
--	end
end

return PauseMenu
