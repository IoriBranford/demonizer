--@field hitparticles Layer to generate particles (in gameplay.lua)
--@field hitsound Sound file to play on hit
--@field hitspark Type of hit spark
--@table Properties

local levity = require "levity"
local ShmupBullet = require "ShmupBullet"
local ShmupCollision = require "ShmupCollision"

local Health = class(require("Script"))
function Health:_init(object)
	self.id = object.id
	self.object = object
	self.properties = object.properties
	self.body = object.body
	self.health = object.properties.health or 8
	self.movedamage = 0
	self.ishealing = false
end

local function isDefeated(health)
	return health < 1
end

function Health:isHealing()
	return self.ishealing
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
		levity.bank:play(self.properties.hitsound or
			levity.map.properties.enemyhitsound)
	end

	local hitparticles = self.properties.hitparticles or "damageparticles"
	self:send(hitparticles, "emit",
		4, sparkx, sparky, angle or 2*math.pi*love.math.random())
end

function Health:createHealFX()
	local cx, cy = self.body:getWorldCenter()
	local hitparticles = self.properties.healparticles or "healparticles"
	self:send(hitparticles, "emit",
		1, cx, cy, math.pi*1.5)
end

function Health:createDefeatFX()
	local sparkx, sparky = self.body:getWorldCenter()
	self:send(self.properties.defeatparticles or "defeatparticles",
		"emit", 16, sparkx, sparky, 0, 2*math.pi)

	levity.bank:play(self.properties.defeatsound
		or levity.map.properties.enemydefeatsound)
end

function Health:addDPS(id, dps)
	self.dpssources = self.dpssources or {}
	self.dpssources[id] = dps
end

function Health:removeDPS(id)
	self.dpssources = self.dpssources or {}
	self.dpssources[id] = nil
end

function Health:addDamage(damage, sparkx, sparky, angle)
	self.movedamage = self.movedamage + damage
end

function Health:damageFromContact(contact)
	local fix1, fix2 = contact:getFixtures()
	local myfix, otherfix = fix1, fix2
	if fix1:getBody() ~= self.body then
		myfix = fix2
		otherfix = fix1
	end

	local otherdata = otherfix:getBody():getUserData()
	local otherproperties = otherdata and otherdata.properties
	local damage = otherproperties and otherproperties.damage
	if not damage then
		return 0
	end

	local immuneplayerbomb = self.properties.immuneplayerbomb
	local immuneplayershot = self.properties.immuneplayershot
	local immuneplayertouch = self.properties.immuneplayertouch
	local immuneplayertouchincover = self.properties.immuneplayertouchincover

	local hascover = self:call(self.id, "fixtureHasCover", myfix)

	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_PlayerTeam then
			if immuneplayertouch
			or hascover and immuneplayertouchincover
			then
				return 0
			end
		elseif category == ShmupCollision.Category_PlayerShot then
			if immuneplayershot or hascover then
				return 0
			end
		elseif category == ShmupCollision.Category_EnemyShot then
			if hascover then
				return 0
			end
		elseif category == ShmupCollision.Category_PlayerBomb then
			if immuneplayerbomb then
				return 0
			end
		end
	end

	return damage
end

function Health:endMove(dt)
	local damage = 0
	local cantakedamage = self:call(self.id, "canTakeDamage")

	local healthleak = self.properties.healthleak or 0
	local totaldps = healthleak
	local hitspark
	if cantakedamage == false then
		if self.properties.invulnerable then
			hitspark = "SparkGuard"
		end
	else
		local tutorial = self:call(levity.map.name, "isTutorial")
		if self.dpssources then
			local playerid = levity.map.properties.playerid
			for id, dps in pairs(self.dpssources) do
				totaldps = totaldps + dps
				if not tutorial and id == playerid and dps > 0 then
					self:send("status", "addBombPieces",
						math.min(dps*dt, 0.25))
				end
			end
		end

		local damagetilelayer = self.properties.damagetilelayer
		if damagetilelayer then
			local damagetile = self:call(damagetilelayer,
				"getPositionProperties", self.body:getPosition())
			local tiledamage = damagetile and damagetile.damage or 0
			totaldps = totaldps + tiledamage
		end

		damage = self.movedamage + (totaldps * dt)
	end

	damage = math.max(damage, self.health - self.properties.health)
	self.ishealing = damage < 0

	local health = self.health - damage
	if damage > 0 and totaldps - healthleak > 0 then
		self:createHitFX(nil, nil, nil, hitspark)
	elseif damage < 0 then
		self:createHealFX()
	end

	if damage > 0 then
		if isDefeated(health) then
			if not self.properties.friendly then
				self:broadcast("pointsScored", self.health*10)
			end
			local defeatwith
			if totaldps > 0 then
				defeatwith = "bomb"
			else
				defeatwith = "hit"
			end
			self:send(self.id, "defeat", defeatwith)
		else
			if not self.properties.friendly then
				self:broadcast("pointsScored", damage*10)
			end
		end
		--self.object.text = health
	end
	self.health = health
end

return Health
