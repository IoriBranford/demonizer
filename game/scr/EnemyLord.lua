local levity = require "levity"
local Enemy = require "Enemy"
local ShmupBullet = require "ShmupBullet"

local Lord = class(Enemy)
function Lord:_init(object)
	self:super(object)
end

function Lord:enemyDefeated(enemyid)
	Enemy.enemyDefeated(self, enemyid)
	if enemyid == self.properties.rideid then
		local angle = levity.scripts:call(self.id, "getFaceAngle")
		levity.scripts:send(self.id, "faceAngle", angle, "move")
	end
end

function Lord:defeat()
	Enemy.defeat(self)
	self.coroutine:startCoroutine(Lord.defeatCoroutine, self)
end

function Lord:defeatCoroutine(dt)
	self.health:createDefeatFX()
	self.typechanger:setType("Lord")

	for _, fixture in ipairs(self.body:getFixtureList()) do
		fixture:setMask(Enemy.InvulnerableMask)
	end

	self:explosionClusterCoroutine("SparkDefeatHuge", 8, 32, "sparks", "defeatparticles", 16, .25)
	levity.bank:play("snd/nnoooo.wav")
	self.giveitemtoid = levity.map.properties.playerid
	self:dropDefeatItem()
	self:discard()
end

return Lord
