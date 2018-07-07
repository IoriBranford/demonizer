local levity = require "levity"
local Object = require "levity.object"
local UIMenu = require "UIMenu"
local UIButton = require "UIButton"

local MenuPause = class(UIMenu)

function MenuPause:_init(layer)
	self:super(layer)
	layer.visible = false
end

local Sounds = {
	Pause = "snd/pause.wav"
}
levity.bank:load(Sounds)

function MenuPause:toggleMenu()
	local pause = not levity.map.paused
	levity.map.paused = pause
	self.layer.visible = pause

	if pause then
		levity.bank:play(Sounds.Pause)
		self:moveCursor(1, #self.buttonids + 1)
	else
		self:setMouseCursorMode(false)
		self.cursorpos = nil
		for _, buttonid in ipairs(self.buttonids) do
			levity.scripts:call(buttonid, "unpress")
		end
	end
end

function MenuPause:keypressed(k)
	if levity.map.layers["gameovermenu"].visible then
		return
	end
	if k == "escape" then
		self:toggleMenu()
	elseif k == "pause" then
		local pause = not levity.map.paused
		levity.map.paused = pause

		if pause then
			levity.bank:play(Sounds.Pause)
		end
	else
		UIMenu.keypressed(self, k)
	end
end

function MenuPause:joystickpressed(joystick, button)
	if levity.map.layers["gameovermenu"].visible then
		return
	end
	if button == 10 then
		self:toggleMenu()
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
