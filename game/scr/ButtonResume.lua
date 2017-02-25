local levity = require "levity"
local UIButton = require("UIButton")

local ButtonResume = class(UIButton, UIButton.init)

function ButtonResume:buttonReleased()
	levity.mappaused = false
	self.object.layer.visible = false
	love.mouse.setVisible(false)
	love.mouse.setRelativeMode(true)
end

return ButtonResume
