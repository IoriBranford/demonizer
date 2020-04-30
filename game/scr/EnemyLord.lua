local levity = require "levity"
local NPC = require "NPC"
local ShmupBullet = require "ShmupBullet"

local Lord = class(NPC)
function Lord:_init(object)
	self:super(object)
end

function Lord:rideDestroyed()
	local angle = self:call(self.id, "getFaceAngle")
	self:send(self.id, "faceAngle", angle, "move")
end

function Lord:defeatCoroutine(dt)
	self.health:createDefeatFX()
	self.typechanger:setType("Lord")

	for _, fixture in ipairs(self.body:getFixtures()) do
		fixture:setMask(NPC.InvulnerableMask)
	end

	self:explosionClusterCoroutine("SparkDefeatHuge", 8, 32, "sparks", "defeatparticles", 16, .25)
	levity.bank:play(self.properties.defeatfinalsound)
	self:dropDefeatItem(levity.map.properties.playerid)
	self:discard()
end

return Lord
