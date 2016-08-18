local levity = require "levity"
local UIButton = levity.machine:requireScript("UIButton")

local ButtonResume = class(UIButton, UIButton.init)

function ButtonResume:buttonPressed()
	levity.mappaused = false
	self.object.layer.visible = false
	love.mouse.setVisible(false)
	love.mouse.setRelativeMode(true)
end

return ButtonResume
