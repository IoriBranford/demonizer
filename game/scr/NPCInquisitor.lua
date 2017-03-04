local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local NPCInquisitor = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
end)

function NPCInquisitor:knockout()
	ShmupNPC.knockout(self)
	levity.map.scripts:call("electricity", "setActive", false)
end

function NPCInquisitor:beginMove(dt)
	ShmupNPC.beginMove(self, dt)
	if not self.object.body:isActive() then
		return
	end
	if self.health < 1 then
		return
	end
	if not self.oncamera then
		return
	end

	if not self.pathwalker or self.pathwalker:finished() then
		levity.map.scripts:call("electricity", "setActive", true)
	end
end

return NPCInquisitor
