--- Enemy character
--@module Enemy

--- Enemy properties
--@field fleeing Discard once offscreen?
--@field iscover Can other enemies touch to take cover from player fire?
--@field isshield Can other enemies touch to block damage and capture?
--@field strafearc Can face target if angle to target is this close to movement angle
--@field rideid Other moving object to ride on; "colliding" for first colliding enemy
--@field rideseat Name of the point to sit at on the ride object
--@field rideshield Does riding block damage and capture?
--@field ridedefeat Defeat if ride destroyed?
--@field health 0 = noncombatant
--@field score awarded on defeat
--@field defeatitemvelx
--@field defeatitemvely
--@field defeatspark
--@field faceangle Manually set facing angle (E=0, S=90, W=180, N=270)
--@table Properties

local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = require "ShmupBullet"
local Item = require "Item"

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

local Enemy = class()

Enemy.PlayerMeleeDamage = 15

function Enemy:_init(object)
	self.object = object
	self.id = object.id
	self.body = object.body
	self.properties = object.properties

	self.oncamera = false
	self.exitedcamera = false -- false until first time going off-camera, then opposite of oncamera

	local category
	if self.properties.iscover then
		category = Enemy.CoverCategory
	else
		category = Enemy.NonCoverCategory
	end

	local mask
	if self.properties.health and self.properties.health >= 1 then
		mask = self.properties.bombdamageonly and Enemy.NonCombatantMask or Enemy.CombatantMask
		self.health = levity.scripts:newScript(self.id, "Health", self.object)
		if self.properties.takescover then
			self.cover = levity.scripts:newScript(self.id, "TakingCover", self.object)
		end
	else
		mask = Enemy.NonCombatantMask
	end

	for _, fixture in ipairs(self.body:getFixtureList()) do
		fixture:setCategory(category)
		fixture:setMask(mask)
	end

	self.body:setFixedRotation(true)
	self.facing = levity.scripts:newScript(self.id, "Facing", self.object)

	if self.properties.pathid ~= nil
	or self.properties.rideid ~= nil
	then
		self.mover = levity.scripts:newScript(self.id, "Mover", self.object)
	end

	local nexttype = self.properties.nexttype
	if nexttype then
		self.typechanger = levity.scripts:newScript(self.id,
					"TypeChanger", self.object)
	end

	if self.properties.rescuehumans then
		self.rescuer = levity.scripts:newScript(self.id, "Rescuer", self.object)
	end

	local afterimage = self.properties.afterimage
	if afterimage ~= nil then
		self.afterimage = levity.scripts:newScript(self.id, "AfterImage", object)
	end

	self.shooter = levity.scripts:newScript(self.id, "Shooter", self.object)

	if self.properties.defeatcoroutine then
		self.coroutine = levity.scripts:newScript(self.id, "Coroutine", object)
	end

	local emotetileset = self.properties.emotetileset
	local emotetileid = self.properties.emotetileid
	if emotetileset or emotetileid then
		self.emote = levity.scripts:newScript(self.id, "Emote", object)
	end

	self.shields = 0
end

Enemy.CoverCategory = {
	ShmupCollision.Category_EnemyTeam,
	ShmupCollision.Category_EnemyCover
}

Enemy.NonCoverCategory = {
	ShmupCollision.Category_EnemyTeam
}

Enemy.CombatantMask = {
	ShmupCollision.Category_EnemyShot
}

Enemy.NonCombatantMask = {
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_EnemyShot,
}

Enemy.InvulnerableMask = {
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_EnemyShot,
}

function Enemy:initQuery()
	local triggerid = self.properties.triggerid
	if triggerid then
		levity.scripts:send(triggerid, "addEnemy", self.id)
	end
	local rideid = self.properties.rideid
	if rideid then
		levity.scripts:send(rideid, "addRider", self.id)
	end
end

function Enemy:isOnCamera()
	return self.oncamera
end

function Enemy:canBeLockTarget()
	local rideid = self.properties.rideid
	return self.oncamera and self.object.visible
		and self.health and not self.health:isDefeated()
		and self.shields < 1
		and not (rideid and self.properties.rideshield)
		and not self.properties.bombdamageonly
end

function Enemy:canBeBombMeleeTarget()
	return self:canBeLockTarget()
end

