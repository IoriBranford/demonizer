local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local Targeting = require "Targeting"
local ShmupPlayer = require("ShmupPlayer")
local ShmupBullet = require("ShmupBullet")
require "TargetLock"

local ShmupWingman = class()
function ShmupWingman:_init(object)
	self.object = object
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)
	self.firetimer = 0
	self.bombmeleetimer = nil

	self:refreshFixtures()
	self:setEnemyShotCollision(true)
	self:setCaptureEnabled(not self:isConverting())

	self.converttimer = self:isConverting() and 0 or nil

	self.oncamera = false

	self.targetlock = levity.scripts:newScript(object.id, "TargetLock", object)
	self.targetcaptiveid = nil
	self.health = ShmupWingman.MaxHealth
	self.poweredup = self.properties.poweredup or false

	self.facing = levity.scripts:newScript(object.id, "Facing", self.object)

	self.afterimage = levity.scripts:newScript(self.object.id, "AfterImage", self.object)

	levity.scripts:broadcast("wingmanJoined", self.object.id)
end

function ShmupWingman:initQuery()
	local demonization = levity.map.objects[self.properties.demonizationid]
	if demonization then
		levity.scripts:newScript(demonization.id, "AfterImage", demonization)
	end
end

local Sounds = {
	Cut = "snd/slash.ogg",
	Maxed = "snd/maxed.ogg",
	Powerup = "snd/powerup.ogg",
	--Ouch = "snd/ow.ogg",
	Death = "snd/shriek.ogg"
}
levity.bank:load(Sounds)

ShmupWingman.BaseMask = {
	ShmupCollision.Category_Default,
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_EnemyBounds,
	ShmupCollision.Category_BonusMaze
}

ShmupWingman.Speed = 320
ShmupWingman.SpeedSq = ShmupWingman.Speed * ShmupWingman.Speed
ShmupWingman.MaxHealth = 4
ShmupWingman.DemonizationOffset = 1/64 --to ensure correct draw order for demonization vfx
ShmupWingman.ConvertTime = 1
--ShmupWingman.ConvertShake = 4
ShmupWingman.ConvertDist = 16
ShmupWingman.LockSearchHalfW = 120
ShmupWingman.LockSearchHalfH = 160
ShmupWingman.LockSearchRayLength = 240
ShmupWingman.UnfocusedHealRate = 1
ShmupWingman.BombMeleeTime = 2
ShmupWingman.BombMeleeDPS = 15
ShmupWingman.BombMeleeSearchHalfW = 240
ShmupWingman.BombMeleeSearchHalfH = 320
ShmupWingman.WinBonus = 5000

function ShmupWingman:isConverting()
	return self.properties.captorid ~= nil
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

function ShmupWingman:setEnemyShotCollision(enemyshotcollision)
	for _, fixture in pairs(self.object.body:getFixtureList()) do
		ShmupCollision.setFixtureMask(fixture,
			ShmupCollision.Category_EnemyShot, enemyshotcollision)
	end
end

function ShmupWingman:setCaptureEnabled(enabled)
	for _, fixture in pairs(self.object.body:getFixtureList()) do
		ShmupCollision.setFixtureMask(fixture,
			ShmupCollision.Category_EnemyTeam, enabled)
	end
end

function ShmupWingman:setBombMelee(enabled)
	if enabled then
		for _, fixture in pairs(self.object.body:getFixtureList()) do
			fixture:setCategory(ShmupCollision.Category_PlayerTeam,
				ShmupCollision.Category_PlayerBomb)
		end
	else
		for _, fixture in pairs(self.object.body:getFixtureList()) do
			fixture:setCategory(ShmupCollision.Category_PlayerTeam)
		end
	end
end

function ShmupWingman:kill()
	local x, y = self.object.body:getWorldCenter()
	levity.scripts:send("deathparticles", "emit", 32, x, y, math.pi*1.5)

	levity:discardObject(self.object.id)
	if self.properties.demonizationid then
		levity:discardObject(self.properties.demonizationid)
	end

	levity.scripts:broadcast("wingmanKilled", self.object.id)

	local x, y = self.object.body:getWorldCenter()
	ShmupBullet.create("FriendlyDeath", x, y, 0, 0, "sparks")
end

function ShmupWingman:heal(healing)
	self.health = math.min(self.health + healing, ShmupWingman.MaxHealth)
end

function ShmupWingman:humanCaptured(humanid)
	local healing = 1
	local npc = levity.map.objects[humanid]
	if npc then
		healing = npc.properties.maxhealth or 1
	end

	self:heal(healing)

	if self.targetcaptiveid == humanid then
		self.targetcaptiveid = nil
	end
