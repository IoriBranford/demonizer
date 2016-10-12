local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local NPCInquisitor = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
end)

function NPCInquisitor:knockout()
	ShmupNPC.knockout(self)
	levity.machine:call("electricity", "setActive", false)
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
		levity.machine:call("electricity", "setActive", true)
	end
end

return NPCInquisitor
