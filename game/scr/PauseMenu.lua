local levity = require "levity"
local Object = require "levity.object"

local PauseMenu = class(function(self, layer)
	self.layer = layer
	self.layer.visible = false

	--if levity.map.properties.delayinitobjects == true then
	--	for _, object in pairs(self.layer.objects) do
	--		Object.init(object, self.layer)
	--	end
	--end
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
	end
end

function PauseMenu:keypressed_pause()
	local pause = not levity.map.paused
	levity.map.paused = pause

	if pause then
		levity.bank:play(Sounds.Pause)
	end
end

function PauseMenu:beginDraw()
	self.layer.offsetx = levity.map.overlaymap.camera.x
	self.layer.offsety = levity.map.overlaymap.camera.y
	love.graphics.setColor(0,0,0, 0xc0)
	love.graphics.rectangle("fill",
		levity.map.overlaymap.camera.x, levity.map.overlaymap.camera.y,
		levity.map.overlaymap.camera.w, levity.map.overlaymap.camera.h)
	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

function PauseMenu:endDraw()
--	if self.layer.visible then
--		local x, y = love.mouse.getPosition()
--		x, y = levity:screenToCamera(x, y)
--		love.graphics.circle("line",
--			levity.map.camera.x + x,
--			levity.map.camera.y + y, 2)
--	end
end

return PauseMenu
