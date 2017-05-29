--- @table Vehicle properties
--@field score awarded on defeat

local levity = require "levity"
local Mover = require "Mover"
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = require "ShmupBullet"
--TODO "NPC" --> "Enemy"

local Vehicle
Vehicle = class(function(self, object)
	self.object = object
	self.id = object.id
	self.body = object.body
	self.properties = object.properties

	self.health = levity.scripts:newScript(self.id, "Health", self.object)
	local mask = Vehicle.CombatantMask

	for _, fixture in ipairs(self.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_NPCTeam)
		fixture:setMask(unpack(mask))
	end

	self.body:setFixedRotation(true)
	self.faceangle = 0

	local pathid = self.properties.pathid
	local pathfinder = self.properties.pathfinder

	if pathid and pathid > 0 and pathfinder then
		self.mover = levity.scripts:newScript(self.id, "Mover",
							self.object)
	end

	if self.properties.firebullet then
		self.shooter = levity.scripts:newScript(self.id, "Shooter",
							self.object)
	end
end)

Vehicle.HitSparkParams = {
	tileset = "sparks_small",
	tileid = "enemydamage",
	lifetime = "animation"
}
Vehicle.DefeatSparkParams = {
	tileset = "sparks_huge",
	tileid = "explosion",
	lifetime = "animation"
}

Vehicle.CombatantMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_NPCShot
}

local Sounds = {
	KO = "snd/knockout.wav",
	Explode = "snd/boom2.wav",
}
levity.bank:load(Sounds)

function Vehicle:isOnCamera()
	return self.oncamera
end

function Vehicle:canBeLockTarget()
	return self.object.visible and self.health
end

function Vehicle:getFaceAngle()
	return self.faceangle
end

local Directions = {
	[0] = "right", [1] = "down", [2] = "left", [3] = "up"
}

function Vehicle:faceAngle(angle)
--	local i = math.floor(2*angle/math.pi + .5) % 4
--
--	local dir = Directions[i]
--	if dir then
--		local gid = levity.map:getTileGid(self.object.tile.tileset, dir,
--							self.object.type:lower())
--		if gid ~= self.object.gid then
--			self.object:setGid(gid, levity.map)
--		end
--	end

	self.faceangle = angle--i*math.pi/2
end

function Vehicle:beginContact_PlayerShot(myfixture, otherfixture, contact)
	if self.health then
		local bulletproperties = otherfixture:getBody():getUserData().properties
		self.health:addDamage(bulletproperties.damage or 1)

		local hx, hy = contact:getPositions()
		if hx and hy then
			self.health:createContactHitFX(contact)
		else
			self.health:createHitFX(otherfixture:getBody():getWorldCenter())
		end
	end
end

function Vehicle:beginContact_PlayerBomb(myfixture, otherfixture, contact)
	local bulletproperties = otherfixture:getBody():getUserData().properties
	local damage = bulletproperties.damage or 1
	if self.health then
		self.health:addDPS(damage)
	end
end

function Vehicle:beginContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_PlayerShot then
		self:beginContact_PlayerShot(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_PlayerBomb then
		self:beginContact_PlayerBomb(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_Camera then
		self.oncamera = true
	end
end

function Vehicle:preSolve(myfixture, otherfixture, contact)
	contact:setEnabled(false)
end

function Vehicle:endContact_PlayerBomb(myfixture, otherfixture, contact)
	local userdata = otherfixture:getBody():getUserData()
	-- TODO fix no userdata for player death explosion
	if userdata then
		local bulletproperties = userdata.properties
		local damage = bulletproperties.damage or 1
		if self.health then
			self.health:addDPS(-damage)
		end
	end
end

function Vehicle:endContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_PlayerBomb then
		self:endContact_PlayerBomb(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_Camera then
		self.oncamera = false
	end
end

function Vehicle:defeat()
	local destroyedtile = self.properties.destroyedtile
	if destroyedtile then
		local destroyedgid = levity.map:getTileGid(
			self.object.tile.tileset, destroyedtile)

		self.object:setGid(destroyedgid, levity.map, true, "static", true)

		for _, fixture in pairs(self.body:getFixtureList()) do
			fixture:setFilterData(0, 0, 0)
		end

		self.body:setLinearVelocity(0, 0)
	else
		levity:discardObject(self.id)
	end

	for _, fixture in ipairs(self.body:getFixtureList()) do
		local l, t, r, b = fixture:getBoundingBox()
		local params = Vehicle.DefeatSparkParams
		local x = l + (r-l)*.5
		local y = t + (b-t)*.5
		ShmupBullet.create(params, x, y, 0, "sparks")
	end

	levity.bank:play(Sounds.KO)
	levity.bank:play(Sounds.Explode)
	levity.scripts:broadcast("pointsScored", self.properties.score or 1000)

	self.properties.pathid = nil
	self.properties.firebullet = nil

	levity.scripts:broadcast("vehicleDestroyed", self.id)

	self.mover = levity.scripts:destroyScript(self.mover, self.id)
	self.shooter = levity.scripts:destroyScript(self.shooter, self.id)
	self.health = levity.scripts:destroyScript(self.health, self.id)
end

return Vehicle
