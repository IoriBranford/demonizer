local levity = require "levity"
local UIButton = require("UIButton")

local ButtonChangeMap = class(UIButton, UIButton._init)

function ButtonChangeMap:buttonReleased()
	levity:setNextMap(self.object.properties.nextmap)
end

return ButtonChangeMap