end

function ShmupWingman:getConvertTimer()
	return self.converttimer
end

function ShmupWingman:beginContact_EnemyShot(myfixture, otherfixture, contact)
	if not self:isConverting()
	and not self.bombmeleetimer
	and self.health >= 1 then
		local otherdata = otherfixture:getBody():getUserData()
		local otherproperties = otherdata and otherdata.properties
		local damage = otherproperties and otherproperties.damage or 1
		if damage > 0 then
			local x, y = self.object.body:getWorldCenter()
			levity.scripts:send("deathparticles", "emit",
				8, x, y, math.pi*2*love.math.random())
		end
		self.health = self.health - damage
		if self.health < 1 then
			self:kill()
		end
		levity.bank:play(Sounds.Cut);
	end
end

function ShmupWingman:beginContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_EnemyShot then
			self:beginContact_EnemyShot(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_Camera then
			self.oncamera = true
		end
	end
end

function ShmupWingman:endContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_Camera then
			self.oncamera = false
		end
	end
end

function ShmupWingman:setAfterImage(enabled)
	self.properties.afterimage = enabled

	local demonization = levity.map.objects[self.properties.demonizationid]
	if demonization then
		demonization.properties.afterimage = enabled
	end
end

function ShmupWingman:playerBombed()
	self.bombmeleetimer = 0
	self.properties.damage = ShmupWingman.BombMeleeDPS
	self:setBombMelee(true)
	self:setAfterImage(true)
end

function ShmupWingman:playerKilled()
	self:setCaptureEnabled(false)
end

function ShmupWingman:updateDemonization(dt)
	self.converttimer = self.converttimer + dt
	if self.converttimer >= ShmupWingman.ConvertTime then
		self.properties.captorid = nil
		self.converttimer = nil
		self.object:setGid(levity.map:getTileGid("converted",
			self.object.tile.properties.name, 0))
		self:faceDirectionY(-1)
		self:refreshFixtures()
		self:setCaptureEnabled(levity.scripts:call("playerteam", "isWingmanActive", self.object.id))
	end
end

function ShmupWingman:getNormalBulletVelocity()
	local cx, cy = self.object.body:getWorldCenter()
	local playerid = levity.map.properties.playerid
	local player = levity.map.objects[playerid]
	local playercx, playercy = player.body:getWorldCenter()
	local vx, vy = 0, -1
	vx = (cx - playercx)/levity.camera.w
	return vx, vy
end

function ShmupWingman:getLockBulletVelocity(locktargetid)
	local cx, cy = self.object.body:getWorldCenter()
	local target = levity.map.objects[locktargetid]
	if not target then
		return self:getNormalBulletVelocity()
	end
	local targetbody = target.body
	local tx, ty = targetbody:getWorldCenter()
	local dx, dy = tx-cx, ty-cy
	if dx==0 and dy==0 then
		return self:getNormalBulletVelocity()
	end
	local dist = math.hypot(dx, dy)
	return dx/dist, dy/dist
end

function ShmupWingman:updateFiring(dt)
	if self.firetimer >= ShmupPlayer.BulletInterval then
		local playerid = levity.map.properties.playerid
		local locktargetid
		if levity.scripts:call(playerid, "isFocused") then
			locktargetid = self:findTarget_rectangle("canBeLockTarget")
		end

		self.targetlock:setLockTargetId(locktargetid)

		local vx, vy 
		if locktargetid then
			vx, vy = self:getLockBulletVelocity(locktargetid)
		else
			vx, vy = self:getNormalBulletVelocity()
		end
		self:faceDirectionY(vy)

		local cx, cy = self.object.body:getWorldCenter()
		local x = cx + vx*dt
		local y = cy + vy*dt
		self.firetimer = ShmupBullet.fireOverTime("BulletWingman",
						x, y, vx, vy,
						"playershots", self.firetimer,
						ShmupPlayer.BulletInterval)
	end
	self.firetimer = levity:timerCorrectRoundingError(self.firetimer + dt,
						ShmupPlayer.BulletInterval)
end

function ShmupWingman:findTarget_rectangle(canbetargetfunc, searchw, searchh)
	local playerid = levity.map.properties.playerid
	local player = levity.map.objects[playerid]
	local playercx, playercy = player.body:getWorldCenter()
	local cx, cy = self.object.body:getWorldCenter()
	local dx, dy = cx - playercx, cy - playercy
	searchw = searchw or ShmupWingman.LockSearchHalfW
	searchh = searchh or ShmupWingman.LockSearchHalfH
	local x0 = dx + cx - searchw
	local x1 = dx + cx + searchw
	local y0 = dy + cy - searchh
	local y1 = dy + cy + searchh

	return Targeting.queryRectangle(canbetargetfunc, x0, y0, x1, y1)
end

function ShmupWingman:findTarget_ray(canbetargetfunc)
	local angle = self:getNormalBulletVelocity()
	local length = ShmupWingman.LockSearchRayLength
	local x1, y1 = self.object.body:getWorldCenter()
	local x2, y2 = x1 + length*math.cos(angle), y1 + length*math.sin(angle)
	return Targeting.queryRay(canbetargetfunc, x1, y1, x2, y2)
end

function ShmupWingman:beginMove(dt)
	local body = self.object.body

	local playerid = levity.map.properties.playerid

	local cx, cy = body:getWorldCenter()
	local destx, desty = cx, cy
	local captive

	local scoreid = levity.scripts:call("status", "getScoreId")

	local bombmeleecantarget = self.bombmeleetimer
		and self.bombmeleetimer < ShmupWingman.BombMeleeTime
	local focused = not self.bombmeleetimer and
		levity.scripts:call(playerid, "isFocused")

	if bombmeleecantarget and not self:isConverting() then
		if not self.targetcaptiveid
		or not levity.scripts:call(self.targetcaptiveid, "canBeBombMeleeTarget")
		then
			self.targetcaptiveid = self:findTarget_rectangle(
				"canBeBombMeleeTarget",
				ShmupWingman.BombMeleeSearchHalfW,
				ShmupWingman.BombMeleeSearchHalfH)
		end
	elseif focused and self.poweredup and not self:isConverting() then
		if not self.targetcaptiveid
		or not levity.scripts:call(self.targetcaptiveid, "canBeCaptured")
		then
			self.targetcaptiveid = self:findTarget_rectangle("canBeCaptured")
		end
	else
		self:heal(ShmupWingman.UnfocusedHealRate * dt)
		self.targetcaptiveid = nil
	end

	if self.targetcaptiveid then
		captive = levity.map.objects[self.targetcaptiveid]
	end

	if captive then
		destx, desty = captive.body:getWorldCenter()
		--if captive.properties.script == "ShmupWingman" then
		--	if not captive.properties.demonizationid
		--	or captive.properties.captorid ~= self.object.id then
		--		self.targetcaptiveid = nil
		--	else
		--		destx, desty = self.object.body:getWorldCenter()
                --
		--		local camvx, camvy = levity.scripts:call(
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
		local captor = levity.map.objects[captorid]
		if captor then
			destx, desty = captor.body:getWorldCenter()
			local demonizationpct = self.converttimer
				/ ShmupWingman.ConvertTime
			desty = desty - ShmupWingman.ConvertDist*(1+demonizationpct)
		end
	else
		destx, desty = levity.scripts:call("playerteam",
				"getWingmanPosition", self.object.id)
		destx = destx or cx
		desty = desty or cy
		self.targetcaptiveid = nil
	end

	self:setEnemyShotCollision(
		self:isConverting()
		or self.targetcaptiveid
		or self.bombmeleetimer)
		--and not levity.scripts:call(self.targetcaptiveid, "is_a",
		--				ShmupWingman))

	local dx, dy = destx - cx, desty - cy
	local distsq = math.hypotsq(dx, dy)
	local vx1, vy1
	if distsq < ShmupWingman.SpeedSq * dt * dt then
		vx1 = dx / dt
		vy1 = dy / dt
	else
		local speed = ShmupWingman.Speed / math.sqrt(distsq)
		if self.bombmeleetimer then
			speed = speed*2
		end
		vx1 = dx * speed
		vy1 = dy * speed
	end

	body:setLinearVelocity(vx1, vy1)

	if self:isConverting() then
	elseif captive then
		self:faceDirectionY(dy)
	elseif levity.scripts:call(playerid, "isKilled")
	or not levity.scripts:call("playerteam", "isWingmanActive", self.object.id)
	then
		self:faceDirectionY(1)
	elseif not levity.scripts:call(playerid, "isFiring") then
		self:faceDirectionY(-1)
	end
end

function ShmupWingman:faceDirectionY(diry)
	local prevangle = self.facing:getFaceAngle()
	local prevdiry = math.sin(prevangle)
	if prevdiry <= 0 and diry <= 0 or prevdiry > 0 and diry > 0 then
		return
	end

	local angle = -math.pi/2
	local state = levity.map:getTileLineName(self.object.gid, "state")

	if diry > 0 then
		angle = -angle
	end

	self.facing:faceAngle(angle, state)

	local demonization = levity.map.objects[self.properties.demonizationid]
	if demonization then
		demonization:setGid(levity.map:getTileGid("demonization",
			self:isConverting() and "demonizing" or "demonized"),
			"keeptimer")
	end
end

function ShmupWingman:endMove(dt)
	local scoreid = levity.scripts:call("status", "getScoreId")
	if scoreid and not self.poweredup then
		self.poweredup = levity.scripts:call(scoreid, "isMaxMultiplier",
							self.object.id)
		if self.poweredup then
			levity.bank:play(Sounds.Maxed)
			levity.bank:play(Sounds.Powerup)
		end
	end

	if self.bombmeleetimer then
		self.bombmeleetimer = self.bombmeleetimer + dt
		if self.bombmeleetimer >= ShmupWingman.BombMeleeTime then
			--TODO Bomb collision and other continuous collision
			--responses should switch from using callbacks
			--to iterating over contacts after world update 
			local bombmeleecontact
			for _, contact in pairs(self.object.body:getContactList()) do
				local fix1, fix2 = contact:getFixtures()
				local myfix, otherfix
				if fix1:getBody() == self.object.body then
					myfix = fix1
					otherfix = fix2
				elseif fix2:getBody() == self.object.body then
					myfix = fix2
					otherfix = fix1
				end
				if ShmupCollision.checkFixtureCategory(otherfix,
					ShmupCollision.Category_EnemyTeam)
				then
					bombmeleecontact = true
					break
				end
			end

			if not bombmeleecontact then
				self:setAfterImage(false)
				self:setBombMelee(false)
				self.bombmeleetimer = nil
				self.properties.damage = nil
			end
		end
	end

	local x, y = self.object.body:getPosition()
	local demonization = levity.map.objects[self.properties.demonizationid]
	if demonization then
		local offset = ShmupWingman.DemonizationOffset
		if math.sin(self.facing:getFaceAngle()) > 0 then
			offset = -offset
		end
		demonization.body:setPosition(x, y + offset)
	end

	if self:isConverting() then
		self:updateDemonization(dt)
	elseif self.oncamera then
		local playerid = levity.map.properties.playerid
		local firing =  levity.scripts:call(playerid, "isFiring")
		local focused =  levity.scripts:call(playerid, "isFocused")

		if not (firing and focused) then
			self.targetlock:setLockTargetId(nil)
		end

		if firing then
			self:updateFiring(dt)
		else
			self.firetimer = ShmupPlayer.BulletInterval
		end
	else
		if not levity.scripts:call("playerteam", "isWingmanActive", self.object.id) then
			levity.scripts:broadcast("wingmanReserved",
						self.object.id, self.object.gid)
			levity:discardObject(self.object.id)
			if demonization then
				levity:discardObject(demonization.id)
			end
		end
	end
end

function ShmupWingman:beginDraw()
	local color = self.object.color or {}
	for i=1,4 do
		color[i] = 0xff
	end

	local healthpercent = self.health / ShmupWingman.MaxHealth
	local wound = 0xff*healthpercent
	if self:isConverting() or self.bombmeleetimer then
		local flashrate = 30 * (self.bombmeleetimer or self.converttimer)
		local flash = 0x80 * (math.cos(flashrate*math.pi) + 3)
		color[1] = flash
		color[3] = flash
	elseif self.targetcaptiveid then
		color[2] = wound
		color[3] = wound
	elseif healthpercent < 1 then
		color[1] = wound
		color[3] = wound
		color[4] = 0x80
	else
		color[1] = 0x1ff
		color[3] = 0x1ff
		color[4] = 0x80
	end

	self.object.color = color
	local demonization = levity.map.objects[self.properties.demonizationid]
	if demonization then
		demonization.color = demonization.color or {}
		for k,v in pairs(color) do
			demonization.color[k]=v
		end
	end
end

function ShmupWingman:playerWon()
	self:setEnemyShotCollision(false)
end

function ShmupWingman:startWinBonus()
	levity.scripts:broadcast("pointsScored", ShmupWingman.WinBonus,
		self.object.body:getX(), self.object.body:getY())
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

	local demonizationid = map:newObjectId()
	local demonizationtileid = captorid and "demonizing" or "demonized"
	local demonization = {
		id = demonizationid,
		gid = map:getTileGid("demonization", demonizationtileid),
		x = x,
		y = y + ShmupWingman.DemonizationOffset
	}

	player.layer:addObject(demonization)

	local wingman = --map.objects[captiveid] or
			{ id = map:newObjectId() }

	wingman.properties = {
		demonizationid = demonizationid,
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
