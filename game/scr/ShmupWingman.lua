local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local Targeting = require "Targeting"
local ShmupPlayer = require("ShmupPlayer")
local ShmupBullet = require("ShmupBullet")
require "TargetLock"

local ShmupWingman = class(require("Script"))
function ShmupWingman:_init(object)
	self.object = object
	self.id = object.id
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)
	self.firetimer = 0
	self.bombmeleetimer = nil

	self:refreshFixtures()
	self.takesbullets = true
	self.properties.picksupitems = not self:isConverting()

	self.converttimer = self:isConverting() and 0 or nil

	self.oncamera = false

	self.targetlock = levity.scripts:newScript(object.id, "TargetLock", object)
	self.targetcaptiveid = nil
	self.health = self.properties.health

	self.facing = levity.scripts:newScript(object.id, "Facing", self.object)

	self.afterimage = levity.scripts:newScript(self.id, "AfterImage", self.object)
	self.emote = levity.scripts:newScript(self.id, "Emote", self.object)
end

function ShmupWingman:initQuery()
	self:broadcast("wingmanJoined", self.id)

	local demonization = levity.map.objects[self.properties.demonizationid]
	if demonization then
		levity.scripts:newScript(demonization.id, "AfterImage", demonization)
	end
end

ShmupWingman.BaseMask = {
	ShmupCollision.Category_Default,
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_EnemyBounds,
	ShmupCollision.Category_BonusMaze
}

ShmupWingman.DefaultConvertTime = 1
ShmupWingman.DemonizationOffset = 1/64 --to ensure correct draw order for demonization vfx
--ShmupWingman.ConvertShake = 4
ShmupWingman.LockSearchHalfW = 120
ShmupWingman.LockSearchHalfH = 160
ShmupWingman.LockSearchRayLength = 240
ShmupWingman.BombMeleeSearchHalfW = 240
ShmupWingman.BombMeleeSearchHalfH = 320

function ShmupWingman:isConverting()
	return self.properties.captorid ~= nil
end

function ShmupWingman:refreshFixtures()
	for _, fixture in pairs(self.object.body:getFixtures()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_PlayerTeam)
		fixture:setMask(ShmupWingman.BaseMask)
	end
end

function ShmupWingman:setBombMelee(enabled)
	if enabled then
		for _, fixture in pairs(self.object.body:getFixtures()) do
			fixture:setCategory(ShmupCollision.Category_PlayerTeam,
				ShmupCollision.Category_PlayerBomb)
		end
	else
		for _, fixture in pairs(self.object.body:getFixtures()) do
			fixture:setCategory(ShmupCollision.Category_PlayerTeam)
		end
	end
end

function ShmupWingman:kill()
	local x, y = self.object.body:getWorldCenter()
	self:send("deathparticles", "emit", 32, x, y, math.pi*1.5)

	self:send(self.id, "discard")

	self:broadcast("wingmanKilled", self.id)

	local x, y = self.object.body:getWorldCenter()
	ShmupBullet.create(self.properties.defeatspark or "FriendlyDeath",
				x, y, 0, 0, "sparks")
	local istutorial = self:call(levity.mapfile, "isTutorial")
	if istutorial then
		self:broadcast("wingmanReserved", self.id, self.object.gid)
	end
end

function ShmupWingman:heal(healing)
	if not self.health then
		return
	end
	self.health = math.min(self.health + healing, self.properties.health)
end

function ShmupWingman:humanCaptured(humanid)
	local healing = 1
	local npc = levity.map.objects[humanid]
	if npc then
		healing = npc.properties.maxhealth or 1
	end

	self:heal(healing)
end

function ShmupWingman:npcGone(humanid)
	if self.targetcaptiveid == humanid then
		self.targetcaptiveid = nil
	end
end

function ShmupWingman:getConvertTimer()
	return self.converttimer
end

