local levity = require "levity"
local UIGauge = require("UIGauge")

local GaugeBomb
GaugeBomb = class(UIGauge, function(self, object)
	GaugeBomb.NotFullGid =
		levity.map:getTileGid("bombgauge", "notfull", 0)
	GaugeBomb.FullGid =
		levity.map:getTileGid("bombgauge", "full", 0)

	UIGauge.init(self, object)
end)

function GaugeBomb:setFill(fill)
	if fill == 1 then
		if self.object.gid ~= GaugeBomb.FullGid then
			self.object:setGid(GaugeBomb.FullGid, levity.map)
		end
	else
		if self.object.gid ~= GaugeBomb.NotFullGid then
			self.object:setGid(GaugeBomb.NotFullGid, levity.map)
		end
	end
	UIGauge.setFill(self, fill)
end

return GaugeBomb
