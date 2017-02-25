local levity = require "levity"
local UIButton = require("UIButton")

local ButtonRestart = class(UIButton, UIButton.init)

function ButtonRestart:buttonReleased()
	levity:setNextMap("title.lua")
end

return ButtonRestart
