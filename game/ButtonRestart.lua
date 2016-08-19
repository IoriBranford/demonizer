local levity = require "levity"
local UIButton = levity.machine:requireScript("UIButton")

local ButtonRestart = class(UIButton, UIButton.init)

function ButtonRestart:buttonReleased()
	love.mouse.setVisible(false)
	love.mouse.setRelativeMode(true)
	levity:setNextMap(levity.mapfile)
end

return ButtonRestart
