--- NPC - any computer-controlled character
--@module NPC

--- NPC properties
--@field friendly
--@field fleeing Discard once offscreen?
--@field iscover Others can touch to take cover from fire
--@field isshield Others can touch to block damage and capture
--@field strafearc Can face target if angle to target is this close to movement angle
--@field rideid Other character to ride on; "colliding" for first colliding enemy
--@field rideseat Name of the point to sit at on the ride object
--@field rideshield Does riding block damage and capture?
--@field ridedefeat Defeat if ride destroyed?
--@field health 0 = noncombatant
--@field score awarded by defeated enemy
--@field defeatitemvelx
--@field defeatitemvely
--@field defeatspark
--@field faceangle Manually set facing angle (E=0, S=90, W=180, N=270)
--@field immuneplayertouch
--@field immuneplayershot
--@field immuneplayerbomb
--@table Properties

local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = require "ShmupBullet"
local pl_tablex = require "pl.tablex"

--preload component scripts
require "Health"
require "TakingCover"
require "Facing"
require "Mover"
require "TypeChanger"
require "Shooter"
require "Rescuer"
require "AfterImage"
require "Coroutine"
require "Emote"
require "Shadow"

local NPC = class()

local EnemyMask = {
	ShmupCollision.Category_EnemyShot,
	ShmupCollision.Category_BonusMaze
}

local CivilianMask = {
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot
}

local FriendMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerBomb
}

NPC.InvulnerableMask = {
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_EnemyShot,
	ShmupCollision.Category_BonusMaze
}

local CollisionCategory = { }
local CollisionMask = { }

