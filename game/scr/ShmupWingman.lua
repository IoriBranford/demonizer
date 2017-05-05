local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local Targeting = require "Targeting"
local ShmupPlayer = require("ShmupPlayer")
local ShmupBullet = require("ShmupBullet")
local ShmupNPC -- delayed require to avoid circular dependency

local ShmupWingman
ShmupWingman = class(function(self, object)
	self.object = object
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)
	self.firetimer = 0

	self:refreshFixtures()
	self:setVulnerable(true)
	self:setCaptureEnabled(self.properties.conversionid == nil)

	self.converttimer = 0
	self.npctype = levity.map:getTileColumnName(self.object.gid)
	self.oncamera = false

	self.locktargetid = nil
	self.targetcaptiveid = nil
	self.health = 5
	self.poweredup = self.properties.poweredup or false

	levity.map:broadcast("wingmanJoined", self.object.id)

	ShmupNPC = ShmupNPC or require("ShmupNPC")
end)

local Sounds = {
	Lock = "snd/targetlock.wav",
	Cut = "snd/slash.wav",
	Maxed = "snd/maxed.wav",
	Powerup = "snd/powerup.wav",
	--Ouch = "snd/ow.wav",
	Death = "snd/shriek.wav"
}
levity.bank:load(Sounds)

ShmupWingman.BaseMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb
}

ShmupWingman.Speed = 320
ShmupWingman.SpeedSq = ShmupWingman.Speed * ShmupWingman.Speed
ShmupWingman.MaxHealth = 5
ShmupWingman.BulletParams = {
	tileset = "demonshots",
	tileid = "wingman",
	speed = ShmupPlayer.BulletParams.speed,
	category = ShmupCollision.Category_PlayerShot
}
ShmupWingman.ConversionOffset = 1/64 --to ensure correct draw order for conversion vfx
ShmupWingman.ConvertTime = 1
--ShmupWingman.ConvertShake = 4
ShmupWingman.ConvertDist = 16
ShmupWingman.LockSearchWidth = 120
ShmupWingman.LockSearchHeight = 160
ShmupWingman.UnfocusedHealRate = 1
ShmupWingman.ExplosionParams = {
	tileset = "sparks_med",
	tileid = "wingmanexplosion",
	lifetime = "animation"
}

function ShmupWingman:isConverting()
	return self.properties.conversionid ~= nil
end

function ShmupWingman:isPoweredUp()
	return self.poweredup
end

function ShmupWingman:refreshFixtures()
	for _, fixture in pairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_PlayerTeam)
		fixture:setMask(ShmupWingman.BaseMask)
	end
end

function ShmupWingman:setVulnerable(vulnerable)
	for _, fixture in pairs(self.object.body:getFixtureList()) do
		ShmupCollision.setFixtureMask(fixture,
			ShmupCollision.Category_NPCShot, vulnerable)
	end
end

function ShmupWingman:setCaptureEnabled(enabled)
	for _, fixture in pairs(self.object.body:getFixtureList()) do
		ShmupCollision.setFixtureMask(fixture,
			ShmupCollision.Category_NPCTeam, enabled)
	end
end

function ShmupWingman:kill()
	levity.map:discardObject(self.object.id)
	if self.properties.conversionid then
		levity.map:discardObject(self.properties.conversionid)
	end

	levity.bank:play(Sounds.Death)
	levity.map:broadcast("wingmanKilled", self.object.id)

	local params = ShmupWingman.ExplosionParams
	local x, y = self.object.body:getWorldCenter()
	ShmupBullet.create(params, x, y, 0, "sparks")
end

function ShmupWingman:heal(healing)
	self.health = math.min(self.health + healing, ShmupWingman.MaxHealth)
end

function ShmupWingman:npcCaptured(npcid)
	local healing = 1
	local npc = levity.map.objects[npcid]
	if npc then
		healing = npc.properties.maxhealth or 1
	end

	self:heal(healing)

	if self.targetcaptiveid == npcid then
		self.targetcaptiveid = nil
	end
end

function ShmupWingman:wingmanReserved(wingmanid, wingmangid)
	self:wingmanKilled(wingmanid)
end

function ShmupWingman:getConvertTimer()
	return self.converttimer
end

function ShmupWingman:beginContact(myfixture, otherfixture, contact)
	local otherdata = otherfixture:getBody():getUserData()
	if not otherdata or not otherdata.properties then
		return
	end
	local otherproperties = otherdata.properties
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_NPCShot then
		if self.health >= 1 then
			local damage = otherproperties.damage or 1
			self.health = self.health - damage
			if self.health < 1 then
				self:kill()
			end
			levity.bank:play(Sounds.Cut);
		end
	elseif category == ShmupCollision.Category_Camera then
		self.oncamera = true
	end