function ShmupWingman:beginContact_EnemyShot(myfixture, otherfixture, contact)
	if not self.takesbullets then
		return
	end

	local otherdata = otherfixture:getBody():getUserData()

	if not self:isConverting()
	and not self.bombmeleetimer
	and self.health and self.health >= 1 then
		self.hitstuntimer = self.properties.hitstuntime
		--self.emote:setEmote("emotes", "oww")
		local otherproperties = otherdata and otherdata.properties
		local damage = otherproperties and otherproperties.damage or 1
		if damage > 0 then
			local x, y = self.object.body:getWorldCenter()
			self:send("deathparticles", "emit",
				8, x, y, math.pi*2*love.math.random())
		end
		self.health = self.health - damage
		if self.health < 1 then
			self:kill()
		end
		levity.bank:play(self.properties.hitsound);
	end

	local otherid = otherdata.id
	self:send(otherid, "onHit")
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

function ShmupWingman:getTargetCaptiveId()
	return self.targetcaptiveid
end

function ShmupWingman:setTargetCaptiveId(id)
	self.targetcaptiveid = id
end

function ShmupWingman:playerBombed()
	self.bombmeleetimer = 0
	self.properties.damage = self.properties.bombmeleedps or 15
	self:setBombMelee(true)
	self:setAfterImage(true)
end

function ShmupWingman:playerKilled()
	self.properties.picksupitems = false
end

function ShmupWingman:playerRespawned()
	self.properties.picksupitems = true
end

function ShmupWingman:updateDemonization(dt)
	self.converttimer = self.converttimer + dt
	local converttime = self.properties.converttime
				or ShmupWingman.DefaultConvertTime
	if self.converttimer >= converttime then
		self.properties.captorid = nil
		self.converttimer = nil
		self.object:setGid(levity.map:getTileGid("converted",
			self.object.tile.properties.name, 0))
		self:faceDirectionY(-1)
		self:refreshFixtures()
		self.properties.picksupitems = true
	end
end

function ShmupWingman:getNormalBulletVelocity()
	local cx, cy = self.object.body:getWorldCenter()
	local playerid = levity.map.properties.playerid
	local player = levity.map.objects[playerid]
	local playercx, playercy = player.body:getWorldCenter()
	local vx, vy = 0, -1
	vx = (cx - playercx)/levity.camera.w
	if self:call(playerid, "isFocused") then
		vx = -vx
	end
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
		local locktargetid = self.targetlock:getLockTargetId()
		--if self:call(playerid, "isFocused") then
		--	locktargetid = self:findTarget_rectangle("canBeLockTarget")
		--end

		--self.targetlock:setLockTargetId(locktargetid)

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

