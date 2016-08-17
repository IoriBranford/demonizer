local levity = require "levity"

local PauseMenu = class(function(self, id)
	self.layer = levity.map.layers[id]
	self.layer.visible = false
end)

local Sounds = {
	Pause = "pause.wav"
}
levity.bank:load(Sounds)

function PauseMenu:keypressed_escape()
	if self.layer.visible then
		levity.mappaused = false
		self.layer.visible = false
	else
		levity.mappaused = true
		self.layer.visible = true
		levity.bank:play(Sounds.Pause)
	end
end

function PauseMenu:beginDraw()
	self.layer.offsetx = levity.camera.x
	self.layer.offsety = levity.camera.y
end

return PauseMenu
