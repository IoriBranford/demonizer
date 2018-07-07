local levity = require "levity"
local UIButton = require("UIButton")

local ButtonResume = class(UIButton, UIButton._init)

function ButtonResume:buttonReleased()
	levity.scripts:send(self.object.layer.name, "toggleMenu")
end

return ButtonResume
