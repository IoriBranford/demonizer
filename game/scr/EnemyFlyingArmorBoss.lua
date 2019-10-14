local levity = require "levity"
local NPC = require "NPC"
local ShmupBullet = require "ShmupBullet"

local EnemyFlyingArmorBoss = class(NPC)

function EnemyFlyingArmorBoss:defeatCoroutine()
	self.health:createDefeatFX()

	for _, fixture in ipairs(self.body:getFixtureList()) do
		fixture:setMask(NPC.InvulnerableMask)
	end

	self:explosionClusterCoroutine(self.properties.defeatspark2, 8, 16, self.object.layer, "defeatparticles", 16, .125)
	self:explosionClusterCoroutine(self.properties.defeatspark, 8, 16, self.object.layer,  "defeatparticles", 16, .25)
	self:explosionClusterCoroutine(self.properties.defeatspark3, 1, 0, nil, "defeatparticles", 256, 0)
	levity.bank:play(self.properties.defeatfinalsound)
	self:send(self.id, "discard")
	local shieldwall = levity.map.layers["shieldwall"]
	if shieldwall then
		ShmupBullet.explodeTileLayer(shieldwall)
	end
end

return EnemyFlyingArmorBoss
