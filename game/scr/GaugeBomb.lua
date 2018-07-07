local levity = require "levity"
local UIGauge = require("UIGauge")

local GaugeBomb = class(UIGauge)
function GaugeBomb:_init(object)
	GaugeBomb.NotFullGid =
		levity.map:getTileGid("bombgauge", "notfull", 0)
	GaugeBomb.FullGid =
		levity.map:getTileGid("bombgauge", "full", 0)

	self:super(object)
end

function GaugeBomb:setFill(fill)
	if fill == 1 then
		if self.object.gid ~= GaugeBomb.FullGid then
			self.object:setGid(GaugeBomb.FullGid)
		end
	else
		if self.object.gid ~= GaugeBomb.NotFullGid then
			self.object:setGid(GaugeBomb.NotFullGid)
		end
	end
	UIGauge.setFill(self, fill)
end

return GaugeBomb
