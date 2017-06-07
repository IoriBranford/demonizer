local levity = require "levity"
local pl = require'pl.import_into'()
local Human = require "Human"

local Princess = class(Human)

Princess.NormalAttack = {
	firebullet = "BulletArrow",
	firefan = 3,
	firefanslice = 15,
	firetime = 0.5
}

Princess.ChargeAttack = {
	firebullet = "BulletFireArrow",
	firefan = 5,
	firefanslice = 15,
	firetime = 0.125
}

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
	pl.tablex.update(self.properties, Princess.NormalAttack)
	self.coroutine:waitTime(Princess.NormalAttackTime)

	self.properties.firebullet = ""
	self.coroutine:waitCond(Princess.isInCover)

	self.properties.pathspeed = 0
	levity.bank:play(Sounds.Charge)
	self.coroutine:waitTime(Princess.ChargeAttackWaitTime)

	self.properties.pathspeed = nil
	self.properties.pathspeed = self.properties.pathspeed/2
	self.properties.firearc = 360
	self.coroutine:waitCond(Princess.isOutOfCover)

	pl.tablex.update(self.properties, Princess.ChargeAttack)
	self.coroutine:waitTime(Princess.ChargeAttackTime)

	self.properties.pathspeed = nil
	self.properties.firearc = nil
	self.coroutine:startCoroutine(self.fightCoroutine, self)
end

function Princess:defeatCoroutine(dt)
	self.object:setGid(self.object.gid, levity.map, false)
	local t = 0
	repeat
		t = t + dt
		self.body:setLinearVelocity(
			-60*math.sin(math.max(0, t-2) * 30 * math.pi),
			0)
		self, dt = coroutine.yield()
	until t >= 3
	self.body:setLinearVelocity(0, 0)

	self.facing:faceAngle(math.pi*0.5)
	t = 0
	repeat
		t = t + dt
		self, dt = coroutine.yield()
	until t >= 1

	self.facing:faceAngle(math.pi*1.5)

	local vx = (levity.map.tilewidth*levity.map.width/2 - self.body:getX())
	local vy = -self.body:getY()
	local dist = math.hypot(vx, vy)
	vx = vx * 1.5 * self.properties.pathspeed / dist
	vy = vy * 1.5 * self.properties.pathspeed / dist
	self.body:setLinearVelocity(vx, vy)
	repeat self, dt = coroutine.yield() until self.body:getY() <= 0

	levity.scripts:broadcast("playerWon")
	levity:discardObject(self.object.id)
end

function Princess:defeat()
	Human.defeat(self)
	self.coroutine:startCoroutine(self.defeatCoroutine, self)
end

return Princess