function ShmupWingman:findTarget_onscreen(canbetargetfunc, searchh)
	local camera = levity.camera
	local x0 = camera.x
	local y0 = camera.y
	local x1 = x0 + camera.w
	local y1 = y0 + camera.h
	if searchh then
		y0 = y0 + camera.h - searchh
	end

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
	local cx, cy = body:getWorldCenter()

	local hitstuntimer = self.hitstuntimer
	if hitstuntimer then
		hitstuntimer = hitstuntimer - dt
		if hitstuntimer <= 0 then
			hitstuntimer = nil
			self.emote:setEmote()
		end
		self:send("deathparticles", "emit", 1, cx, cy, math.pi*.5)
		self.hitstuntimer = hitstuntimer
	end
	local playerid = levity.map.properties.playerid

	local destx, desty = cx, cy
	local captive

	local scoreid = self:call("status", "getScoreId")

	local converting = self:isConverting()
	local playerkilled = self:call(playerid, "isKilled")
	local targetallowed = not converting and not playerkilled

	local bombmeleetime = self.properties.bombmeleetime or 2
	local bombmeleecantarget = self.bombmeleetimer
		and self.bombmeleetimer < bombmeleetime
		and targetallowed
	local focused = not self.bombmeleetimer and self:call(playerid, "isFocused")
	local backup = self:call("playerteam", "isWingmanBackup", self.id)

	local leaderid = playerid
	local targetcaptiveid = self.targetcaptiveid
	local cangrab = not focused and self:call("status", "canWingmenGrab")

	if hitstuntimer then
		if self:call(targetcaptiveid, "isPulledBy", self.id) then
			self:send(targetcaptiveid, "cancelPull")
		end
		targetcaptiveid = nil
	elseif bombmeleecantarget then
		if not targetcaptiveid
		or not self:call(targetcaptiveid, "canBeBombMeleeTarget")
		then
			targetcaptiveid = self:findTarget_onscreen("canBeBombMeleeTarget")
			if targetcaptiveid then
				local angle = love.math.random()*2*math.pi
				self.destoffsetx = 12 * math.cos(angle)
				self.destoffsety = 12 * math.sin(angle)
			end
		end
	elseif cangrab and targetallowed then
		if not targetcaptiveid
		or not self:call(targetcaptiveid, "canBeCaptured")
		then
			targetcaptiveid = self:findTarget_rectangle("canBeCaptured")
		end
		leaderid = self:call("playerteam", "getLockTargetId") or playerid
	elseif backup and targetallowed then
		if not targetcaptiveid
		or not self:call(targetcaptiveid, "canBeCaptured")
		then
			local searchh = self:call("status", "getBackupCaptureHeight")
			targetcaptiveid = self:findTarget_onscreen("canBeCaptured", searchh)
		end
	elseif not self:call(targetcaptiveid, "isPulledBy", self.id) then
		local healrate = self.properties.unfocusedhealrate or 1
		self:heal(healrate * dt)
		targetcaptiveid = nil
	end

	if targetcaptiveid then
		captive = levity.map.objects[targetcaptiveid]
	end

	local locktargetid = self.targetlock:getLockTargetId()
	local active = self:call("playerteam", "isWingmanActive", self.id)
	local canattack = active and not hitstuntimer and not focused
		and self:call("status", "canWingmenAttack")

	if captive then
		if self:call(targetcaptiveid, "isPulledBy", self.id) then
			local player = levity.map.objects[playerid]
			destx, desty = player.body:getWorldCenter()
		else
			destx, desty = captive.body:getWorldCenter()
		end
	elseif converting then
		local captorid = self.properties.captorid
		local captor = levity.map.objects[captorid]
		if captor then
			destx, desty = captor.body:getWorldCenter()
			local converttime = self.properties.converttime
					or ShmupWingman.DefaultConvertTime
			local demonizationpct = self.converttimer
				/ converttime
			local convertdist = self.properties.convertdist or 16
			desty = desty - convertdist*(1+demonizationpct)
		end
	elseif canattack and locktargetid then
		local locktarget = levity.map.objects[locktargetid]
		if locktarget then
			destx, desty = locktarget.body:getWorldCenter()
			local dx, dy = destx-cx, desty-cy
			local dist = math.hypot(dx, dy)
			local s = -32/dist
			self.destoffsetx = dx*s
			self.destoffsety = dy*s
		end
		destx = destx or cx
		desty = desty or cy

	else
		destx, desty = self:call("playerteam", "getWingmanPosition",
			self.id, leaderid)
		destx = destx or cx
		desty = desty or cy
		targetcaptiveid = nil
	end

	self.takesbullets = not self.hitstuntimer and
		(converting
		or (self.health and targetcaptiveid)
		or (canattack and locktargetid)
		--or leaderid ~= playerid           -
		or self.bombmeleetimer
		--and not self:call(targetcaptiveid, "is_a",
		--				ShmupWingman))
		)

	local ox = self.destoffsetx or 0
	local oy = self.destoffsety or 0
	local distx = destx + ox - cx
	local disty = desty + oy - cy
	local distsq = math.hypotsq(distx, disty)
	local speed = self.properties.speed or 320
	if self.bombmeleetimer then
		speed = speed*2
	else
		self.destoffsetx = nil
		self.destoffsety = nil
	end
	local speedsq = speed*speed
	if distsq < speedsq * dt * dt then
		local vx1 = distx / dt
		local vy1 = disty / dt
		body:setLinearVelocity(vx1, vy1)
		if bombmeleecantarget then
			targetcaptiveid = nil
			self.destoffsetx = nil
			self.destoffsety = nil
		end
	else
		speed = speed / math.sqrt(distsq)
		local vx1 = distx * speed
		local vy1 = disty * speed
		body:setLinearVelocity(vx1, vy1)
	end

	self.leaderid = leaderid
	self.targetcaptiveid = targetcaptiveid

	if converting then
	elseif captive then
		self:faceDirectionY(desty - cy)
	elseif playerkilled
	or not self:call("playerteam", "isWingmanActiveOrBackup", self.id)
	then
		self:faceDirectionY(1)
	elseif not self:call(playerid, "isFiring") then
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
	if self.bombmeleetimer then
		self.bombmeleetimer = self.bombmeleetimer + dt
		local bombmeleetime = self.properties.bombmeleetime or 2
		if self.bombmeleetimer >= bombmeleetime then
			--TODO Bomb collision and other continuous collision
			--responses should switch from using callbacks
			--to iterating over contacts after world update
			local bombmeleecontact
			for _, contact in pairs(self.object.body:getContacts()) do
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
	else
		local playerid = levity.map.properties.playerid
		local firing =  self:call(playerid, "isFiring")
		local focused =  self:call(playerid, "isFocused")
		local locktargetid = self.targetlock:getLockTargetId()
		local active = self:call("playerteam", "isWingmanActive", self.id)
		local canattack = active and not focused and self:call("status", "canWingmenAttack")
		local canlock = firing and (canattack or focused)

		if not canlock
		or locktargetid and not self:call(locktargetid, "canBeLockTarget")
		then
			self.targetlock:setLockTargetId(nil)
			locktargetid = nil
		end

		if firing and canattack then
			if not locktargetid then
				locktargetid = self:findTarget_onscreen("canBeLockTarget")
			end
			self.targetlock:setLockTargetId(locktargetid)
		end

		if self.oncamera and firing then
			self:updateFiring(dt)
		else
			self.firetimer = ShmupPlayer.BulletInterval
		end

		if not self.oncamera
		and not self:call("playerteam", "isWingmanActiveOrBackup", self.id)
		then
			self:broadcast("wingmanReserved",
						self.id, self.object.gid)
			self:send(self.id, "discard")
		end
	end
