local levity = require "levity"
local NPC = require "NPC"

local MilitiaCaptain = class(NPC)
function MilitiaCaptain:_init(object)
	self:super(object)

	self.object = object
	self.id = object.id
	self.body = object.body
	self.properties = object.properties
end

local NormalAttackBase = levity.map.objecttypes.MilitiaCaptainNormalAttack1

function MilitiaCaptain:enemyDefeated(humanid)
	NormalAttackBase.firetime = math.max(0.5, NormalAttackBase.firetime - 1/16)

	local backuptriggerid = self.properties.backuptriggerid
	levity.scripts:send(backuptriggerid, "activateObjects", 1)
end

return MilitiaCaptain
