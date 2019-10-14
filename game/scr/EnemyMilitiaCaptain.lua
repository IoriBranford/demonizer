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
	local numobjects = self:call(backuptriggerid, "activateObjects", 1)
	if numobjects <= 0 and self.object.layer.name ~= "ground" then
		self.typechanger:setType("MilitiaCaptain_Descend")
	end
end

function MilitiaCaptain:reachedDest(destx, desty)
	if self.object.type == "MilitiaCaptain_Descend" then
		local starteddescent = not self.object.visible
		if starteddescent then
			self.object.visible = true
			self.typechanger:setType("MilitiaCaptainGroundAttack1")
		else
			self.object.visible = false
		end
	end
end

return MilitiaCaptain
