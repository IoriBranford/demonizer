local levity = require "levity"
local UIMenu = require "UIMenu"

local MenuDrunk = class(UIMenu, UIMenu._init)

function MenuDrunk:moveCursor(dir, limit)
	UIMenu.moveCursor(self, dir, limit)
	levity.map.properties.blurradius = 0
	levity.map.properties.blurdirx = 0
	levity.map.properties.blurdiry = 0
	levity.map.properties.blurupdatespeed = 60
end

return MenuDrunk
