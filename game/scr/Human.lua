--- Human character
--@module Human

--- Human properties
--@field rideid Vehicle to ride on
--@field rideshield Does vehicle block player team's weapons and capture?
--@field ridedestroyedko Knock out if vehicle destroyed?
--@field health 0 = civilian
--@field score awarded on defeat
--@field kolaunch Thrown up in the air on defeat?
--@field kolaunchvelx
--@field kolaunchvely
--@field convertible Becomes wingman on capture?
--@table Properties

local levity = require "levity"
local Mover = require "Mover"
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = require "ShmupBullet"
local ShmupWingman = require "ShmupWingman"
--TODO "NPC" --> "Enemy"

local Human
Human = class(function(self, object)
	self.object = object
	self.id = object.id
	self.body = object.body
	self.properties = object.properties

	local mask
	if self.properties.health and self.properties.health >= 1 then
		mask = Human.CombatantMask
		self.health = levity.scripts:newScript(self.id, "Health", self.object)
		self.cover = levity.scripts:newScript(self.id, "TakingCover", self.object)
	else
		mask = Human.NonCombatantMask
	end

	for _, fixture in ipairs(self.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_NPCTeam)
		fixture:setMask(unpack(mask))
	end

	self.body:setFixedRotation(true)
	self.faceangle = 0

	local rideid = self.properties.rideid
	if rideid == 0 then
		rideid = nil
	end
	local pathid = self.properties.pathid
	if pathid == 0 then
		pathid = nil
	end
	local pathfinder = self.properties.pathfinder

	if not rideid and pathid and pathfinder then
		self.mover = levity.scripts:newScript(self.id, "Mover",
							self.object)
	end

	if self.properties.firebullet then
		self.shooter = levity.scripts:newScript(self.id, "Shooter",
							self.object)
	end

	self.pulledbyplayer = false
	self.captured = false

	if self.properties.ko then
		self:koLaunch()
	end
end)

Human.HitSparkParams = {
	tileset = "sparks_small",
	tileid = "enemydamage",
	lifetime = "animation"
}
Human.DefeatSparkParams = {
	tileset = "sparks_med",
	tileid = "explosion",
	lifetime = "animation"
}
Human.KOGravity = 200
Human.KOLaunchVelY = -150
Human.CapturePullSpeed = 4*60
Human.CapturePullDistSq = 30*30
Human.EnhancedCapturePullDistSq = 120*120
Human.MaxReleasedCaptives = 10
Human.ReleaseLaunchVelY = -250

Human.CombatantMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_NPCShot
}

Human.NonCombatantMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_NPCTeam,
	ShmupCollision.Category_NPCShot,
	ShmupCollision.Category_NPCCover
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

function Human:start()
	local rideid = self.properties.rideid
	if rideid and rideid > 0 then
		levity.scripts:send(rideid, "addRider", self.id)
	end
end

function Human:canBeCaptured()
	local rideid = self.properties.rideid or 0
	return not self.health and not self.captured and
		not (rideid > 0 and self.properties.rideshield)
end

function Human:isOnCamera()
	return self.oncamera
end

function Human:canBeLockTarget()
	return self.object.visible and self.health
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
		local gid = levity.map:getTileGid(self.object.tile.tileset, dir)
		if gid ~= self.object.gid then
			self.object:setGid(gid, levity.map)
		end
	end

	self.faceangle = i*math.pi/2
end

function Human:beginMove(dt)
	if self:canBeCaptured() then
		self:beginMove_unconscious(dt)
		return
	end

	local vx, vy = self.body:getLinearVelocity()
	if self.shooter and (not self.mover or (vx == 0 and vy == 0)) then
		local playerid = levity.map.properties.playerid
		local player = levity.map.objects[playerid]
		local playercx, playercy = player.body:getWorldCenter()
		local cx, cy = self.body:getWorldCenter()
		local playerdx, playerdy = playercx - cx, playercy - cy
		self:faceAngle(math.atan2(playerdy, playerdx))
	end
