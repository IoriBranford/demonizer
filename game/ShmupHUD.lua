local levity = require "levity"
require "class"

local ShmupHUD = class(function(self, id)
	self.layer = levity.map.layers[id]
end)

function ShmupHUD:beginDraw()
	self.layer.offsetx = levity.camera.x
	self.layer.offsety = levity.camera.y
end

return ShmupHUD
