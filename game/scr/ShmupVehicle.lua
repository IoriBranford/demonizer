local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local Mover = require "Mover"
local ShmupBullet = require "ShmupBullet"

local Sounds = {
	Hit = "snd/hit.wav",
	KO = "snd/knockout.wav",
	Boom2 = "snd/boom2.wav"
}
levity.bank:load(Sounds)

local ShmupVehicle = class(function(self, object)
	self.object = object
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self:setActive(levity.map.properties.delayinitobjects == true)

	self.health = 64

	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setCategory(ShmupCollision.Category_NPCTeam)
		fixture:setMask(ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_PlayerTeam,
			ShmupCollision.Category_NPCShot)
	end

	self.oncamera = false

	self.mover = nil
--	TODO strtocall module
--	local onActivate = self.properties.onActivate
--	if onActivate then
--		self.onActivate = parseMemberFunctionCall(self, onActivate)
--	end
--	local onRemove = self.properties.onRemove
--	if onRemove then
--		self.onRemove = parseMemberFunctionCall(self, onRemove)
--	end
end)

ShmupVehicle.HitSparkParams = {
	tileset = "sparks_small",
	tileid = "enemydamage",
	lifetime = "animation"
}

ShmupVehicle.ExplosionParams = {
	tileset = "sparks_huge",
	tileid = "explosion",
	lifetime = "animation"
}

function ShmupVehicle:activate()
	self.ready = true
end

function ShmupVehicle:setActive(active)
	if self.object.gid then
		self.object.visible = active
	else
		self.object.visible = false
	end
	self.object.body:setActive(active)
	if active then
		self.object.anitimescale = 1
	else
		self.object.anitimescale = 0
	end
	self.ready = false
end

function ShmupVehicle:canBeLockTarget()
	return self.oncamera
		and self.object.visible
		and self.health > 0
end

function ShmupVehicle:knocksOutPassengers()
	return self.properties.kopassengers == true
end

function ShmupVehicle:isOnCamera()
	return self.oncamera
end

function ShmupVehicle:explode()
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		local l, t, r, b = fixture:getBoundingBox()
		local params = ShmupVehicle.ExplosionParams
		local x = l + (r-l)*.5
		local y = t + (b-t)*.5
		ShmupBullet.create(params, x, y, 0, "sparks")
	end

	levity.bank:play(Sounds.KO)
	levity.bank:play(Sounds.Boom2)
	levity.scripts:broadcast("vehicleDestroyed", self.object.id)
	levity.scripts:broadcast("pointsScored",
				self.properties.killpoints or 1000)

	local destroyedtile = self.properties.destroyedtile
	if destroyedtile then
		local destroyedgid = levity.map:getTileGid(
			self.object.tile.tileset,
			destroyedtile)

		-- Optimally, would change body type to static and
		-- remove all fixtures.
		-- But those can't change in a collision callback.
		self.object:setGid(destroyedgid, levity.map,
					true, nil, false)

		for _, fixture in pairs(self.object.body:getFixtureList()) do
			fixture:setFilterData(0, 0, 0)
		end
	else
		self:remove()
	end

	self.properties.pathspeed = 0
end

function ShmupVehicle:beginContact_PlayerShot(myfixture, otherfixture, contact)
	if self.health >= 1 then
		local bulletproperties =
			otherfixture:getBody():getUserData().properties
		local damage = bulletproperties.damage or 1

		self.health = self.health - damage
		if self.health < 1 then
			self:explode()
		else
			levity.bank:play(Sounds.Hit)
		end

		local params = ShmupVehicle.HitSparkParams
		local x, y = otherfixture:getBody():getWorldCenter()
		ShmupBullet.create(params, x, y, 0, "sparks")
	end
end

function ShmupVehicle:beginContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_PlayerShot
	or category == ShmupCollision.Category_PlayerBomb then
		self:beginContact_PlayerShot(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_Camera then
		self.oncamera = true
	end
end

function ShmupVehicle:endContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_Camera then
		self.oncamera = false
	end
end

function ShmupVehicle:remove()
	levity.map:discardObject(self.object.id)
--	if self.onRemove then
--		self.onRemove()
--	end
end

function ShmupVehicle:beginMove(dt)
	if self.ready == true then
		self:setActive(true)
--		if self.onActivate then
--			self.onActivate()
--		end
	end

	if not self.object.body:isActive() then
		return
	end

	if not self.mover and self.properties.pathid then
		self.mover = levity.scripts:newScript(self.object.id, "Mover",
							self.object)
	end
end

ShmupVehicle.pathfind = Mover.pathfind_linear1way

return ShmupVehicle
