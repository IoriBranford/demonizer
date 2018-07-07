local levity = require "levity"
local UIButton = require("UIButton")

local ButtonRestart = class(UIButton, UIButton._init)

function ButtonRestart:buttonReleased()
	levity:setNextMap(levity.map.name)
end

return ButtonRestart
