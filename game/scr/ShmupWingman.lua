local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local Targeting = require "Targeting"
local ShmupPlayer = require("ShmupPlayer")
local ShmupBullet = require("ShmupBullet")
local ShmupNPC -- delayed require to avoid circular dependency

local ShmupWingman
ShmupWingman = class(function(self, id)
	self.object = levity.map.objects[id]
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)
	self.firetimer = 0

	local playerid = levity.map.properties.playerid
	self.wingmanindex = levity.machine:call(playerid, "newWingmanIndex", id)

	self:refreshFixtures()
	self:setVulnerable(true)
	self:setCaptureEnabled(self.properties.conversionid == nil)

	self.converttimer = 0
	self.npctype = levity:getTileColumnName(self.object.gid)
	self.oncamera = false

	self.locktargetid = nil
	self.targetcaptiveid = nil
	self.health = 8

	self.captivegids = {}
	self.numcaptives = 0

	ShmupNPC = ShmupNPC or require("ShmupNPC")

	levity.machine:broadcast("wingmanJoined", self.wingmanindex)
end)

local Sounds = {
	Lock = "snd/targetlock.wav",
	Cut = "snd/slash.wav",
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
ShmupWingman.MaxHealth = 8
ShmupWingman.BulletParams = {
	speed = ShmupPlayer.BulletParams.speed,
	gid = levity:getTileGid("demonshots", "wingman", 0),
	category = ShmupCollision.Category_PlayerShot
}
ShmupWingman.ConversionOffset = 1/64 --to ensure correct draw order for conversion vfx
ShmupWingman.ConvertTime = 1
--ShmupWingman.ConvertShake = 4
ShmupWingman.ConvertDist = 16
ShmupWingman.LockSearchWidth = 120
ShmupWingman.LockSearchHeight = 160
ShmupWingman.UnfocusedHealRate = 1

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
	local cx, cy = self.object.body:getWorldCenter()
	ShmupNPC.releaseCaptives(self.captivegids, cx, cy, self.object.layer)

	for i = #self.captivegids, 1, -1 do
		self.captivegids[i] = nil
	end
	self.numcaptives = 0

	levity:discardObject(self.object.id)
	if self.properties.conversionid then
		levity:discardObject(self.properties.conversionid)
	end

	levity.bank:play(Sounds.Death)
	levity.machine:broadcast("wingmanKilled", self.object.id)
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

function ShmupWingman:wingmanKilled(wingmanid)
	local wingmanindex = levity.machine:call(wingmanid, "getWingmanIndex")
	if self.wingmanindex > wingmanindex then
		self.wingmanindex = self.wingmanindex - 1
		if ShmupPlayer.isActiveWingmanIndex(self.wingmanindex) then
			self:setCaptureEnabled(true)
		end
	end
end

function ShmupWingman:getWingmanIndex()
	return self.wingmanindex
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

	if category == ShmupCollision.Category_NPCTeam then
		local captiveid = otherfixture:getBody():getUserData().id
		if levity.machine:call(captiveid, "isFemale") then
			self.targetcaptiveid = captiveid
		elseif levity.machine:call(captiveid, "canBeCaptured") then
			local captivegid = levity.machine:call(captiveid, "getKOGid")
			local i = (self.numcaptives % ShmupPlayer.CaptivesReleasedOnKill) + 1
			self.captivegids[i] = captivegid
			self.numcaptives = self.numcaptives + 1
		end
	elseif category == ShmupCollision.Category_NPCShot then
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

function ShmupWingman:playerRespawned()
	if ShmupPlayer.isActiveWingmanIndex(self.wingmanindex) then
		self:setCaptureEnabled(true)
	end
end

function ShmupWingman:updateConversion(dt)
	self.converttimer = self.converttimer + dt
	if self.converttimer >= ShmupWingman.ConvertTime then
		levity:discardObject(self.properties.conversionid)
		self.properties.conversionid = nil
		self.properties.captorid = nil
		self.converttimer = nil

		local gid = levity:getTileGid("demonwomen", self.npctype, 0)
		levity:setObjectGid(self.object, gid)
		self:refreshFixtures()
		self:setCaptureEnabled(ShmupPlayer.isActiveWingmanIndex(self.wingmanindex))
	end
end

function ShmupWingman:updateFiring(dt)
	if self.firetimer <= 0 then
		local angle = math.pi*1.5
		local cx, cy = self.object.body:getWorldCenter()
		local playerid = levity.map.properties.playerid

		local locktargetid
		if levity.machine:call(playerid, "isFocused") then
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
		params.x = cx + 8*math.cos(angle)
		params.y = cy + 8*math.sin(angle)
		params.angle = angle
		self.firetimer = ShmupBullet.fireOverTime(params,
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

	return Targeting.queryRectangle(canbetargetfunc, x0, y0, x1, y1)
end

function ShmupWingman:beginMove(dt)
	local body = self.object.body

	local playerid = levity.map.properties.playerid

	local cx, cy = body:getWorldCenter()
	local destx, desty = cx, cy
	local captive

	local scoreid = levity.machine:call("hud", "getScoreId")
	local focused = levity.machine:call(playerid, "isFocused")
	if focused then
		if not self.properties.conversionid
		then--and levity.machine:call(scoreid, "isMaxMultiplier", self.object.id) then
			if not self.targetcaptiveid then
				self.targetcaptiveid = self:findTarget("canBeCaptured")
			end
		end
	else
		self:heal(ShmupWingman.UnfocusedHealRate * dt)

		if not levity.machine:call(self.targetcaptiveid, "isFemale") then
			self.targetcaptiveid = nil
		end
	end

	if self.targetcaptiveid then
		captive = levity.map.objects[self.targetcaptiveid]
	end

	if captive then
		destx, desty = captive.body:getWorldCenter()
		if captive.properties.script == "ShmupWingman" then
			if not captive.properties.conversionid
			or captive.properties.captorid ~= self.object.id then
				self.targetcaptiveid = nil
			else
				local captiveconverttimer =
					levity.machine:call(self.targetcaptiveid,
						"getConvertTimer") or 0

				desty = desty
					+ ShmupWingman.ConvertDist
						* (.5 + captiveconverttimer)
				--	ShmupWingman.ConvertShake
				--		* math.sin(captiveconverttimer * 60)
			end
		end
	elseif self.properties.conversionid then
		if playerid == self.properties.captorid then
			local player = levity.map.objects[playerid]
			destx, desty = player.body:getWorldCenter()
			desty = desty - ShmupWingman.ConvertDist
		end
	elseif ShmupPlayer.isActiveWingmanIndex(self.wingmanindex) then
		destx, desty = levity.machine:call(playerid, "getWingmanPosition",
						self.wingmanindex)
		self.targetcaptiveid = nil

		--if self.properties.conversionid then
		--	desty = desty + ShmupWingman.ConvertShake--*self.converttimer
		--		*math.sin(self.converttimer * 60)
		--end
	else
		destx, desty = self.object.body:getWorldCenter()
		--if self.properties.conversionid then
		--	desty = desty + ShmupWingman.ConvertShake--*self.converttimer
		--		*math.sin(self.converttimer * 60)
		--else
			desty = desty + ShmupWingman.Speed
		--end
	end

	self:setVulnerable(self.targetcaptiveid ~= nil)

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

	if self.properties.conversionid then
		self:updateConversion(dt)
	elseif self.oncamera then
		if levity.machine:call(playerid, "isFiring") then
			self:updateFiring(dt)
		else
			self.firetimer = 0
		end
	end
end

function ShmupWingman:endMove(dt)
	if self.properties.conversionid then
		local x, y = self.object.body:getPosition()
		local conversion = levity.map.objects[self.properties.conversionid]
		if conversion then
			conversion.body:setPosition(x, y +
				ShmupWingman.ConversionOffset)
		end
	elseif not self.oncamera then
		if not ShmupPlayer.isActiveWingmanIndex(self.wingmanindex) then
			levity.machine:broadcast("wingmanReserved",
						self.object.id, self.object.gid)
			levity:discardObject(self.object.id)
			if self.properties.conversionid then
				levity:discardObject(self.properties.conversionid)
			end
		end
	end
end

function ShmupWingman:beginDraw()
	if self.properties.conversionid then
		local flashrate = 30 * self.converttimer
		local flash = 0x80 * (math.cos(flashrate*math.pi) + 3)

		love.graphics.setColor(flash, 0xff, flash)
	elseif not self.targetcaptiveid then
		love.graphics.setColor(0xff, 0xff, 0xff, 0xc0)
	else
		local playerid = levity.map.properties.playerid
		local focused = levity.machine:call(playerid, "isFocused")
		local healthpercent = self.health / ShmupWingman.MaxHealth

		local wound = 0xff * healthpercent
		if not focused and healthpercent < 1 then
			love.graphics.setColor(wound, 0xff, wound)
		else
			love.graphics.setColor(0xff, wound, wound)
		end
	end

	--local scoreid = levity.machine:call("hud", "getScoreId")
	--if scoreid then
	--	self.properties.text = levity.machine:call(scoreid,
	--				"getMultiplier", self.object.id)
	--else
	--	self.properties.text = nil
	--end
	--self.properties.textfont = "fnt/pressstart2p.fnt"
end

function ShmupWingman:endDraw()
	love.graphics.setColor(0xff, 0xff, 0xff)
end

function ShmupWingman:playerVictorious()
	self:setVulnerable(false)
end

function ShmupWingman.create(gid, x, y, captorid, captiveid)
	local playerid = levity.map.properties.playerid
	local player = levity.map.objects[playerid]

	local conversionid = nil
	if captorid then
		conversionid = levity:newObjectId()

		local conversion = {
			id = conversionid,
			gid = levity:getTileGid("demonizing", 0, 0),
			x = x,
			y = y + ShmupWingman.ConversionOffset
		}

		player.layer:addObject(conversion)
	end

	local wingman = levity.map.objects[captiveid]
			or { id = levity:newObjectId() }

	wingman.gid = gid
	wingman.x = x
	wingman.y = y
	wingman.properties = {
		conversionid = conversionid,
		script = "ShmupWingman",
		captorid = captorid
	}

	player.layer:addObject(wingman)

	return wingman.id
end

return ShmupWingman
