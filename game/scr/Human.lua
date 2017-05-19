local levity = require "levity"
local Mover = require "Mover"
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = require "ShmupBullet"
local ShmupWingman = require "ShmupWingman"
--TODO "NPC" --> "Enemy"

local CombatantMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_NPCShot
}

local NonCombatantMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_NPCTeam,
	ShmupCollision.Category_NPCShot,
	ShmupCollision.Category_NPCCover
}

local Human
Human = class(function(self, object)
	self.object = object
	self.properties = object.properties

	local mask
	if self.properties.health and self.properties.health >= 1 then
		mask = CombatantMask
		self.health = levity.scripts:newScript(self.object.id, "Health", self.object)
		self.cover = levity.scripts:newScript(self.object.id, "TakingCover", self.object)
	else
		mask = NonCombatantMask
	end

	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_NPCTeam)
		fixture:setMask(unpack(mask))
	end

	self.object.body:setFixedRotation(true)
	self.faceangle = 0

	self.captured = false
end)

Human.KnockoutGravity = 200
Human.KnockoutLaunchVelY = -150
Human.DefeatSparkParams = {
	tileset = "sparks_med",
	tileid = "explosion",
	lifetime = "animation"
}

local Sounds = {
	KO = "snd/knockout.wav",
	FemaleCapture = "snd/item1.wav",
	MaleCapture = "snd/item2.wav",
	Convert = "snd/warp.wav",
	FemaleDeath = "snd/shriek.wav",
	MaleDeath = "snd/mmph.wav",
}
levity.bank:load(Sounds)

function Human:canBeCaptured()
	return not self.health and not self.captured
		and not self.properties.leaderid
end

function Human:getFaceAngle()
	return self.faceangle
end

local Directions = {
	[0] = "right", [1] = "down", [2] = "left", [3] = "up"
}

function Human:faceAngle(angle)
	local i = math.floor(2*angle/math.pi + .5) % 4

	local dir = Directions[i]
	if dir then
		local gid = levity.map:getTileGid(self.object.tile.tileset, dir,
							self.object.type:lower())
		if gid ~= self.object.gid then
			self.object:setGid(gid, levity.map)
		end
	end

	self.faceangle = i*math.pi/2
end

function Human:beginMove(dt)
	if self:canBeCaptured() then
		if self.properties.kolaunch then
			local vx, vy = self.object.body:getLinearVelocity()
			body:applyForce(-vx/64, body:getMass() * Human.KnockoutGravity)
		end
	else
		local pathid = self.properties.pathid
		local pathfinder = self.properties.pathfinder
		local vx, vy = self.object.body:getLinearVelocity()
		if not pathid or (vx == 0 and vy == 0) then
			local playerid = levity.map.properties.playerid
			local player = levity.map.objects[playerid]
			local playercx, playercy = player.body:getWorldCenter()
			local cx, cy = self.object.body:getWorldCenter()
			local playerdx, playerdy = playercx - cx, playercy - cy
			self:faceAngle(math.atan2(playerdy, playerdx))
		end

		if not self.mover and pathid and pathfinder then
			self.mover = levity.scripts:newScript(self.object.id, "Mover",
								self.object)
		end

		if not self.shooter and self.properties.firebullet then
			self.shooter = levity.scripts:newScript(self.object.id, "Shooter",
								self.object)
		end
	end
end

function Human:beginContact_PlayerShot(myfixture, otherfixture, contact)
	if self.cover:hasCover() then
		--self:suppress()
	else
		local bulletproperties = otherfixture:getBody():getUserData().properties
		self.health:addDamage(bulletproperties.damage or 1,
			otherfixture:getBody():getWorldCenter())
	end
end

function Human:beginContact_PlayerTeam(myfixture, otherfixture, contact)
	if self:canBeCaptured() then
		self.captured = true
		local captorid = otherfixture:getBody():getUserData().id

		if self.properties.sex == "female" then
			local cx, cy = self.object.body:getWorldCenter()
			local gid = levity.map:getTileGid(
						self.object.tile.tileset,
						"up", self.object.type:lower())
			local newwingmanid = ShmupWingman.create(levity.map, gid,
						cx, cy, captorid, self.object.id)

			levity.bank:play(Sounds.Convert)
			levity.bank:play(Sounds.FemaleCapture)
		else
			levity.bank:play(Sounds.MaleCapture)
			levity.scripts:broadcast("npcCaptured", self.object.id, captorid)
		end

		levity:discardObject(self.object.id)
	else
		--self:suppress()
	end
end

function Human:beginContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_PlayerTeam then
		self:beginContact_PlayerTeam(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_PlayerShot then
		self:beginContact_PlayerShot(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_PlayerBomb then
		--self:beginContact_PlayerBomb(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_Camera then
		self.oncamera = true
	end
end

function Human:getKOGid()
	return levity.map:getTileGid(self.object.tile.tileset, "ko",
					self.object.type:lower())
end


function Human:defeat()
	self.object:setGid(self:getKOGid(), levity.map)

	local params = Human.DefeatSparkParams
	local x, y = self.object.body:getWorldCenter()
	ShmupBullet.create(params, x, y, 0, "sparks")

	levity.bank:play(Sounds.KO)

	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setMask(unpack(NonCombatantMask))
	end

	if self.properties.kolaunch then
		local vx = self.properties.kolaunchvelx or 0
		local vy = self.properties.kolaunchvely
			or Human.KnockoutLaunchVelY
		self.object.body:setLinearVelocity(vx, vy)
	else
		self.object.body:setLinearVelocity(0, 0)
	end

	self.properties.pathid = nil
	self.properties.firebullet = nil

	self.mover = levity.scripts:destroyScript(self.mover, self.object.id)
	self.shooter = levity.scripts:destroyScript(self.shooter, self.object.id)
	self.health = levity.scripts:destroyScript(self.health, self.object.id)
	self.cover = levity.scripts:destroyScript(self.cover, self.object.id)
end

return Human