function Enemy:endMove(dt)
	local faceangle = self.properties.faceangle

	if type(faceangle) == "number" then
		faceangle = math.rad(faceangle)
	elseif faceangle == "" then
		faceangle = nil
	else
		local target = self.shooter:getTargetObject(self.properties.firetargetid)
			or levity.map.objects[levity.map.properties.playerid]
		local targetcx, targetcy = target.body:getWorldCenter()
		local cx, cy = self.body:getWorldCenter()
		local targetdx, targetdy = targetcx - cx, targetcy - cy
		local targetdist = math.hypot(targetdx, targetdy)

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

		local dot = math.dot(targetdx, targetdy, vx, vy)
		local mindot = math.cos(arc) * targetdist * speed

		if speed < 1 or dot >= mindot then
			faceangle = math.atan2(targetdy, targetdx)
		else
			faceangle = math.atan2(vy, vx)
		end
	end
	if faceangle then
		self.facing:faceAngle(faceangle)
	end

	if self.properties.fleeing and self.exitedcamera then
		levity.scripts:send(self.id, "discard")
		levity.scripts:broadcast("enemyFled", self.id)
	end
end

function Enemy:beginContact_PlayerShot(myfixture, otherfixture, contact)
	if not self.health
	or self.cover and self.cover:hasCover()
	or self.shields > 0
	or self.properties.rideid and self.properties.rideshield then
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

function Enemy:beginContact_PlayerBomb(myfixture, otherfixture, contact)
	local bulletproperties = otherfixture:getBody():getUserData().properties
	local damage = bulletproperties.damage or 1
	if self.health then
		self.health:addDPS(damage)
	end
end

function Enemy:beginContact_PlayerTeam(myfixture, otherfixture, contact)
	local otherid = otherfixture:getBody():getUserData().id
	if self.health and otherid == levity.map.properties.playerid then
		self.health:addDPS(Enemy.PlayerMeleeDamage)
	end
end

function Enemy:beginContact_EnemyTeam(myfixture, otherfixture, contact)
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
end

function Enemy:beginContact(myfixture, otherfixture, contact)
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
		elseif category == ShmupCollision.Category_Camera then
			self.oncamera = true
			self.exitedcamera = false
		end
	end
end

function Enemy:preSolve(myfixture, otherfixture, contact)
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

function Enemy:endContact_PlayerBomb(myfixture, otherfixture, contact)
	local userdata = otherfixture:getBody():getUserData()
	local bulletproperties = userdata.properties
	local damage = bulletproperties.damage or 1
	if self.health then
		self.health:addDPS(-damage)
	end
end

function Enemy:endContact_PlayerTeam(myfixture, otherfixture, contact)
	local otherid = otherfixture:getBody():getUserData().id
	if self.health and otherid == levity.map.properties.playerid then
		self.health:addDPS(-Enemy.PlayerMeleeDamage)
	end
end

function Enemy:endContact_EnemyTeam(myfixture, otherfixture, contact)
	local otherproperties = otherfixture:getBody():getUserData().properties
	if otherproperties.isshield then
		self.shields = self.shields - 1
	end
end

function Enemy:endContact(myfixture, otherfixture, contact)
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
			self.exitedcamera = true
		end
	end
end

function Enemy:friendKilled(friendid)
	if friendid == tonumber(self.properties.firetargetid) then
		self.properties.firetargetid = nil
	end
	if friendid == tonumber(self.properties.pathid) then
		self.properties.pathid = nil
		levity.scripts:send(self.id, "setDest", nil, nil)
	end
end

Enemy.friendSaved = Enemy.friendKilled

function Enemy:enemyDefeated(enemyid)
	if self.id == enemyid then
		return
	end

	if self.properties.defeatedwithid == enemyid then
		self:defeat()
	end

	if self.properties.rideid == enemyid then
		self.properties.rideid = nil
		if self.properties.ridedefeat then
			self:defeat()
		end
		levity.scripts:send(self.id, "rideDestroyed")
	end

	local enemy = levity.map.objects[enemyid]
	if enemy and enemy.properties.rideid == self.id then
		local deltafiretime = self.properties.riderdestroyedchangefiretime
		local firetime = self.properties.firetime
		if deltafiretime and type(firetime) == "number" then
			self.properties.firetime = self.properties.firetime
				+ deltafiretime
		end

		if not self.mover:hasRiders() then
			if self.properties.riderdefeatedflee then
				self.properties.fleeing = true
				local fleepathid = self.properties.riderdefeatedfleepathid
				if fleepathid then
					self.properties.pathid = fleepathid
					levity.scripts:send(self.id, "setDest", nil, nil)
				end
			end

			self.properties.firebullet =
				self.properties.ridersdestroyedfirebullet
		end
	end
