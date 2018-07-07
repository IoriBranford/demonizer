local levity = require "levity"
local UIButton = require("UIButton")

local ButtonPlayStage = class(UIButton)
function ButtonPlayStage:_init(object)
	self:super(object)
	self:setLock(not love.filesystem.exists(self.object.properties.nextmap))
end

function ButtonPlayStage:buttonReleased()
	levity.scripts:send(levity.mapfile, "startGame", self.object.properties.nextmap)

	local menu = self.object.layer
	if menu then
		for _, object in pairs(menu.objects) do
			levity:discardObject(object.id)
		end
	end
end

return ButtonPlayStage
