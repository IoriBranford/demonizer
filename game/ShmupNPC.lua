local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupWingman = levity.machine:requireScript("ShmupWingman")

local Sounds = {
	Hit = "hit.wav",
	KO = "knockout.wav",
	FemaleCapture = "item1.wav",
	MaleCapture = "item2.wav",
	Convert = "warp.wav",
	FemaleDeath = "shriek.wav",
	MaleDeath = "mmph.wav",
	BossWarning = "alarm4.wav",
}
levity.bank:load(Sounds)

--- Convert function call string into table
-- @param self object whose member function to call
-- @param callstring in the form "function,arg1,arg2,..."
-- @return Array in the form { function, self, arg1, arg2, ... }
local function parseMemberFunctionCall(self, callstring)
	local func = string.match(callstring, "(%w+),?")
	local call = nil
	if func and type(self[func]) == "function" then
		call = { self[func], self }

		local argstring = string.sub(callstring, #func + 1)
		for arg in argstring:gmatch(",%s-([%w%.]+)") do
			if arg == "true" then
				table.insert(call, true)
			elseif arg == "false" then
				table.insert(call, false)
			elseif tonumber(arg) then
				table.insert(call, tonumber(arg))
			else
				table.insert(call, arg)
			end
		end

		setmetatable(call, {
			__call = function(t)
				return t[1](unpack(t, 2))
			end
		})
	end

	return call
end

local CombatantMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_NPCTeam,
	ShmupCollision.Category_NPCShot
}

local NonCombatantMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_NPCTeam,
	ShmupCollision.Category_NPCShot
}

local ShmupNPC = class(function(self, id)
	self.object = levity.map.objects[id]
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self:setActive(self.properties.unconscious == true)

	local mask
	self.npctype = levity:getTileColumnName(self.object.gid)
	if string.find(self.npctype, "civ") == 1 then
		self.health = 0
		mask = NonCombatantMask
	else
		self.health = 32
		mask = CombatantMask
	end

	local tileset = levity:getMapTileset(self.object.tile.tileset)
	self.female = string.find(tileset.name, "women") ~= nil

	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_NPCTeam)
		fixture:setMask(unpack(mask))
	end

	self.unconscious = false
	self.pulledbyplayer = false
	self.captured = false

	self.pathwalker = nil

	self.oncamera = false
	self.incover = false

	self.bleedouttimer = 0

	local onActivate = self.properties.onActivate
	if onActivate then
		self.onActivate = parseMemberFunctionCall(self, onActivate)
	end
	local onKO = self.properties.onKO
	if onKO then
		self.onKO = parseMemberFunctionCall(self, onKO)
	end
	local onDiscard = self.properties.onDiscard
	if onDiscard then
		self.onDiscard = parseMemberFunctionCall(self, onDiscard)
	end

	if self.properties.unconscious then
		self:knockout()
	end
end)

ShmupNPC.BleedOutTime = 8
ShmupNPC.CapturePullSpeed = 4*60
ShmupNPC.CapturePullDistSq = 30*30
ShmupNPC.EnhancedCapturePullDistSq = 120*120
ShmupNPC.ShotLayer = nil -- ShmupMap, set me once it's created
ShmupNPC.KnockoutLaunchVelY = -150
ShmupNPC.KnockoutGravity = 200
ShmupNPC.ReleaseLaunchVelY = -250

function ShmupNPC:activate()
	self.ready = true
end

function ShmupNPC:setActive(active)
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

function ShmupNPC:suppress()
	levity.machine:broadcast("npcSuppressed", self.object.id)
end

function ShmupNPC:canBeLockTarget()
	return self.oncamera
		and self.object.visible
		and self.health >= 1
		and not self.incover
end

function ShmupNPC:canBeCaptured()
	return self.health < 1 and not self.captured
end

function ShmupNPC:getKOGid()
	return levity:getTileGid(self.object.tile.tileset,
					"ko", self.npctype)
end

function ShmupNPC:isFemale()
	return self.female
end

function ShmupNPC:knockout()
	if self.unconscious then
		return
	end

	self.health = 0
	self.unconscious = true
	self.pathwalker = nil
	levity:setObjectGid(self.object, self:getKOGid())

	self:setInCover(false)
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setMask(unpack(NonCombatantMask))
	end

	self.bleedouttimer = ShmupNPC.BleedOutTime

	if self.onKO then
		self.onKO()
	end

	if self.properties.kolaunch then
		local vx = self.properties.kolaunchvelx or 0
		local vy = self.properties.kolaunchvely
			or ShmupNPC.KnockoutLaunchVelY
		self.object.body:setLinearVelocity(vx, vy)
	end