end

function ShmupWingman:beginDraw()
	local color = self.object.color or {}
	for i=1,4 do
		color[i] = 1
	end

	local maxhealth = self.properties.health or ShmupWingman.DefaultMaxHealth
	local healthpercent = self.health and self.health / maxhealth or 1
	local wound = 1*healthpercent
	local timer = self.hitstuntimer or self.bombmeleetimer or self.converttimer
	if timer then
		local flashrate = 30 * (timer)
		local flash = .5 * (math.cos(flashrate*math.pi) + 3)
		color[1] = flash
		if not self.hitstuntimer then
			color[3] = flash
		end
	elseif self.takesbullets then--or self.leaderid ~= levity.map.properties.playerid then
		color[2] = wound
		color[3] = wound
	elseif healthpercent < 1 then
		color[1] = wound
		color[3] = wound
		color[4] = .5
	else
		color[1] = 2
		color[3] = 2
		color[4] = .5
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
	self.takesbullets = false
end

function ShmupWingman:startWinBonus()
	self:broadcast("pointsScored",
		self.properties.winbonus or 5000,
		self.object.body:getX(), self.object.body:getY())
end

function ShmupWingman:getNextMapData()
	return {
		tilename = levity.map:tileGidsToNames({self.object.gid})
	}
end

function ShmupWingman:discard()
	levity:discardObject(self.id)
	if self.properties.demonizationid then
		levity:discardObject(self.properties.demonizationid)
	end
end

function ShmupWingman.create(map, gid, x, y, captorid, captiveid,
				nextmapdata)
	local playerid = map.properties.playerid
	local player = map.objects[playerid]

	local demonizationtileid = captorid and "demonizing" or "demonized"
	local demonization = levity.map:newObject(player.layer)
	demonization.gid = map:getTileGid("demonization", demonizationtileid)
	demonization.x = x
	demonization.y = y + ShmupWingman.DemonizationOffset

	local wingman = levity.map:newObject(player.layer)
	wingman.type = "PlayerWingman"
	wingman.properties.demonizationid = demonization.id
	wingman.properties.captorid = captorid

	if nextmapdata then
		gid = levity.map:tileNamesToGids(nextmapdata.tilename)[1]
	else
		wingman.properties.animated = false
	end

	wingman.gid = gid
	wingman.x = x
	wingman.y = y

	return wingman.id
end

return ShmupWingman