end

function ShmupWingman:endContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_Camera then
		self.oncamera = false
	end
end

function ShmupWingman:playerKilled()
	self:setCaptureEnabled(false)
end

function ShmupWingman:updateConversion(dt)
	self.converttimer = self.converttimer + dt
	if self.converttimer >= ShmupWingman.ConvertTime then
		levity.map:discardObject(self.properties.conversionid)
		self.properties.conversionid = nil
		self.properties.captorid = nil
		self.converttimer = nil

		local gid = levity.map:getTileGid("demonwomen", self.npctype, 0)
		self.object:setGid(gid, levity.map)
		self:refreshFixtures()
		self:setCaptureEnabled(levity.map.scripts:call("playerteam", "isWingmanActive", self.object.id))
	end
end

function ShmupWingman:updateFiring(dt)
	if self.firetimer < dt then
		local angle = math.pi*1.5
		local cx, cy = self.object.body:getWorldCenter()
		local playerid = levity.map.properties.playerid

		local locktargetid
		if levity.map.scripts:call(playerid, "isFocused") then
			locktargetid = self:findTarget("canBeLockTarget")
		end

		if locktargetid then
			if self.locktargetid ~= locktargetid then
				levity.bank:play(Sounds.Lock)
			end
			self.locktargetid = locktargetid
			local targetbody = levity.map.objects[locktargetid].body
			local tx, ty = targetbody:getWorldCenter()
			angle = math.atan2(ty-cy, tx-cx)
		else
			local player = levity.map.objects[playerid]
			local playercx, playercy = player.body:getWorldCenter()
			angle = angle +
				math.atan2(cx - playercx, playercy - cy) * .0625
		end

		local params = ShmupWingman.BulletParams
		local x = cx + 8*math.cos(angle)
		local y = cy + 8*math.sin(angle)
		self.firetimer = ShmupBullet.fireOverTime(params, x, y, angle,
						self.object.layer, self.firetimer,
						ShmupPlayer.BulletInterval)
	end
	self.firetimer = self.firetimer - dt
end

function ShmupWingman:findTarget(canbetargetfunc)
	local playerid = levity.map.properties.playerid
	local player = levity.map.objects[playerid]
	local playercx, playercy = player.body:getWorldCenter()
	local cx, cy = self.object.body:getWorldCenter()
	local dx, dy = cx - playercx, cy - playercy

	local x0 = dx + cx - ShmupWingman.LockSearchWidth
	local x1 = dx + cx + ShmupWingman.LockSearchWidth
	local y0 = dy + cy - ShmupWingman.LockSearchHeight
	local y1 = dy + cy + ShmupWingman.LockSearchHeight

	return Targeting.queryRectangle(levity.map,
					canbetargetfunc, x0, y0, x1, y1)
end

function ShmupWingman:beginMove(dt)
	local body = self.object.body

	local playerid = levity.map.properties.playerid

	local cx, cy = body:getWorldCenter()
	local destx, desty = cx, cy
	local captive

	local uimap = levity.map.overlaymap
	local scoreid
	if uimap then
		scoreid = uimap.scripts:call("status", "getScoreId")
	end
	local focused = levity.map.scripts:call(playerid, "isFocused")
	if focused then
		if not self:isConverting() and self.poweredup then
			if not self.targetcaptiveid then
				self.targetcaptiveid = self:findTarget("canBeCaptured")
			end
		end
	else
		self:heal(ShmupWingman.UnfocusedHealRate * dt)

		if levity.map.scripts:call(self.targetcaptiveid, "isFemale") == false then
			self.targetcaptiveid = nil
		end
	end

	if self.targetcaptiveid then
		captive = levity.map.objects[self.targetcaptiveid]
	end

	if captive then
		destx, desty = captive.body:getWorldCenter()
		--if captive.properties.script == "ShmupWingman" then
		--	if not captive.properties.conversionid
		--	or captive.properties.captorid ~= self.object.id then
		--		self.targetcaptiveid = nil
		--	else
		--		destx, desty = self.object.body:getWorldCenter()
                --
		--		local camvx, camvy = levity.map.scripts:call(
		--			levity.map.properties.cameraid,
		--			"getVelocity")
                --
		--		if camvy then
		--			desty = desty + camvy*dt
		--		end
		--	end
		--end
	elseif self:isConverting() then
		local captorid = self.properties.captorid
		if captorid then
			local captor = levity.map.objects[captorid]
			if captor then
				destx, desty = captor.body:getWorldCenter()
				local conversionpct = self.converttimer
						/ ShmupWingman.ConvertTime
				desty = desty - ShmupWingman.ConvertDist*(1+conversionpct)
			end
		end
	else
		destx, desty = levity.map.scripts:call("playerteam",
				"getWingmanPosition", self.object.id)
		self.targetcaptiveid = nil
	end

	self:setVulnerable(not self:isConverting() and self.targetcaptiveid
		and not levity.map.scripts:call(self.targetcaptiveid, "is_a",
						ShmupWingman))

	local dx, dy = destx - cx, desty - cy
	local distsq = math.hypotsq(dx, dy)
	local vx1, vy1
	if distsq < ShmupWingman.SpeedSq * dt * dt then
		vx1 = dx / dt
		vy1 = dy / dt
	else
		local speed = ShmupWingman.Speed / math.sqrt(distsq)
		vx1 = dx * speed
		vy1 = dy * speed
	end

	body:setLinearVelocity(vx1, vy1)

	if self:isConverting() then
		self:updateConversion(dt)
	elseif self.oncamera then
		if levity.map.scripts:call(playerid, "isFiring") then
			self:updateFiring(dt)
		else
			self.firetimer = 0
		end
	end
