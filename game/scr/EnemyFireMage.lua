local levity = require "levity"
local Enemy = require "Enemy"

local EnemyFireMage = class(Enemy)
function EnemyFireMage:_init(object)
	self:super(object)
end

function EnemyFireMage:defeatCoroutine(dt)
	self.health:createDefeatFX()
	self.typechanger:setType("FireMage")

	for _, fixture in ipairs(self.body:getFixtureList()) do
		fixture:setMask(Enemy.InvulnerableMask)
	end

	self:explosionClusterCoroutine(self.properties.defeatspark2, 8, 16, self.object.layer, "defeatparticles", 16, .125)
	self:explosionClusterCoroutine(self.properties.defeatspark, 8, 16, self.object.layer,  "defeatparticles", 16, .25)
	self:explosionClusterCoroutine(self.properties.defeatspark3, 1, 0, nil, "defeatparticles", 256, 0)
	self:dropDefeatItem(levity.map.properties.playerid)
	self:discard()
end

return EnemyFireMage