function NPC:_init(object)
	self.object = object
	self.id = object.id
	self.body = object.body
	self.properties = object.properties

	self.oncamera = nil
	-- nil = never entered camera
	-- false = exited camera
	self.oncameraedge = nil

	self.facing = levity.scripts:newScript(self.id, "Facing", self.object)
	self.ride = levity.scripts:newScript(self.id, "Ride", self.object)

	if self.properties.health and self.properties.health >= 1 then
		self.health = levity.scripts:newScript(self.id, "Health", self.object)
	end
	if self.properties.takescover ~= nil then
		self.cover = levity.scripts:newScript(self.id, "TakingCover", self.object)
	end
	if self.properties.pathid or self.properties.rideid then
		self.mover = levity.scripts:newScript(self.id, "Mover", self.object)
	end

	if self.properties.nexttype then
		self.typechanger = levity.scripts:newScript(self.id, "TypeChanger", self.object)
	end

	if self.properties.rescuehumans then
		self.rescuer = levity.scripts:newScript(self.id, "Rescuer", self.object)
	end

	if self.properties.afterimage ~= nil then
		self.afterimage = levity.scripts:newScript(self.id, "AfterImage", object)
	end

	if self.properties.firebullet then
		self.shooter = levity.scripts:newScript(self.id, "Shooter", self.object)
	end

	if self.properties.coroutine or self.properties.defeatcoroutine then
		self.coroutine = levity.scripts:newScript(self.id, "Coroutine", object)
	end

	local emotetileset = self.properties.emotetileset
	local emotetileid = self.properties.emotetileid
	if emotetileset or emotetileid then
		self.emote = levity.scripts:newScript(self.id, "Emote", object)
	end
	local shadow = self.properties.shadow
	if shadow then
		self.shadow = levity.scripts:newScript(self.id, "Shadow", object)
	end

	self.shields = 0

	self.body:setFixedRotation(true)

	pl_tablex.clear(CollisionCategory)
	local friendly = self.properties.friendly
	local teamcategory = friendly
		and ShmupCollision.Category_PlayerTeam
		or ShmupCollision.Category_EnemyTeam
	CollisionCategory[#CollisionCategory+1] = teamcategory

	if self.properties.iscover then
		CollisionCategory[#CollisionCategory+1] = ShmupCollision.Category_EnemyCover
	end

	pl_tablex.clear(CollisionMask)
	if friendly then
		pl_tablex.copy(CollisionMask, FriendMask)
	else
		pl_tablex.copy(CollisionMask, EnemyMask)
		if self.health then
			if self.properties.immuneplayertouch then
				CollisionMask[#CollisionMask+1] = ShmupCollision.Category_PlayerTeam
			end
			if self.properties.immuneplayershot then
				CollisionMask[#CollisionMask+1] = ShmupCollision.Category_PlayerShot
			end
			if self.properties.immuneplayerbomb then
				CollisionMask[#CollisionMask+1] = ShmupCollision.Category_PlayerBomb
			end
		else
			pl_tablex.icopy(CollisionMask, CivilianMask, #CollisionMask+1)
		end
	end

	self:refreshFixtures(CollisionCategory, CollisionMask)
end

function NPC:initQuery()
	local triggerid = self.properties.triggerid
	if triggerid then
		if self.properties.friendly then
			levity.scripts:send(triggerid, "addFriend", self.id)
		else
			levity.scripts:send(triggerid, "addEnemy", self.id)
		end
	end
	local rideid = self.properties.rideid
	if rideid == "player" then
		rideid = levity.map.properties.playerid
	end
	if rideid then
		levity.scripts:send(rideid, "addRider", self.id)
	end
end

function NPC:refreshFixtures(category, mask)
	for _, fixture in ipairs(self.body:getFixtureList()) do
		fixture:setCategory(category)
		fixture:setMask(mask)
	end
end

function NPC:isOnCamera()
	return self.oncamera
end

function NPC:canTakeDamage()
	return self.oncamera and not self.oncameraedge
		and not self.properties.invulnerable
		and self.health and not self.health:isDefeated()
		and self.shields < 1
		and not (self.properties.rideid and self.properties.rideshield)
		and not (self.properties.ridershield and levity.scripts:call(self.id, "hasRiders"))
		or false
end

function NPC:canBeLockTarget()
	return not self.properties.friendly
		and not self.properties.hypnotistid
		and self:canTakeDamage()
		and self.object.visible
		and not self.properties.immuneplayershot
		or false
end

function NPC:canBeBombMeleeTarget()
	return self:canBeLockTarget()
end

function NPC:isHypnotized()
	return self.properties.hypnotistid
end

function NPC:preTypeChange(oldtype, newtype)
	if not oldtype then
		return
	end
	if not rawget(self.properties, "rideid") then
		local rideid = oldtype.rideid
		local newrideid = newtype.rideid
		if rideid ~= newrideid then
			if rideid == "player" then
				rideid = levity.map.properties.playerid
			end
			levity.scripts:send(rideid, "removeRider", self.id)
		end
	end
end

function NPC:postTypeChange(oldtype, newtype)
	if not oldtype then
		return
	end
	if not rawget(self.properties, "rideid") then
		local rideid = oldtype.rideid
		local newrideid = newtype.rideid
		if rideid ~= newrideid then
			if newrideid == "player" then
				newrideid = levity.map.properties.playerid
			end
			levity.scripts:send(newrideid, "addRider", self.id)
		end
	end
end

function NPC:beginMove(dt)
	local x, y = self.body:getPosition()

	if self.coroutine and not self.coroutine:status() then
		local coroutine = self.properties.coroutine
		coroutine = coroutine and self[coroutine]
		if coroutine then
			self.coroutine:startCoroutine(coroutine, self)
		end
	end

	if self.ride and not self.mover then
		local vx, vy = self.body:getLinearVelocity()
		self.ride:updateRidersVelocity(dt, vx, vy)
	end

	local particlelayer = self.properties.particlelayer
	if particlelayer then
		local particleangle

		local particletargetid = self.properties.particletargetid
		if particletargetid then
			local target = levity.map.objects[particletargetid]
			local targetbody = target and target.body
			if targetbody then
				local layer = levity.map.layers[particlelayer]
				local lifetime = layer.properties.lifetime

				local tx, ty = targetbody:getWorldCenter()
				local vx, vy = targetbody:getLinearVelocity()
				tx = tx + vx*lifetime/2
				ty = ty + vy*lifetime/2
				local dx, dy = tx - x, ty - y
				local dist = math.hypot(dx, dy)
				particleangle = math.atan2(dy, dx)

				local speed = dist/lifetime
				layer.properties.speedmin = speed
				layer.properties.speedmax = speed
			end
		else
			particleangle = self.properties.particleangle
		end

		local particlespread = self.properties.particlespread

		if particleangle then
			levity.scripts:send(particlelayer, "emit", 1, x, y,
				particleangle or 0, particlespread)
		end
	end
end

function NPC:endMove(dt)
	local activatedamagelayers = self.properties.activatedamagelayers
	if activatedamagelayers then
		local vx, vy = self.body:getLinearVelocity()
		local active = vx == 0 and vy == 0 and self.oncamera
			and self.health and not self.health:isDefeated()
		for layer in activatedamagelayers:gmatch("([^\n]+)\n") do
			levity.scripts:send(layer, "setDamageActive", self.id, active)
		end
	end

	local faceangle = self.properties.faceangle

	if type(faceangle) == "number" then
		faceangle = math.rad(faceangle)
	elseif faceangle ~= false then
		local vx, vy
		local speed

		local rideseat = self.properties.rideseat
		rideseat = levity.scripts:call(self.properties.rideid,
			"getRideSeat", rideseat)

		local rideseatfaceangle = rideseat and rideseat.properties.faceangle
		if rideseatfaceangle then
			rideseatfaceangle = math.rad(rideseatfaceangle)
			vx = math.cos(rideseatfaceangle)
			vy = math.sin(rideseatfaceangle)
			speed = 1
		else
			vx, vy = self.body:getLinearVelocity()
			local ride = levity.map.objects[self.properties.rideid]
			if ride then
				local ridevx, ridevy = ride.body:getLinearVelocity()
				vx = vx - ridevx
				vy = vy - ridevy
			end
			speed = math.hypot(vx, vy)
		end

		local arc = math.rad(self.properties.strafearc
			or rideseat and rideseat.properties.strafearc
			or 0)

		local target = self.shooter
			and self.shooter:getTargetObject(self.properties.firetargetid)
			or levity.map.objects[levity.map.properties.playerid]

		local targetdx, targetdy, canfacetarget

		if target and target.body then
			local targetcx, targetcy = target.body:getWorldCenter()
			local cx, cy = self.body:getWorldCenter()
			targetdx, targetdy = targetcx - cx, targetcy - cy
			local targetdist = math.hypot(targetdx, targetdy)
			local dot = math.dot(targetdx, targetdy, vx, vy)
			local mindot = math.cos(arc) * targetdist * speed
			canfacetarget = speed < 1 or dot >= mindot
		end

		if canfacetarget then
			faceangle = math.atan2(targetdy, targetdx)
		else
			faceangle = math.atan2(vy, vx)
		end
	end
	if faceangle then
		self.facing:faceAngle(faceangle)
	end

	if self.properties.fleeing and self.oncamera == false then
		local friendly = self.properties.friendly
		local triggerid = self.properties.triggerid

		if friendly and self.properties.fleeingkills
		and not levity.scripts:call(triggerid, "areAllEnemiesDefeated") then
			self:defeat()
		else
			if friendly and not self.properties.hypnotistid
			and not levity.scripts:call(self.properties.rideid, "isRider", self.id)
			then
				levity.scripts:send(triggerid, "friendSaved", self.id)
			end
			levity.scripts:send(self.id, "discard")
		end
	end
end

function NPC:beginContact_PlayerShot(myfixture, otherfixture, contact)
	if self.properties.friendly then
		return
	end
	if not self.health or self.cover and self.cover:hasCover() then
		levity.scripts:send(self.id, "suppress")
	else
		local bulletproperties = otherfixture:getBody():getUserData().properties
		self.health:addDamage(bulletproperties.damage or 1)

		local hx, hy = contact:getPositions()
		local hitspark = self.properties.hitspark
		if hx and hy then
			self.health:createContactHitFX(contact, myfixture, hitspark)
		else
			local cx, cy = otherfixture:getBody():getWorldCenter()
			self.health:createHitFX(cx, cy, nil, hitspark)
		end
	end
end

function NPC:beginContact_PlayerBomb(myfixture, otherfixture, contact)
	local bulletproperties = otherfixture:getBody():getUserData().properties
	local damage = bulletproperties.damage or 1
	if self.health then
		self.health:addDPS(damage)
	end
end

function NPC:beginContact_PlayerTeam(myfixture, otherfixture, contact)
	if self.properties.meleeknockback then
		levity.bank:play(self.properties.meleesound)
	end

	if self.health then
		if self.properties.friendly or self.properties.hypnotistid then
			local playertouchheal = self.properties.playertouchheal
			local otherid = otherfixture:getBody():getUserData().id
			if playertouchheal and otherid == levity.map.properties.playerid then
				self.health:addDPS(-playertouchheal)
			end
		else
			local otherproperties = otherfixture:getBody():getUserData().properties
			local touchdps = otherproperties.touchdps or self.properties.playerteamtouchdps
			if touchdps then
				self.health:addDPS(touchdps)
			end
		end
	end
end

function NPC:beginContact_EnemyTeam(myfixture, otherfixture, contact)
	local otherid = otherfixture:getBody():getUserData().id
	local otherproperties = otherfixture:getBody():getUserData().properties
	if otherproperties.isshield then
		self.shields = self.shields + 1
	end
	if self.properties.rideid == "colliding" then
		levity.scripts:send(otherid, "addRider", self.id)
		if levity.scripts:call(otherid, "isRider", self.id) then
			self.properties.rideid = otherid
		end
	end
	if self.properties.enemytouchdefeat then
		levity.scripts:send(self.id, "defeat")
	end
end

function NPC:beginContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_PlayerTeam then
			self:beginContact_PlayerTeam(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_PlayerShot then
			self:beginContact_PlayerShot(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_PlayerBomb then
			self:beginContact_PlayerBomb(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_EnemyTeam then
			self:beginContact_EnemyTeam(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_EnemyShot then
			self:beginContact_EnemyShot(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_Camera then
			self.oncamera = true
		elseif category == ShmupCollision.Category_CameraEdge then
			self.oncameraedge = true
		elseif category == ShmupCollision.Category_EnemyCover then
			if self.properties.coverdefeat then
				levity.scripts:send(self.id, "defeat")
			end
		elseif category == ShmupCollision.Category_EnemyBounds then
			if self.properties.enemyboundsdefeat then
				levity.scripts:send(self.id, "defeat")
			end
		end
	end
end

function NPC:preSolve(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_CameraEdge then
			contact:setEnabled(false)
		elseif category == ShmupCollision.Category_EnemyTeam then
			local otherid = otherfixture:getBody():getUserData().id
			local isvehicle = levity.scripts:call(self.id, "isRider", otherid)
			local isrider = levity.scripts:call(otherid, "isRider", self.id)
			if isvehicle or isrider then
				contact:setEnabled(false)
			end
		elseif category == ShmupCollision.Category_EnemyBounds then
			if self.properties.fleeing then
				contact:setEnabled(false)
			end
		end
	end
end

function NPC:endContact_PlayerBomb(myfixture, otherfixture, contact)
	local userdata = otherfixture:getBody():getUserData()
	local bulletproperties = userdata.properties
	local damage = bulletproperties.damage or 1
	if self.health then
		self.health:addDPS(-damage)
	end
end

function NPC:endContact_PlayerTeam(myfixture, otherfixture, contact)
	if self.health then
		if self.properties.friendly or self.properties.hypnotistid then
			local playertouchheal = self.properties.playertouchheal
			local otherid = otherfixture:getBody():getUserData().id
			if playertouchheal and otherid == levity.map.properties.playerid then
				self.health:addDPS(playertouchheal)
			end
		else
			local otherproperties = otherfixture:getBody():getUserData().properties
			local touchdps = otherproperties.touchdps or self.properties.playerteamtouchdps
			if touchdps then
				self.health:addDPS(-touchdps)
			end
		end
	end
end

function NPC:beginContact_EnemyShot(myfixture, otherfixture, contact)
	if self.properties.hypnotistid then
		return
	end

	local bulletproperties = otherfixture:getBody():getUserData().properties
	self.health:addDamage(bulletproperties.damage or 1)

	local hx, hy = contact:getPositions()
	local hitspark = self.properties.hitspark
	if hx and hy then
		self.health:createContactHitFX(contact, myfixture, hitspark)
	else
		local cx, cy = otherfixture:getBody():getWorldCenter()
		self.health:createHitFX(cx, cy, nil, hitspark)
	end
end

function NPC:endContact_EnemyTeam(myfixture, otherfixture, contact)
	local otherproperties = otherfixture:getBody():getUserData().properties
	if otherproperties.isshield then
		self.shields = self.shields - 1
	end
end

function NPC:endContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_PlayerBomb then
			self:endContact_PlayerBomb(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_PlayerTeam then
			self:endContact_PlayerTeam(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_EnemyTeam then
			self:endContact_EnemyTeam(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_Camera then
			self.oncamera = false
		elseif category == ShmupCollision.Category_CameraEdge then
			self.oncameraedge = false
		end
	end
end

function NPC:npcDefeated(npcid)
	if self.id == npcid then
		return
	end

	if self.properties.defeatedwithid == npcid then
		self:defeat()
	end

	if self.properties.rideid == npcid then
		levity.scripts:send(npcid, "removeRider", self.id)
		self.properties.rideid = nil
		if self.properties.ridedefeat then
			self:defeat()
		end
		levity.scripts:send(self.id, "rideDestroyed")
	end

	if self.properties.hypnotistid == npcid then
		self.properties.hypnotistid = nil
		self.typechanger:setType("FriendFleeing")
	end

	local npc = levity.map.objects[npcid]
	if npc and npc.properties.rideid == self.id then
		local deltafiretime = self.properties.riderdestroyedchangefiretime
		local firetime = self.properties.firetime
		if deltafiretime and type(firetime) == "number" then
			self.properties.firetime = self.properties.firetime
				+ deltafiretime
		end

		if not levity.scripts:call(self.id, "hasRiders") then
			if self.properties.riderdefeatedflee then
				self.properties.fleeing = true
				local fleepathid = self.properties.riderdefeatedfleepathid
				if fleepathid then
					self.properties.pathid = fleepathid
					levity.scripts:send(self.id, "resetPath")
				end
			end

			self.properties.firebullet =
				self.properties.ridersdestroyedfirebullet
		end

		if self.properties.anyriderdefeat then
			if npc.properties.friendly then
				self.properties.score = 0
			end
			self:defeat()
		end
	end
end

function NPC:npcGone(npcid)
	local npc = levity.map.objects[npcid]
	if npc and npc.properties.rideid == self.id then
		if self.properties.riderdefeatedflee then
			self.properties.fleeing = true
		end
	end
	if self.properties.hypnotistid == npcid then
		self.typechanger:setType("FriendHypnotized_Flee")
	end
end

function NPC:defeatDefaultRoutine()
	if self.health then
		self.health:createDefeatFX()
	end

	local defeatspark = self.properties.defeatspark or "SparkDefeatMed"
	if levity.map.objecttypes[defeatspark] then
		for _, fixture in ipairs(self.body:getFixtureList()) do
			local l, t, r, b = fixture:getBoundingBox()
			local x = l + (r-l)*.5
			local y = t + (b-t)*.5
			ShmupBullet.create(defeatspark, x, y, 0, 0, "sparks")
		end
	end

	self:dropDefeatItem(self.properties.giveitemtoid)
	levity.scripts:send(self.id, "discard")
end

function NPC:getDefeatDropGid()
	local tileset = self.object.tile and self.object.tile.tileset
	local defeatdroptileset = self.properties.defeatdroptileset or tileset
	tileset = tileset and levity.map.tilesets[tileset]
	local defeatdroptileid = self.properties.defeatdroptileid or
		(tileset and tileset.name)

	return defeatdroptileid and defeatdroptileset
		and levity.map:getTileGid(defeatdroptileset, defeatdroptileid)
end

function NPC:dropDefeatItem(givetoid)
	local gid = self:getDefeatDropGid()
	if gid and self.oncamera then
		self.object.layer:addObject({
			gid = gid,
			x = self.body:getX(),
			y = self.body:getY(),
			properties = {
				launched = self.properties.defeatitemlaunch,
				pulledbyid = givetoid
			}
		})
	end
end

function NPC:explosionClusterCoroutine(explosiontype, numexplosions,
						clusterradius, explosionlayer,
						particlelayer, numparticles,
						timeinterval)
	clusterradius = clusterradius or 0
	timeinterval = timeinterval or 0
	explosionlayer = explosionlayer or "sparks"
	for i = 1, numexplosions or 0 do
		local x, y = self.body:getWorldCenter()
		local angle = love.math.random()*math.pi*2
		local vx = clusterradius*math.cos(angle)
		local vy = clusterradius*math.sin(angle)
		ShmupBullet.create(explosiontype, x, y, vx, vy, explosionlayer)
		if particlelayer and numparticles then
			levity.scripts:send(particlelayer, "emit",
				numparticles, x, y, 0, 2*math.pi)
		end
		if timeinterval > 0 then
			self.coroutine:waitTime(timeinterval)
		end
	end
end

function NPC:defeat(giveitemtoid, withbomb)
	if self.properties.defeated then
		return
	end
	if self.properties.immuneplayershot
	and self.properties.immuneplayertouch
	and not withbomb then
		return
	end
	self.properties.defeated = true
	self.properties.giveitemtoid = giveitemtoid

	self.properties.rideshield = nil
	self.properties.pathid = nil
	if self.properties.firetime ~= "defeat" then
		self.properties.firebullet = false
	end

	local friendly = self.properties.friendly

	local defeatcoroutine = self.properties.defeatcoroutine
	defeatcoroutine = self[defeatcoroutine]
	if defeatcoroutine then
		self.coroutine:startCoroutine(defeatcoroutine, self)
	else
		self:defeatDefaultRoutine()
	end

	if friendly then
		levity.scripts:broadcast("friendKilled", self.id)
	else
		local score = self.properties.score
		levity.scripts:broadcast("pointsScored", score or 100)
		levity.scripts:broadcast("enemyDefeated", self.id)
	end
	levity.scripts:broadcast("npcDefeated", self.id)

	local defeattriggerid = self.properties.defeattriggerid
	if levity:getObject(defeattriggerid) then
		levity.scripts:send(defeattriggerid, "activate")
	end

	if self.properties.defeatclearenemies then
		self.properties.defeatclearenemies = false
		levity.scripts:broadcast("defeat", levity.map.properties.playerid)
		levity.scripts:broadcast("allItemsPulled")
	end
end

--function NPC:allFriendsSaved()
--	self.emote:setEmote("emotes", "heart")
--end

function NPC:endTrigger()
	self.properties.fleeing = true
	return true
end

function NPC:discard()
	local rideid = self.properties.rideid
	local playerid = levity.map.properties.playerid
	if rideid == "player" then
		rideid = playerid
	end
	if rideid then
		levity.scripts:send(rideid, "removeRider", self.id)
	end

	local activatedamagelayers = self.properties.activatedamagelayers
	if activatedamagelayers then
		for layer in activatedamagelayers:gmatch("([^\n]+)\n") do
			levity.scripts:send(layer, "setDamageActive", self.id, false)
		end
	end

	levity:discardObject(self.id)
	levity.scripts:send(self.properties.triggerid, "someoneDiscarded", self.id)
	levity.scripts:broadcast("npcGone", self.id)
end

function NPC:beginDraw()
	local healthpercent = self.health and self.health:getHealthPercent() or 1
	local wound = 0xff*healthpercent
	local color = self.object.color
	if not color then
		color = {}
		self.object.color = color
	end
	color[1] = 0xff
	color[2] = wound
	color[3] = wound
	color[4] = 0xff
	if self.health and self.health:isHealing() then
		local flash = 1.5 + math.cos(30*math.pi*love.timer.getTime())
		color[2] = 0xff * flash
	end
	if self.shooter and self.shooter:isAttacking()
	or self.rescuer and self.rescuer:isRescuing()
	then
		local flash = 3 + 2*math.cos(30*math.pi*love.timer.getTime())
		for i = 1,3 do
			color[i] = color[i] * flash
		end
	end

	if self.cover and self.cover:hasCover() then
		color[4] = color[4] * .5
	end
end

return NPC
