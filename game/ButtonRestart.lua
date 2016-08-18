local levity = require "levity"
local UIButton = levity.machine:requireScript("UIButton")

local ButtonRestart = class(UIButton, UIButton.init)

function ButtonRestart:buttonPressed()
	love.mouse.setVisible(false)
	love.mouse.setRelativeMode(true)
	levity:setNextMap(levity.mapfile)
end

return ButtonRestart
