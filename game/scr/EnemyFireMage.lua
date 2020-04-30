local levity = require "levity"
local NPC = require "NPC"

local EnemyFireMage = class(NPC)
function EnemyFireMage:_init(object)
	self:super(object)
end

function EnemyFireMage:defeatCoroutine(dt)
	self.health:createDefeatFX()
	self.typechanger:setType("FireMage")

	for _, fixture in ipairs(self.body:getFixtures()) do
		fixture:setMask(NPC.InvulnerableMask)
	end

	self:explosionClusterCoroutine(self.properties.defeatspark2, 8, 16, self.object.layer, "defeatparticles", 16, .125)
	self:explosionClusterCoroutine(self.properties.defeatspark, 8, 16, self.object.layer,  "defeatparticles", 16, .25)
	self:explosionClusterCoroutine(self.properties.defeatspark3, 1, 0, nil, "defeatparticles", 256, 0)
	self:dropDefeatItem(levity.map.properties.playerid)
	self:send("lavapitwall", "setBobbing", 0, 0, 1)
	self:send("lavapitlava", "setBobbing", 320, 0, 1)
	self:discard()
end

return EnemyFireMage
