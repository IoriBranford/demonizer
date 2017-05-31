local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local NPCInquisitor = class(ShmupNPC, function(self, object)
	ShmupNPC.init(self, object)
end)

function NPCInquisitor:knockout()
	ShmupNPC.knockout(self)
	levity.scripts:call("electricity", "setActive", false)
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

	local vx, vy = self.object.body:getLinearVelocity()
	if vx == 0 and vy == 0 then
		levity.scripts:call("electricity", "setActive", true)
	end
end

return NPCInquisitor