end

function Human:beginContact_PlayerShot(myfixture, otherfixture, contact)
	if self.cover:hasCover() then
		levity.scripts:send(self.id, "suppress")
	else
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

function Human:beginContact_PlayerBomb(myfixture, otherfixture, contact)
	local bulletproperties = otherfixture:getBody():getUserData().properties
	local damage = bulletproperties.damage or 1
	if self.health then
		self.health:addDPS(damage)
	end
	if damage > 0 and self:canBeCaptured() then
		self:pullToPlayer()
	end
end

function Human:beginContact_PlayerTeam(myfixture, otherfixture, contact)
	if self:canBeCaptured() then
		self.captured = true
		local captorid = otherfixture:getBody():getUserData().id

		if self.properties.convertible then
			local cx, cy = self.body:getWorldCenter()
			local gid = levity.map:getTileGid(
						self.object.tile.tileset, "up")
			local newwingmanid = ShmupWingman.create(levity.map, gid,
						cx, cy, captorid, self.id)

			levity.bank:play(Sounds.Convert)
			levity.bank:play(Sounds.FemaleCapture)
		else
			levity.bank:play(Sounds.MaleCapture)
			levity.scripts:broadcast("npcCaptured", self.id, captorid)
		end

		self:discard()
	else
		levity.scripts:send(self.id, "suppress")
	end
end