end

function ShmupNPC:beginContact_PlayerShot(myfixture, otherfixture, contact)
	if self.incover then
		self:suppress()
	else
		local bulletproperties = otherfixture:getBody():getUserData().properties
		local damage = bulletproperties.damage or 1

		self:dealDamage(damage)
	end
end

function ShmupNPC:beginContact_PlayerBomb(myfixture, otherfixture, contact)
	if self.health >= 1 then
		local bulletproperties = otherfixture:getBody():getUserData().properties
		local damage = bulletproperties.damage or 1

		self:dealDamage(damage)
	end

	if self:canBeCaptured() then
		self.pulledbyplayer = true
	end
end

function ShmupNPC:dealDamage(damage)
	if self.health >= 1 then
		self.health = self.health - damage
		if self.health < 1 then
			self:knockout()
			levity.bank:play(Sounds.KO)
			levity.machine:broadcast("npcKnockedOut", self.object.id)
			levity.machine:broadcast("pointsScored",
						self.properties.killpoints or 100)
		else
			levity.bank:play(Sounds.Hit)
		end
	end
end

function ShmupNPC:beginContact_PlayerTeam(myfixture, otherfixture, contact)
	if self.health >= 1 then
		self:suppress()
	else
		self:capture(otherfixture:getBody():getUserData().id)
	end
end

function ShmupNPC:beginContact(myfixture, otherfixture, contact)
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

function ShmupNPC:endContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_Camera then
		self.oncamera = false
	end
end

function ShmupNPC:setInCover(incover)
	self.incover = incover

	local category
	if incover then
		category = ShmupCollision.Category_NPCInCover
	else
		category = ShmupCollision.Category_NPCTeam
	end

	local fixtures = self.object.body:getFixtureList()
	for _, fixture in ipairs(fixtures) do
		fixture:setCategory(category)
	end
end

function ShmupNPC:capture(captorid)
	if self.captured then
		return
	end

	self.captured = true

	if self.female then
		local newwingmanid = ShmupWingman.create(
				levity:getTileGid(self.object.tile.tileset,
							"up", self.npctype),
				self.object.x, self.object.y, true)

		levity.bank:play(Sounds.Convert)
		levity.bank:play(Sounds.FemaleCapture)
	else
		levity.bank:play(Sounds.MaleCapture)
		levity.machine:broadcast("npcCaptured", self.object.id, captorid)
	end

	self:discard()
end

function ShmupNPC:die()
	if self.female then
		levity.bank:play(Sounds.FemaleDeath)
	else
		levity.bank:play(Sounds.MaleDeath)
	end
	levity.machine:broadcast("npcDied", self.object.id)
	self:discard()
end

function ShmupNPC:discard()
	levity:discardObject(self.object.id)
	if self.onDiscard then
		self.onDiscard()
	end
end

