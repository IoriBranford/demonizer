local levity = require "levity"
local UIButton = levity.machine:requireScript("UIButton")

local ButtonRestart = class(UIButton, UIButton.init)

function ButtonRestart:buttonReleased()
	levity:setNextMap("maps/title.lua")
end

return ButtonRestart
