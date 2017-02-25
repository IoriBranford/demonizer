local levity = require "levity"
local UIGauge = require("UIGauge")

local GaugeBomb = class(UIGauge, UIGauge.init)

GaugeBomb.NotFullGid = levity:getTileGid("bombgauge", "notfull", 0)
GaugeBomb.FullGid = levity:getTileGid("bombgauge", "full", 0)

function GaugeBomb:setFill(fill)
	if fill == 1 then
		if self.object.gid ~= GaugeBomb.FullGid then
			levity:setObjectGid(self.object, GaugeBomb.FullGid)
		end
	else
		if self.object.gid ~= GaugeBomb.NotFullGid then
			levity:setObjectGid(self.object, GaugeBomb.NotFullGid)
		end
	end
	UIGauge.setFill(self, fill)
end

return GaugeBomb