function Human:beginContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_PlayerTeam then
		self:beginContact_PlayerTeam(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_PlayerShot then
		self:beginContact_PlayerShot(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_PlayerBomb then
		self:beginContact_PlayerBomb(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_Camera then
		self.oncamera = true
	end
end

function Human:preSolve(myfixture, otherfixture, contact)
	contact:setEnabled(false)
end

function Human:endContact_PlayerBomb(myfixture, otherfixture, contact)
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

function Human:endContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_PlayerBomb then
		self:endContact_PlayerBomb(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_Camera then
		self.oncamera = false
	end
end

function Human:getKOGid()
	return levity.map:getTileGid(self.object.tile.tileset, "ko")
end

function Human:vehicleDestroyed(vehicleid)
	if self.properties.rideid == vehicleid then
		if self.properties.ridedestroyedko then
			self:defeat()
		end
		self.properties.rideid = nil
	end
end

function Human:defeat()
	self.object:setGid(self:getKOGid(), levity.map, true, "dynamic", true)

	local params = Human.DefeatSparkParams
	local x, y = self.body:getWorldCenter()
	ShmupBullet.create(params, x, y, 0, "sparks")

	levity.bank:play(Sounds.KO)
	levity.scripts:broadcast("npcKnockedOut", self.object.id)
	levity.scripts:broadcast("pointsScored", self.properties.score or 100)

	for _, fixture in ipairs(self.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setMask(unpack(Human.NonCombatantMask))
	end

	self:koLaunch()

	self.properties.pathid = nil
	self.properties.firebullet = nil

	self.mover = levity.scripts:destroyScript(self.mover, self.id)
	self.shooter = levity.scripts:destroyScript(self.shooter, self.id)
	self.health = levity.scripts:destroyScript(self.health, self.id)
	self.cover = levity.scripts:destroyScript(self.cover, self.id)
end

function Human:koLaunch()
	if self.properties.kolaunch then
		local vx = self.properties.kolaunchvelx or 0
		local vy = self.properties.kolaunchvely or Human.KOLaunchVelY
		self.body:setLinearVelocity(vx, vy)
		self.object:setLayer(levity.map.layers["playerteam"])
	else
		self.body:setLinearVelocity(0, 0)
	end
end

function Human:beginMove_unconscious(dt)
	local playerid = levity.map.properties.playerid
	local player = levity.map.objects[playerid]

	local playerdx, playerdy
	local playerdsq = math.huge

	if player then
		local cx, cy = self.body:getWorldCenter()
		local playercx, playercy = player.body:getWorldCenter()
		playerdx = playercx - cx
		playerdy = playercy - cy
		playerdsq = math.hypotsq(playerdx, playerdy)
	end

	if not self.pulledbyplayer then
		local capturepulldistsq

		if levity.scripts:call(playerid, "isFocused")
		and levity.scripts:call(playerid, "isPoweredUp")
		then
			capturepulldistsq = Human.EnhancedCapturePullDistSq
		else
			capturepulldistsq = Human.CapturePullDistSq
		end

		if playerdsq < capturepulldistsq
		and not levity.scripts:call(playerid, "isKilled") then
			self:pullToPlayer()
		end
	end

	if self.pulledbyplayer then
		local dist = math.sqrt(playerdsq)
		local pull = Human.CapturePullSpeed / dist
		self.body:setLinearVelocity(playerdx * pull, playerdy * pull)
	elseif self.properties.kolaunch then
		local vx, vy = self.body:getLinearVelocity()
		self.body:applyForce(-vx/64, self.body:getMass()*Human.KOGravity)
	end
end

function Human:pullToPlayer()
	self.object:setLayer(levity.map.layers["playerteam"])
	self.pulledbyplayer = true
end

function Human:playerKilled()
	if self.pulledbyplayer then
		self.properties.kolaunch = true
		self.pulledbyplayer = false
		self.body:setLinearVelocity(0, Human.KOLaunchVelY)
	end
end

function Human:endMove(dt)
	if self:canBeCaptured() then
		local x, y = self.body:getWorldCenter()
		local mapleft = 0
		local mapright = levity.map.width * levity.map.tilewidth

		local camera = levity.map.objects[levity.map.properties.cameraid]
		local cambottom = 0
		for _, fixture in ipairs(camera.body:getFixtureList()) do
			local _, _, _, b = fixture:getBoundingBox()
			cambottom = math.max(cambottom, b)
		end

		if y > cambottom or x < mapleft or x > mapright then
			self:die()
		end
	end
end

function Human:die()
	if self.properties.convertible then
		levity.bank:play(Sounds.FemaleDeath)
	else
		levity.bank:play(Sounds.MaleDeath)
	end
	levity.scripts:broadcast("npcDied", self.id)
	self:discard()
end

function Human:beginDraw()
	local red, green, blue, alpha = 0xff,0xff,0xff,0xff

	if self:canBeCaptured() then
		local flashrate = 15 * love.timer.getTime()
		local flash = 0x80 * (math.cos(flashrate*math.pi) + 3)

		red, green, blue = flash, flash, flash
		if self.properties.convertible then
			green = 0xff
		end
	end

	if self.cover and self.cover:hasCover() then
		alpha = alpha * .5
	end

	love.graphics.setColor(red, green, blue, alpha)
end

function Human:endDraw()
	love.graphics.setColor(0xff, 0xff, 0xff)
end

function Human:discard()
	local rideid = self.properties.rideid
	if rideid and rideid > 0 then
		levity.scripts:send(rideid, "removeRider", self.id)
	end
	levity:discardObject(self.id)
end

function Human.releaseCaptives(captivegids, maxcaptives, x, y, layer)
	local i0 = 1 + #captivegids
		- math.min(#captivegids,
			math.min(maxcaptives, Human.MaxReleasedCaptives))

	for i = #captivegids, i0, -1 do
		local kolaunchvelx = love.math.random(-16, 16)
		local kolaunchvely = love.math.random(Human.ReleaseLaunchVelY,
						Human.ReleaseLaunchVelY - 64)
		local captive = {
			gid = captivegids[i],
			x = x,
			y = y,
			properties = {
				script = "Human",
				ko = true,
				kolaunch = true,
				kolaunchvelx = kolaunchvelx,
				kolaunchvely = kolaunchvely,
				capturepoints = 0
			}
		}
		layer:addObject(captive)
		captivegids[i] = nil
	end
end

return Human