function ShmupNPC:beginMove(dt)
	if self.ready == true then
		self:setActive(true)
		if self.onActivate then
			self.onActivate()
		end
	end

	if not self.object.body:isActive() then
		return
	end

	local body = self.object.body
	local vx0, vy0 = body:getLinearVelocity()
	local vx1, vy1 = 0, 0

	local vehicleid = self.properties.vehicleid

	local cx, cy = body:getWorldCenter()
	local playerid = levity.map.properties.playerid
	local player = levity.map.objects[playerid]

	local playerdx, playerdy
	local playerdsq = math.huge

	if player then
		local playercx, playercy = player.body:getWorldCenter()
		playerdx = playercx - cx
		playerdy = playercy - cy
		playerdsq = math.hypotsq(playerdx, playerdy)
	end

	local capturepulldistsq
	local scoreid = levity.machine:call("hud", "getScoreId")

	local canbecaptured = self:canBeCaptured()

	if canbecaptured
	and levity.machine:call(playerid, "isFocused")
	and levity.machine:call(scoreid, "isMaxMultiplier", playerid)
	then
		capturepulldistsq = ShmupNPC.EnhancedCapturePullDistSq
	else
		capturepulldistsq = ShmupNPC.CapturePullDistSq
	end

	self.pulledbyplayer = self.pulledbyplayer or
		(canbecaptured and playerdsq < capturepulldistsq
		and not levity.machine:call(playerid, "isKilled"))

	if not self.pathwalker then
		local pathid = self.properties.pathid
		self.pathwalker = levity.machine:call(pathid, "newWalker",
						self.properties.pathtime)
		if self.pathwalker then
			self.pathwalker:findStartPoint(body:getWorldCenter())
		end
	end

	if self.pulledbyplayer then
		local dist = math.sqrt(playerdsq)
		local pull = ShmupNPC.CapturePullSpeed / dist
		body:setLinearVelocity(playerdx * pull, playerdy * pull)
	elseif self.unconscious then
		if self.properties.kolaunch then
			body:applyForce(0, body:getMass() * ShmupNPC.KnockoutGravity)
		else
			body:setLinearVelocity(0, 0)
		end
	elseif vehicleid then
		local vehicle = levity.map.objects[vehicleid]
		if vehicle then
			body:setLinearVelocity(vehicle.body:getLinearVelocity())
		else
			body:setLinearVelocity(0, 0)
		end
	elseif self.pathwalker then
		body:setLinearVelocity(self.pathwalker:walk(dt, body:getX(), body:getY()))
	end
end

function ShmupNPC:endMove(dt)
	if self.bleedouttimer > 0 then
		local x, y = self.object.body:getWorldCenter()
		local mapleft = 0
		local mapright = levity.map.width * levity.map.tilewidth

		local camera = levity.map.objects[levity.map.properties.cameraid]
		local cambottom = 0
		for _, fixture in ipairs(camera.body:getFixtureList()) do
			local _, _, _, b = fixture:getBoundingBox()
			cambottom = math.max(cambottom, b)
		end

		if self.oncamera then
			self.bleedouttimer = self.bleedouttimer - dt
		end

		if self.bleedouttimer <= 0 or y > cambottom
		or x < mapleft or x > mapright then
			self:die()
		end
	end
end

function ShmupNPC:beginDraw()
	local red, green, blue, alpha = 0xff,0xff,0xff,0xff

	if self.bleedouttimer > 0 then
		local flashrate = 60 * math.sqrt(self.bleedouttimer)
		local flash = 0x80 * (math.cos(flashrate*math.pi) + 3)

		red, green, blue = flash, flash, flash
		if self.female then
			green = 0xff
		end

		alpha = math.min(self.bleedouttimer * 0xff, 0xff)
	end

	if self.incover then
		alpha = alpha * .5
	end

	love.graphics.setColor(red, green, blue, alpha)
end

function ShmupNPC:endDraw()
	love.graphics.setColor(0xff, 0xff, 0xff)
end

function ShmupNPC:unpauseCamera()
	local cameraid = levity.map.properties.cameraid
	if cameraid then
		levity.machine:call(cameraid, "pausePath", false)
	end
end

function ShmupNPC:playSound(sound)
	sound = Sounds[sound]
	if sound then
		levity.bank:play(sound)
	end
end

function ShmupNPC:playerVictory()
	levity.machine:broadcast("playerVictorious")
end

function ShmupNPC:vehicleDestroyed(vehicleid)
	if self.properties.vehicleid == vehicleid then
		self:knockout()
		levity.machine:broadcast("npcKnockedOut", self.object.id)
	end
end

function ShmupNPC:playerKilled()
	if self.pulledbyplayer then
		self.properties.kolaunch = true
		self.pulledbyplayer = false
		self.object.body:setLinearVelocity(0, ShmupNPC.KnockoutLaunchVelY)
	end
end

function ShmupNPC.releaseCaptives(captivegids, x, y, layer)
	for i = 1, #captivegids do
		local kolaunchvelx = love.math.random(-16, 16)
		local kolaunchvely = love.math.random(ShmupNPC.ReleaseLaunchVelY,
						ShmupNPC.ReleaseLaunchVelY - 64)
		local captive = {
			gid = captivegids[i],
			x = x,
			y = y,
			properties = {
				script = "ShmupNPC",
				unconscious = true,
				kolaunch = true,
				kolaunchvelx = kolaunchvelx,
				kolaunchvely = kolaunchvely,
			}
		}
		layer:addObject(captive)
	end
end

return ShmupNPC