end

function ShmupWingman:endMove(dt)
	local uimap = levity.map.overlaymap
	local scoreid
	if uimap then
		scoreid = uimap.scripts:call("status", "getScoreId")
	end
	if scoreid and not self.poweredup then
		self.poweredup = uimap.scripts:call(scoreid, "isMaxMultiplier",
							self.object.id)
		if self.poweredup then
			levity.bank:play(Sounds.Maxed)
			levity.bank:play(Sounds.Powerup)
		end
	end

	if self:isConverting() then
		local x, y = self.object.body:getPosition()
		local conversion = levity.map.objects[self.properties.conversionid]
		if conversion then
			conversion.body:setPosition(x, y +
				ShmupWingman.ConversionOffset)
		end
	elseif not self.oncamera then
		if not levity.map.scripts:call("playerteam", "isWingmanActive", self.object.id) then
			levity.map:broadcast("wingmanReserved",
						self.object.id, self.object.gid)
			levity.map:discardObject(self.object.id)
			if self.properties.conversionid then
				levity.map:discardObject(self.properties.conversionid)
			end
		end
	end
end

function ShmupWingman:beginDraw()
	if self:isConverting() then
		local flashrate = 30 * self.converttimer
		local flash = 0x80 * (math.cos(flashrate*math.pi) + 3)

		love.graphics.setColor(flash, 0xff, flash)
	elseif not self.targetcaptiveid then
		love.graphics.setColor(0xff, 0xff, 0xff, 0xc0)
	else
		local playerid = levity.map.properties.playerid
		local focused = levity.map.scripts:call(playerid, "isFocused")
		local healthpercent = self.health / ShmupWingman.MaxHealth

		local wound = 0xff * healthpercent
		if not focused and healthpercent < 1 then
			love.graphics.setColor(wound, 0xff, wound)
		else
			love.graphics.setColor(0xff, wound, wound)
		end
	end

	local uimap = levity.map.overlaymap
	local scoreid
	if uimap then
		scoreid = uimap.scripts:call("status", "getScoreId")
	end
	if scoreid then
		self.properties.text = uimap.scripts:call(scoreid,
					"getMultiplier", self.object.id)
		if self.properties.text and self.poweredup then
			self.properties.text = self.properties.text..'\nP'
		end
	else
		self.properties.text = nil
	end
	self.properties.textfont = "fnt/pressstart2p.fnt"
end

function ShmupWingman:endDraw()
	love.graphics.setColor(0xff, 0xff, 0xff)
end

function ShmupWingman:playerWon()
	self:setVulnerable(false)
end

function ShmupWingman:getNextMapData()
	return {
		tilename = levity.map:tileGidsToNames({self.object.gid}),
		poweredup = self.poweredup
	}
end

function ShmupWingman.create(map, gid, x, y, captorid, captiveid,
				nextmapdata)
	local playerid = map.properties.playerid
	local player = map.objects[playerid]

	local conversionid = nil
	if captorid then
		conversionid = map:newObjectId()

		local conversion = {
			id = conversionid,
			gid = map:getTileGid("demonizing", 0, 0),
			x = x,
			y = y + ShmupWingman.ConversionOffset
		}

		player.layer:addObject(conversion)
	end

	local wingman = --map.objects[captiveid] or
			{ id = map:newObjectId() }

	wingman.properties = {
		conversionid = conversionid,
		script = "ShmupWingman",
		captorid = captorid,
	}

	if nextmapdata then
		gid = levity.map:tileNamesToGids(nextmapdata.tilename)[1]
		wingman.properties.poweredup = nextmapdata.poweredup
	end

	wingman.gid = gid
	wingman.x = x
	wingman.y = y

	player.layer:addObject(wingman)

	return wingman.id
end

return ShmupWingman
