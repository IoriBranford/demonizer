local levity = require "levity"
local Object = require "levity.object"

local PauseMenu = class(function(self, layer)
	self.layer = layer
	self.layer.visible = false

	if self.layer.map.properties.delayinitobjects == true then
		for _, object in pairs(self.layer.objects) do
			Object.init(object, self.layer)
		end
	end
end)

local Sounds = {
	Pause = "snd/pause.wav"
}
levity.bank:load(Sounds)

function PauseMenu:keypressed_escape()
	local pause = not self.layer.map.paused
	self.layer.map.paused = pause
	self.layer.visible = pause
	love.mouse.setVisible(pause)
	love.mouse.setRelativeMode(not pause)

	if pause then
		levity.bank:play(Sounds.Pause)
	end
end

function PauseMenu:keypressed_pause()
	local pause = not self.layer.map.paused
	self.layer.map.paused = pause

	if pause then
		levity.bank:play(Sounds.Pause)
	end
end

function PauseMenu:beginDraw()
	self.layer.offsetx = self.layer.map.camera.x
	self.layer.offsety = self.layer.map.camera.y
	love.graphics.setColor(0,0,0, 0xc0)
	love.graphics.rectangle("fill",
		self.layer.map.camera.x, self.layer.map.camera.y,
		self.layer.map.camera.w, self.layer.map.camera.h)
	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

function PauseMenu:endDraw()
--	if self.layer.visible then
--		local x, y = love.mouse.getPosition()
--		x, y = levity:screenToCamera(x, y)
--		love.graphics.circle("line",
--			self.layer.map.camera.x + x,
--			self.layer.map.camera.y + y, 2)
--	end
end

return PauseMenu
