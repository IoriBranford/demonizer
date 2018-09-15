--@field hitparticles Layer to generate particles (in gameplay.lua)
--@field hitsound Sound file to play on hit
--@field hitspark Type of hit spark
--@table Properties

local levity = require "levity"
local ShmupBullet = require "ShmupBullet"
local ShmupCollision = require "ShmupCollision"

local Health = class()
function Health:_init(object)
	self.id = object.id
	self.properties = object.properties
	self.body = object.body
	self.health = object.properties.health or 8
	self.movedamage = 0
	self.dps = 0
end

local Sounds = {
	Hit = "snd/hit.ogg",
	Defeat = "snd/knockout.ogg",
}
levity.bank:load(Sounds)

local function isDefeated(health)
	return health < 1
end

function Health:isDefeated()
	return isDefeated(self.health)
end

function Health:getHealthPercent()
	return self.health/self.properties.health
end

function Health:beginMove(dt)
	self.movedamage = 0
end

function Health:createContactHitFX(contact, myfixture, sparktype)
	local nx, ny = contact:getNormal()
	local f1 = contact:getFixtures()
	if myfixture ~= f1 then
		nx, ny = -nx, -ny
	end
	local hx, hy = contact:getPositions()
	self:createHitFX(hx, hy, math.atan2(ny, nx), sparktype)
end

function Health:createHitFX(sparkx, sparky, angle, sparktype)
	if sparkx and sparky then
		sparktype = sparktype or "SparkDamage"
		ShmupBullet.create(sparktype, sparkx, sparky, 0, 0, "sparks")
	else
		sparkx, sparky = self.body:getWorldCenter()
		levity.bank:play(self.properties.hitsound or Sounds.Hit)
	end

	local hitparticles = self.properties.hitparticles or "damageparticles"
	levity.scripts:send(hitparticles, "emit",
		4, sparkx, sparky, angle or 2*math.pi*love.math.random())
end

function Health:createDefeatFX()
	local sparkx, sparky = self.body:getWorldCenter()
	levity.scripts:send(self.properties.defeatparticles or "defeatparticles",
		"emit", 16, sparkx, sparky, 0, 2*math.pi)

	levity.bank:play(Sounds.Defeat)
end

function Health:addDPS(dps)
	self.dps = self.dps + dps
end

function Health:addDamage(damage, sparkx, sparky, angle)
	self.movedamage = self.movedamage + damage
end

function Health:endMove(dt)
	local damage = 0
	if levity.scripts:call(self.id, "canTakeDamage") ~= false then
		damage = self.movedamage + (self.dps * dt)
	end

	local health = self.health - damage
	if self.dps > 0 then
		self:createHitFX()
	end
	if damage > 0 then
		if isDefeated(health) then
			if not self.properties.friendly then
				levity.scripts:broadcast("pointsScored", self.health*10)
			end
			levity.scripts:send(self.id, "defeat", nil, self.dps > 0)
		else
			if not self.properties.friendly then
				levity.scripts:broadcast("pointsScored", damage*10)
			end
		end
	end
	self.health = health
end

return Health
