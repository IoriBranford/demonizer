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
--@field facerotate Rotate sprite to face angle
--@field immuneplayertouch
--@field immuneplayershot
--@field immuneplayerbomb
--@field touchdamagefriend
--@field visibleonlyineditor Override the in-editor visibility setting
--@table Properties

local levity = require "levity"
local Tiles = require "levity.tiles"
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = require "ShmupBullet"
local Item = require "Item"
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

local NPC = class(require("Script"))

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
	self.oncameraedge = 0

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

	if not self.properties.defeatcoroutine and self.properties.defeatrepeatexplosiontype then
		self.properties.defeatcoroutine = "defeatDefaultCoroutine"
	end
	if self.properties.defeatcoroutine then
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

	local vx = self.properties.velx
	local vy = self.properties.vely
	if vx and vy then
		self.body:setLinearVelocity(vx, vy)
	end

	if self.properties.visibleonlyineditor then
		self.object.visible = false
	end
end

function NPC:initQuery()
	local triggerid = self.properties.triggerid
	if triggerid then
		if self.properties.friendly then
			self:send(triggerid, "addFriend", self.id)
		elseif self.properties.health then
			self:send(triggerid, "addEnemy", self.id)
		end
	end
	local rideid = self.properties.rideid
	if rideid == "player" then
		rideid = levity.map.properties.playerid
	end
	if rideid then
		self:send(rideid, "addRider", self.id)
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
	local playerid = levity.map.properties.playerid
	return self.oncamera and self.oncameraedge ~= 1
		and not self.properties.invulnerable
		and self.health and not self.health:isDefeated()
		and self.shields < 1
		and not (self.properties.rideid and self.properties.rideshield)
		and not (self.properties.ridershield and self:call(self.id, "hasRiders"))
		and not self:call(playerid, "isInDialogue")
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
			self:send(rideid, "removeRider", self.id)
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
			self:send(newrideid, "addRider", self.id)
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
			self:send(particlelayer, "emit", 1, x, y,
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
			self:send(layer, "setDamageActive", self.id, active)
		end
	end

	local faceangle = self.properties.faceangle

	if type(faceangle) == "number" then
		faceangle = math.rad(faceangle)
	elseif faceangle ~= false then
		local vx, vy
		local speed

		local rideseat = self.properties.rideseat
		rideseat = self:call(self.properties.rideid,
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
			local det = math.det(vx, vy, targetdx, targetdy)
			if det < 0 then
				faceangle = faceangle - arc
			else
				faceangle = faceangle + arc
			end
		end
	end
	if faceangle then
		self.facing:faceAngle(faceangle)
		if self.properties.facerotate then
			self.body:setAngle(faceangle)
		end
	end

	if self.properties.fleeing and self.oncamera == false then
		local friendly = self.properties.friendly
		local triggerid = self.properties.triggerid

		if friendly and self.properties.fleeingkills
		and not self:call(triggerid, "areAllEnemiesDefeated") then
			self:send(self.id, "defeat", "fleeingkills")
		else
			if friendly and not self.properties.hypnotistid
			and not self:call(self.properties.rideid, "isRider", self.id)
			then
				self:send(triggerid, "friendSaved", self.id)
			end
			self:send(self.id, "discard")
		end
	end

	local fadeoutspeed = self.properties.fadeoutspeed
	if fadeoutspeed then
		local alpha = self.fadealpha or 0xff
		alpha = alpha - dt*fadeoutspeed*0xff
		self.fadealpha = alpha
		if alpha <= 0 then
			self:send(self.id, "discard")
		end
	end
end

function NPC:beginContact_PlayerShot(myfixture, otherfixture, contact)
	if self.properties.friendly then
		return
	end
	if not self.health or self.cover and self.cover:fixtureHasCover(myfixture) then
		self:send(self.id, "suppress")
	else
		local bulletproperties = otherfixture:getBody():getUserData().properties
		local damage = bulletproperties.damage or 1
		if self:canTakeDamage() then
			self.health:addDamage(damage)
			bulletproperties.damage = 0
		end

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
		local otherid = otherfixture:getBody():getUserData().id
		self.health:addDPS(otherid, damage)
	end
end

function NPC:beginContact_PlayerTeam(myfixture, otherfixture, contact)
	if self.properties.meleeknockback then
		levity.bank:play(self.properties.meleesound)
	end

	if self.health then
		local otherdata = otherfixture:getBody():getUserData()
		local otherid = otherdata.id
		if self.properties.friendly or self.properties.hypnotistid then
			local playertouchheal = self.properties.playertouchheal
			if playertouchheal and otherid == levity.map.properties.playerid then
				self.health:addDPS(otherid, -playertouchheal)
			end
		elseif not self.properties.immuneplayertouch
		and not (self.properties.immuneplayertouchincover and self:call(self.id, "fixtureHasCover", myfixture)) then
			local otherproperties = otherfixture:getBody():getUserData().properties
			local touchdps = self.properties.playerteamtouchdps or otherproperties.touchdps
			if touchdps then
				self.health:addDPS(otherid, touchdps)
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

	if self.properties.friendly then
		local touchdamagefriend = otherproperties.touchdamagefriend
		if touchdamagefriend and self:canTakeDamage() then
			self.health:addDPS(otherid, touchdamagefriend)
		end
	end

	if self.properties.rideid == "colliding" then
		self:send(otherid, "addRider", self.id)
		if self:call(otherid, "isRider", self.id) then
			self.properties.rideid = otherid
		end
	end
	if self.properties.enemytouchdefeat then
		self:send(self.id, "defeat", "enemytouchdefeat")
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
			self.oncamera = true
			self.oncameraedge = self.oncameraedge + 1
		elseif category == ShmupCollision.Category_EnemyCover then
			if self.properties.coverdefeat then
				self:send(self.id, "defeat", "coverdefeat")
			end
			local otherdata = otherfixture:getBody():getUserData()
			local otherproperties = otherdata and otherdata.properties
			if otherproperties and otherproperties.isshield then
				self.shields = self.shields + 1
			end
		elseif category == ShmupCollision.Category_EnemyBounds then
			if self.properties.enemyboundsdefeat then
				self:send(self.id, "defeat", "enemyboundsdefeat")
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
			local isvehicle = self:call(self.id, "isRider", otherid)
			local isrider = self:call(otherid, "isRider", self.id)
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

function NPC:isLastContactWithBody(otherbody, lastcontact)
	for _, contact in pairs(self.body:getContactList()) do
		if contact ~= lastcontact and contact:isTouching() then
			local fix1, fix2 = contact:getFixtures()
			local myfix, otherfix = fix1, fix2
			if fix1:getBody() ~= self.body then
				myfix = fix2
				otherfix = fix1
			end
			if otherfix:getBody() == otherbody then
				return false
			end
		end
	end
	return true
end

function NPC:endContact_PlayerBomb(myfixture, otherfixture, contact)
	local userdata = otherfixture:getBody():getUserData()
	local bulletproperties = userdata.properties
	local damage = bulletproperties.damage or 1
	if self.health then
		local otherid = otherfixture:getBody():getUserData().id
		self.health:removeDPS(otherid)
	end
end

function NPC:endContact_PlayerTeam(myfixture, otherfixture, contact)
	if self.health then
		local otherid = otherfixture:getBody():getUserData().id
		self.health:removeDPS(otherid)
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
	if self.health then
		local otherid = otherfixture:getBody():getUserData().id
		self.health:removeDPS(otherid)
	end
end

function NPC:endContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_PlayerBomb then
			if self:isLastContactWithBody(otherfixture:getBody(), contact) then
				self:endContact_PlayerBomb(myfixture, otherfixture, contact)
			end
		elseif category == ShmupCollision.Category_PlayerTeam then
			if self:isLastContactWithBody(otherfixture:getBody(), contact) then
				self:endContact_PlayerTeam(myfixture, otherfixture, contact)
			end
		elseif category == ShmupCollision.Category_EnemyTeam then
			self:endContact_EnemyTeam(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_EnemyCover then
			local otherdata = otherfixture:getBody():getUserData()
			local otherproperties = otherdata and otherdata.properties
			if otherproperties and otherproperties.isshield then
				self.shields = self.shields - 1
			end
		elseif category == ShmupCollision.Category_Camera then
			if self:isLastContactWithBody(otherfixture:getBody(), contact) then
				self.oncamera = false
			end
		elseif category == ShmupCollision.Category_CameraEdge then
			self.oncameraedge = self.oncameraedge + 1
			if self:isLastContactWithBody(otherfixture:getBody(), contact) then
				self.oncamera = false
			end
		end
	end
end

function NPC:enemyDefeated(enemyid)
	local deltafiretime = self.properties.enemydefeatedchangefiretime
	local firetime = self.properties.firetime
	if deltafiretime and type(firetime) == "number" then
		firetime = firetime + deltafiretime
		self.properties.firetime = math.max(0.125, firetime)
	end
end

function NPC:npcDefeated(npcid)
	if self.id == npcid then
		return
	end

	if self.properties.defeatedwithid == npcid then
		self:send(self.id, "defeat", "defeatedwithid")
	end

	if self.properties.pathid == npcid then
		if self.properties.pathdefeat then
			self:send(self.id, "defeat", "pathdefeat")
		end
	end

	if self.properties.rideid == npcid then
		if self.properties.ridedefeat then
			self:send(self.id, "defeat", "ridedefeat")
		end
	end

	if self.properties.hypnotistid == npcid then
		self.properties.hypnotistid = nil
		self.typechanger:setType("FriendFleeing")
	end

	local npc = levity.map.objects[npcid]
	if npc and npc.properties.rideid == self.id then
		self:send(self.id, "riderDestroyed", npcid)

		local deltafiretime = self.properties.riderdefeatedchangefiretime
		local firetime = self.properties.firetime
		if deltafiretime and type(firetime) == "number" then
			self.properties.firetime = self.properties.firetime
				+ deltafiretime
		end

		if self.properties.anyriderdefeat then
			if npc.properties.friendly then
				self.properties.score = 0
			end
			self:send(self.id, "defeat", "anyriderdefeat")
		end
	end
end

function NPC:npcGone(npcid)
	if self.properties.rideid == npcid then
		self:send(npcid, "removeRider", self.id)
		self.properties.rideid = nil
		self:send(self.id, "rideDestroyed")
		if self.properties.ridediscarddefeat then
			self:send(self.id, "defeat", "ridediscarddefeat")
		end
	end

	local npc = levity.map.objects[npcid]
	if npc and npc.properties.rideid == self.id then
		if self.properties.riderdefeatedflee then
			self.properties.fleeing = true
			local fleepathid = self.properties.riderdefeatedfleepathid
			if fleepathid then
				self.properties.pathid = fleepathid
				self:send(self.id, "resetPath")
			end
		end

		if not self:call(self.id, "hasRiders") then
			self.properties.firebullet =
				self.properties.ridersdestroyedfirebullet

			if self.properties.allridersdefeat then
				if npc.properties.friendly then
					self.properties.score = 0
				end
				self:send(self.id, "defeat", "allridersdefeat")
			end
		end
	end
	if self.properties.hypnotistid == npcid then
		self.typechanger:setType("FriendHypnotized_Flee")
	end
end

function NPC:getDefeatDropGid(object, flipx, flipy)
	object = object or self.object
	local tileset = object.tile and object.tile.tileset
	local defeatdroptileset = object.properties.defeatdroptileset or tileset
	tileset = tileset and levity.map.tilesets[tileset]
	local defeatdroptileid = object.properties.defeatdroptileid or
		(tileset and tileset.name)

	local dropgid = defeatdroptileid and defeatdroptileset
		and levity.map:getTileGid(defeatdroptileset, defeatdroptileid)
	return dropgid and Tiles.setGidFlip(dropgid, flipx, flipy)
end

function NPC:dropDefeatItem(givetoid)
	if givetoid then
		self.properties.giveitemtoid = givetoid
	end
	self:objectDropDefeatItem(self.object)
end

local function getProperty(object, parent, key, default)
	return object.properties[key]
		or parent and parent.properties[key]
		or default
end

function NPC:objectDropDefeatItem(object, parent)
	local flipx, flipy
	local gid = object.gid or parent and parent.gid
	if gid then
		flipx, flipy = Tiles.getGidFlip(gid)
	end
	local itemgid = self:getDefeatDropGid(object, flipx, flipy)
			or self:getDefeatDropGid(parent, flipx, flipy)
	if itemgid and self.oncamera then
		local itemlayer = getProperty(object, parent, "defeatdroplayer",
						self.object.layer)
		local item = levity.map:newObject(itemlayer)
		item.gid = itemgid
		if parent then
			local ox, oy = levity.map:getTileShapePosition(
						parent.gid, object, true)
			item.x = ox + parent.x
			item.y = oy + parent.y
		else
			item.x, item.y = object.body:getWorldCenter()
		end
		local itemvx = getProperty(object, parent, "defeatdropvelx", 0)
		local itemvy = getProperty(object, parent, "defeatdropvely", 0)
		flipx = flipx and -1 or 1
		flipy = flipy and -1 or 1
		itemvx = itemvx * flipx
		itemvy = itemvy * flipy
		local launched = getProperty(object, parent, "defeatitemlaunch")
		if launched then
			itemvy = itemvy + Item.LaunchVelY
		end
		item.properties.launched = launched
		item.properties.velx = itemvx
		item.properties.vely = itemvy
		local giveitemtoid = getProperty(object, parent, "giveitemtoid")
		item.properties.pulledbyid = giveitemtoid
		--item.properties.rideid = not launched and self.properties.rideid
	end
end

function NPC:defeat(withwhat, giveitemtoid)
	if self.properties.defeated then
		return
	end
	if withwhat == "clear" and self.properties.immunetoclearenemies then
		return
	end
	if self.properties.immuneplayershot
	and self.properties.immuneplayertouch
	and withwhat ~= "bomb" then
		return
	end
	self.properties.defeated = true
	if giveitemtoid then
		self.properties.giveitemtoid = giveitemtoid
	end

	self.properties.rideshield = nil
	self.properties.pathid = nil
	self.properties.nexttypeevent = false
	if self.properties.firetime ~= "defeat" then
		self.properties.firebullet = false
	end

	local friendly = self.properties.friendly
	if friendly then
		self:broadcast("friendKilled", self.id)
	else
		local score = self.properties.score
		self:broadcast("pointsScored", score or 100)
		self:broadcast("enemyDefeated", self.id)
	end
	self:broadcast("npcDefeated", self.id)

	-- Defeat routine is responsible for discarding object,
	-- which broadcasts npcGone.
	-- It would be nice if npcDefeated/npcGone order didn't matter
	-- but doing defeat routine here makes the order consistent at least:
	-- first npcDefeated, then npcGone.
	local defeatcoroutine = self.properties.defeatcoroutine
	defeatcoroutine = self[defeatcoroutine]
	if defeatcoroutine and self.coroutine then
		self.coroutine:startCoroutine(defeatcoroutine, self)
	else
		self:defeatDefaultCoroutine()
	end

	local defeattriggerid = self.properties.defeattriggerid
	if levity:getObject(defeattriggerid) then
		self:send(defeattriggerid, "activate")
	end

	if self.properties.defeatclearenemies then
		self.properties.defeatclearenemies = false
		self:broadcast("defeat", "clear", levity.map.properties.playerid)
		self:broadcast("allItemsPulled")
	end
end

function NPC:tileObjectDefeatSparks(defeatspark)
	local tile = self.object.tile
	local tileobjects = tile and tile.objectGroup and tile.objectGroup.objects
	if not tileobjects or #tileobjects < 1 then
		return false
	end

	local numsparks = 0
	local gid = self.object.gid
	local x, y = self.body:getPosition()
	local defeatsparklayer = self.properties.defeatsparklayer or "sparks"
	for _, object in pairs(tileobjects) do
		local objdefeatspark = object.properties.defeatspark or defeatspark
		if levity.map.objecttypes[objdefeatspark] then
			local sparkx, sparky = levity.map:getTileShapePosition(gid, object, true)
			sparkx = sparkx + x
			sparky = sparky + y
			ShmupBullet.create(objdefeatspark, sparkx, sparky, 0, 0, defeatsparklayer)
			numsparks = numsparks + 1
		end
	end
	return numsparks > 0
end

function NPC:defeatDefaultCoroutine()
	if self.health then
		self.health:createDefeatFX()
	end

	for _, fixture in ipairs(self.body:getFixtureList()) do
		fixture:setMask(NPC.InvulnerableMask)
	end

	local defeatspark = self.properties.defeatspark
	if not self:tileObjectDefeatSparks(defeatspark) then
		if levity.map.objecttypes[defeatspark] then
			local sparkx, sparky = self.body:getWorldCenter()
			ShmupBullet.create(defeatspark, sparkx, sparky, 0, 0, "sparks")
		end
	end

	local repeatexplosiontype = self.properties.defeatrepeatexplosiontype
	if repeatexplosiontype then
		local numexplosions = self.properties.defeatrepeatexplosioncount
		local timeinterval = self.properties.defeatrepeatexplosioninterval
		local traveldist = self.properties.defeatrepeatexplosiontraveldist

		if self.coroutine then
			self.coroutine:waitTime(timeinterval)
		end
		self:explosionClusterCoroutine(repeatexplosiontype, numexplosions,
						traveldist, "sparks", nil, nil,
						timeinterval)
	end

	local gid = self.object.gid
	local tile = self.object.tile
	local tileobjects = tile and tile.objectGroup and tile.objectGroup.objects
	local x, y = self.body:getPosition()
	if tileobjects then
		local flipx, flipy = Tiles.getGidFlip(gid)
		for _, object in ipairs(tileobjects) do
			self:objectDropDefeatItem(object, self.object)
		end
	else
		self:dropDefeatItem()
	end

	self:send(self.id, "discard")
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
			self:send(particlelayer, "emit",
				numparticles, x, y, 0, 2*math.pi)
		end
		if timeinterval > 0 then
			if self.coroutine then
				self.coroutine:waitTime(timeinterval)
			end
		end
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
		self:send(rideid, "removeRider", self.id)
	end

	local activatedamagelayers = self.properties.activatedamagelayers
	if activatedamagelayers then
		for layer in activatedamagelayers:gmatch("([^\n]+)\n") do
			self:send(layer, "setDamageActive", self.id, false)
		end
	end

	levity:discardObject(self.id)
	self:send(self.properties.triggerid, "someoneDiscarded", self.id)
	self:broadcast("npcGone", self.id)
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
	color[4] = self.fadealpha or 0xff
	if self.health and self.health:isHealing() then
		local flash = 1.5 + math.cos(30*math.pi*love.timer.getTime())
		color[2] = 0xff * flash
	end
	if self.shooter and (self.shooter:isAttacking() or self.shooter:isWarning())
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

--function NPC:endDraw()
--	if self.health then
--		love.graphics.printf(self.health.health, self.object.x, self.object.y, self.object.width or 64)
--	end
--end

return NPC
