local levity = require "levity"

local PauseMenu = class(function(self, id)
	self.layer = levity.map.layers[id]
	self.layer.visible = false

	if levity.map.properties.delayinitobjects == true then
		for _, object in pairs(self.layer.objects) do
			levity:initObject(object, self.layer)
		end
	end
end)

local Sounds = {
	Pause = "pause.wav"
}
levity.bank:load(Sounds)

function PauseMenu:keypressed_escape()
	local pause = not levity.mappaused
	levity.mappaused = pause
	self.layer.visible = pause
	love.mouse.setVisible(pause)
	love.mouse.setRelativeMode(not pause)

	if pause then
		levity.bank:play(Sounds.Pause)
	end
end

function PauseMenu:keypressed_pause()
	local pause = not levity.mappaused
	levity.mappaused = pause

	if pause then
		levity.bank:play(Sounds.Pause)
	end
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
