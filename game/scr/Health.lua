local levity = require "levity"
local ShmupBullet = require "ShmupBullet"

local Health
Health = class(function(self, object)
	self.id = object.id
	self.body = object.body
	self.health = object.properties.health or 8
	self.movedamage = 0
	self.dps = 0
	self.hitparticles = levity.scripts:newScript(self.id, "HitParticles",
		object, levity.map:getTileGid("particles", "damage"), 32)
end)

Health.HitSparkParams = {
	tileset = "sparks_small",
	tileid = "enemydamage",
	lifetime = "animation"
}

local Sounds = {
	Hit = "snd/hit.wav"
}
levity.bank:load(Sounds)

function Health:beginMove(dt)
	self.movedamage = 0
end

function Health:createHitFX(sparkx, sparky)
	local angle
	if sparkx and sparky then
		ShmupBullet.create(Health.HitSparkParams, sparkx, sparky, 0, "sparks")
		local myx, myy = self.body:getWorldCenter()
		angle = math.atan2(sparky - myy, sparkx - myx)
	else
		angle = 2*math.pi*love.math.random()
	end

	self.hitparticles:emit(4, angle)

	levity.bank:play(Sounds.Hit)
end

function Health:addDPS(dps)
	self.dps = self.dps + dps
end

function Health:addDamage(damage, sparkx, sparky)
	self.movedamage = self.movedamage + damage
	self:createHitFX(sparkx, sparky)
end

function Health:endMove(dt)
	local health = self.health - self.movedamage - (self.dps * dt)
	if self.dps > 0 then
		self:createHitFX()
	end
	if self.health >= 1 and health < 1 then
		levity.scripts:send(self.id, "defeat")
	end
	self.health = health
end

return Health