end

function Enemy:enemyFled(enemyid)
	local enemy = levity.map.objects[enemyid]
	if enemy and enemy.properties.rideid == self.id then
		if self.properties.riderdefeatedflee then
			self.properties.fleeing = true
		end
	end
end

function Enemy:defeatDefaultRoutine()
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

	local defeatdroptileid = self.properties.defeatdroptileid
	local defeatdroptileset = self.properties.defeatdroptileset
		or (self.object.tile and self.object.tile.tileset)
	if defeatdroptileid and defeatdroptileset then
		local gid = levity.map:getTileGid(defeatdroptileset, defeatdroptileid)
		self.object.layer:addObject({
			gid = gid,
			x = self.body:getX(),
			y = self.body:getY()
		})
	end

	local destroyedtile = self.properties.destroyedtile
		or self.object.tile and self.object.tile.properties.destroyedtile
	if destroyedtile then
		local destroyedgid = levity.map:getTileGid(
			self.object.tile.tileset, destroyedtile)

		self.object:setGid(destroyedgid, true, "static", true)

		for _, fixture in pairs(self.body:getFixtureList()) do
			fixture:setFilterData(0, 0, 0)
		end

		self.body:setLinearVelocity(0, 0)
	else
		levity.scripts:send(self.id, "discard")
	end

	self:dropDefeatItem()
end

function Enemy:dropDefeatItem()
	local kogid = Item.getKOGid(self)
	if kogid then
		local defeatitem = self.properties.defeatitem
		local defeatitemlaunch = self.properties.defeatitemlaunch
		local x, y = self.body:getPosition()
		Item.create(defeatitem, defeatitemlaunch,
				kogid, x, y, self.object.layer,
				nil, nil, nil, self.giveitemtoid)
	end
end

function Enemy:explosionClusterCoroutine(explosiontype, numexplosions, clusterradius, explosionlayer,
					particlelayer, numparticles, timeinterval)

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

function Enemy:defeat(giveitemtoid)
	if self.properties.defeated then
		return
	end
	self.properties.defeated = true
	self.giveitemtoid = giveitemtoid

	self.properties.rideshield = nil
	self.properties.pathid = nil
	self.properties.firebullet = nil

	levity.scripts:broadcast("pointsScored", self.properties.score or 100)

	local defeatcoroutine = self.properties.defeatcoroutine
	defeatcoroutine = self[defeatcoroutine]
	if defeatcoroutine then
		self.coroutine:startCoroutine(defeatcoroutine, self)
	else
		self:defeatDefaultRoutine()
	end

	levity.scripts:broadcast("enemyDefeated", self.id)

	local defeattriggerid = self.properties.defeattriggerid
	if levity:getObject(defeattriggerid) then
		levity.scripts:send(defeattriggerid, "activate")
	end

	if self.properties.defeatclearenemies then
		self.properties.defeatclearenemies = nil
		levity.scripts:broadcast("defeat", levity.map.properties.playerid)
		levity.scripts:broadcast("allItemsPulled")
	end
end

function Enemy:beginDraw()
	local color = self.object.color or {}
	for i=1,4 do
		color[i] = 0xff
	end

	if self.shooter:canFire() and self.shooter:isAttacking() then
		local flash = 3 + 2*math.cos(30*math.pi*love.timer.getTime())
		for i = 1,3 do
			color[i] = color[i] * flash
		end
	end

	if self.cover and self.cover:hasCover() then
		color[4] = color[4] * .5
	end

	self.object.color = color
end

function Enemy:endTrigger()
	self.properties.fleeing = true
	return true
end

function Enemy:discard()
	local rideid = self.properties.rideid
	if rideid then
		levity.scripts:send(rideid, "removeRider", self.id)
	end
	levity:discardObject(self.id)
	levity.scripts:send(self.properties.triggerid, "someoneDiscarded", self.id)
end

return Enemy
