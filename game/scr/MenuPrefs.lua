local levity = require "levity"
local UIMenu = require "UIMenu"

local MenuPrefs = class(UIMenu)
function MenuPrefs:_init(layer)
	self:super(layer)
	--self.newprefs = levity.prefs.copy()
end
--[[
function MenuPrefs:getPref(pref)
	return self.newprefs[pref]
end
]]
function MenuPrefs:nextMap()
	levity.prefs.save()
end

return MenuPrefs
