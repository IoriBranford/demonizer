local levity = require "levity"
local UIMenu = require "UIMenu"

local MenuGameOver = class(UIMenu)

function MenuGameOver:_init(layer)
	self:super(layer)
	layer.visible = false
end

function MenuGameOver:playerLost()
	self.layer.visible = true
	self:moveCursor(1, #self.buttonids + 1)
end

function MenuGameOver:beginDraw()
	self.layer.offsetx = levity.camera.x
	self.layer.offsety = levity.camera.y
end

return MenuGameOver
