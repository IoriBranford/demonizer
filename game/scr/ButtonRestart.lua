local levity = require "levity"
local UIButton = require("UIButton")

local ButtonRestart = class(UIButton, UIButton.init)

function ButtonRestart:buttonReleased()
	love.mouse.setVisible(false)
	love.mouse.setRelativeMode(true)
	levity:setNextMap(levity.map.name)
end

return ButtonRestart
