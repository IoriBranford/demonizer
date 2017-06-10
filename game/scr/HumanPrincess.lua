local levity = require "levity"
local Human = require "Human"

local Princess = class(Human)

Princess.NormalAttack = levity.map.objecttypes.PrincessNormalAttack
Princess.ChargeAttack = levity.map.objecttypes.PrincessChargeAttack

Princess.NormalAttackTime = Princess.NormalAttack.firetime * 10.5
Princess.ChargeAttackWaitTime = 1.5
Princess.ChargeAttackTime = Princess.ChargeAttack.firetime * 2.5

function Princess:_init(object)
	self:super(object)

	self.object = object
	self.id = object.id
	self.body = object.body
	self.properties = object.properties

	self.coroutine = levity.scripts:newScript(self.id, "Coroutine", object)
	self.coroutine:startCoroutine(self.fightCoroutine, self)
	self.chargeparticles = levity.scripts:newScript(self.id,
				"ChargeParticles", object,
				levity.map:getTileGid("particles", "charge"),
				32)
end

local Sounds = {
	Charge = "snd/charge.wav",
	ChargeShot = "snd/powershot.wav"
}
levity.bank:load(Sounds)

function Princess:canBeCaptured()
	return false
end

function Princess:isInCover()
	return self.cover and self.cover:hasCover()
end

function Princess:isOutOfCover()
	return not self:isInCover()
end

function Princess:fightCoroutine(dt)
	self.object.type = "PrincessNormalAttack"
	self.coroutine:waitTime(Princess.NormalAttackTime)

	self.object.type = "PrincessWaitForCharge"
	self.coroutine:waitCond(Princess.isInCover)

	self.object.type = "PrincessCharge"
	levity.bank:play(Sounds.Charge)
	self.chargeparticles:startEmit()
	self.coroutine:waitTime(Princess.ChargeAttackWaitTime)

	self.object.type = "PrincessChargeAttack"
	self.coroutine:waitCond(Princess.isOutOfCover)
	self.chargeparticles:stopEmit()
	self.coroutine:waitTime(Princess.ChargeAttackTime)

	self.coroutine:startCoroutine(self.fightCoroutine, self)
end

function Princess:defeat()
	Human.defeat(self)
	self.coroutine:startCoroutine(self.defeatCoroutine, self)
end

function Princess:hasFled()
	return self.body:getY() < 0
end

function Princess:defeatCoroutine(dt)
	self.chargeparticles:stopEmit()
	self.object.type = "PrincessNormalAttack"
	self.object:setGid(self:getKOGid(), levity.map, false)
	self.coroutine:waitTime(2)

	self.object:setGid(self.object.gid, levity.map, true)
	self.coroutine:waitTime(1)

	self.facing:faceAngle(math.pi*0.5)
	self.coroutine:waitTime(1)

	self.facing:faceAngle(math.pi*1.5)
	local vx = (levity.map.tilewidth*levity.map.width/2 - self.body:getX())
	local vy = -self.body:getY()
	local dist = math.hypot(vx, vy)
	vx = vx * 1.5 * self.properties.pathspeed / dist
	vy = vy * 1.5 * self.properties.pathspeed / dist
	self.body:setLinearVelocity(vx, vy)
	self.coroutine:waitCond(Princess.hasFled)

	levity.scripts:broadcast("playerWon")
	levity:discardObject(self.object.id)
end

return Princess
