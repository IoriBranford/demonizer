local levity = require "levity"
local prefs = levity.prefs

local Object = require "levity.object"
local UIMenu = require "UIMenu"
local UIButton = require "UIButton"

local MenuPause = class(UIMenu)

function MenuPause:_init(layer)
	self:super(layer)
	layer.visible = false
end

function MenuPause:togglePause(withmenu)
	local pause = not levity.map.paused and self:canPause()
	levity.map.paused = pause
	self.layer.visible = pause and withmenu

	if pause then
		levity.bank:play(self.layer.properties.pausesound)
		self:moveCursor(1, #self.objects + 1)
	else
		if self:call(levity.map.properties.playerid, "isInDialogue") then
			self:send(levity.map.properties.playerid, "skipDialogue")
		end
		self:setMouseCursorMode(false)
		self.cursorpos = nil
		for _, button in ipairs(self.objects) do
			self:call(button.id, "unpress")
		end
	end
end

function MenuPause:canPause()
	if levity.map.layers["gameovermenu"].visible then
		return false
	end
	if self:call("curtain", "isOpeningOrClosing") then
		return false
	end
	if self:call(levity.map.properties.playerid, "isInDialogue") then
		return false
	end
	return true
end

function MenuPause:keypressed(k)
	if k == prefs.key_pausemenu then
		self:togglePause(true)
	elseif k == prefs.key_pause
	or levity.map.paused and not self.layer.visible then
		self:togglePause(false)
	else
		UIMenu.keypressed(self, k)
	end
end

function MenuPause:joystickpressed(joystick, button)
	if button == prefs.joy_pausemenu then
		self:togglePause(true)
	--elseif button == prefs.joy_pause then
	elseif levity.map.paused and not self.layer.visible then
		self:togglePause(false)
	else
		UIMenu.joystickpressed(self, joystick, button)
	end
end

function MenuPause:beginDraw()
	self.layer.offsetx = levity.camera.x
	self.layer.offsety = levity.camera.y
end
--[[
function MenuPause:drawUnder()
	love.graphics.setColor(0,0,0, 0xc0)
	love.graphics.rectangle("fill",
		self.layer.x, self.layer.y,
		levity.camera.w, levity.camera.h)
	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end
]]
--function MenuPause:endDraw()
--	if self.layer.visible then
--		local x, y = love.mouse.getPosition()
--		x, y = levity:screenToCamera(x, y)
--		love.graphics.circle("line",
--			levity.camera.x + x,
--			levity.camera.y + y, 2)
--	end
--end

return MenuPause
