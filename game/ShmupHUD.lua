local levity = require "levity"

local ShmupHUD = class(function(self, id)
	self.layer = levity.map.layers[id]
	self.properties = self.layer.properties
end)

function ShmupHUD:getScoreId()
	return self.properties.scoreid
end

function ShmupHUD:beginDraw()
	self.layer.offsetx = levity.camera.x
	self.layer.offsety = levity.camera.y
end

return ShmupHUD
