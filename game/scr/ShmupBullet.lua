local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local tablex = require "pl.tablex"

local function beginMove(self, dt)
	if self.coroutine then
		assert(coroutine.resume(self.coroutine, self, dt))
	end

	local body = self.body
	local properties = self.properties
	local ax = properties.accelx
	local ay = properties.accely
	if ax and ay then
		local mass = body:getMass()
		body:applyForce(mass * ax, mass * ay)

		local vx, vy = body:getLinearVelocity()
		body:setAngle(math.atan2((vy + ay*.25), (vx + ax*.25)))
	end
end

local function loopedAnimation(self)
	levity:discardObject(self.object.id)
end

local ShmupBullet = class(require("Script"))
function ShmupBullet:_init(object)
	self.object = object
	self.properties = object.properties
	self.body = object.body
	self.body:setBullet(true)
	self.body:setFixedRotation(true)
	for _, fixture in ipairs(self.body:getFixtureList()) do
		fixture:setSensor(true)
		local category = self.properties.category
		fixture:setCategory(category)

		if category == ShmupCollision.Category_PlayerShot then
			fixture:setMask(ShmupCollision.Category_Camera,
					ShmupCollision.Category_CameraEdge,
					--ShmupCollision.Category_PlayerTeam, -- allow friendly fire of hypnotized friends
					ShmupCollision.Category_PlayerShot,
					ShmupCollision.Category_PlayerBomb,
					ShmupCollision.Category_EnemyShot,
					ShmupCollision.Category_EnemyCover,
					ShmupCollision.Category_EnemyBounds,
					ShmupCollision.Category_BonusMaze
					)
		elseif category == ShmupCollision.Category_PlayerBomb then
			fixture:setMask(ShmupCollision.Category_Camera,
					ShmupCollision.Category_CameraEdge,
					ShmupCollision.Category_PlayerTeam,
					ShmupCollision.Category_PlayerShot,
					ShmupCollision.Category_PlayerBomb,
					ShmupCollision.Category_EnemyCover,
					ShmupCollision.Category_EnemyBounds,
					ShmupCollision.Category_BonusMaze
					)
		else
			fixture:setMask(ShmupCollision.Category_Camera,
					ShmupCollision.Category_CameraEdge,
					ShmupCollision.Category_PlayerShot,
					ShmupCollision.Category_EnemyTeam,
					ShmupCollision.Category_EnemyShot,
					ShmupCollision.Category_EnemyCover,
					ShmupCollision.Category_EnemyBounds,
					ShmupCollision.Category_BonusMaze)
		end
	end

	local properties = self.properties

	self.body:setLinearVelocity(
		properties.velx or 0,
		properties.vely or 0)
	properties.velx = nil
	properties.vely = nil

	local co = properties.coroutine
	if type(co) == "string" then
		co = ShmupBullet.Coroutines[co]
	end
	if co then
		self.coroutine = coroutine.create(co)

		levity.scripts:scriptAddEventFunc(self,
				self.object.id,
				"beginMove", beginMove)
	end

	if properties.accelx or properties.accely then
		properties.accelx = properties.accelx or 0
		properties.accely = properties.accely or 0
		levity.scripts:scriptAddEventFunc(self,
				self.object.id,
				"beginMove", beginMove)
	end

	self.time = properties.lifetime
	if self.time then
		if self.time == "animation" then
			levity.scripts:scriptAddEventFunc(self,
					self.object.id,
					"loopedAnimation", loopedAnimation)
		else
			self.time = math.min(self.time, ShmupBullet.MaxTime)
		end
	else
		self.time = ShmupBullet.MaxTime
	end
end

ShmupBullet.MaxTime = 10

function ShmupBullet:beginContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())

		if category == ShmupCollision.Category_PlayerTeam
		or category == ShmupCollision.Category_PlayerBomb
		or category == ShmupCollision.Category_EnemyTeam
		then
			local otherdata = otherfixture:getBody():getUserData()
			local otherid = otherdata and otherdata.id
			local otherproperties = otherdata and otherdata.properties
			local otherhascover = otherid and self:call(otherid, "fixtureHasCover", otherfixture)
			local otherhypnotized = otherproperties and otherproperties.hypnotistid
			local passhypnotized = self.properties.category == ShmupCollision.Category_EnemyShot
			local otherfriendly = otherproperties and otherproperties.friendly
			local passfriendly = self.properties.category == ShmupCollision.Category_PlayerShot
			if not otherhascover and not self.properties.persist
			and not (otherhypnotized and passhypnotized)
			and not (otherfriendly and passfriendly)
			then
				levity:discardObject(self.object.id)
				break
			end
		end
	end
end

function ShmupBullet:preSolve(myfixture, otherfixture, contact)
	contact:setEnabled(false)
end

function ShmupBullet:endMove(dt)
	local x, y = self.body:getPosition()
	local x1, y1 = levity.camera.x, levity.camera.y
	local x2, y2 = x1 + levity.camera.w, y1 + levity.camera.h
	y1 = y1 + (y1-y2)/4 -- let bullets with gravity go off the top slightly and come back down
	if x < x1 or x > x2 or y < y1 or y > y2 then
		levity:discardObject(self.object.id)
	elseif type(self.time) == "number" then
		self.time = self.time - dt
		if self.time <= 0 then
			levity:discardObject(self.object.id)
		end
	end
end

function ShmupBullet:allBulletsCleared()
	levity:discardObject(self.object.id)
end

--- Bullet params
-- @field damage
-- @field speed in px/sec
-- @field tileset
-- @field tileid
-- @field gid as alternative to tileset and tileid
-- @field category
-- @field accelx in px/sec/sec
-- @field accely in px/sec/sec
-- @field lifetime in sec
-- @field persist do not destroy on impact
-- @field coroutine
-- @field animated
-- @field collidable
-- @table BulletParams

function ShmupBullet.create(params, x, y, vx, vy, layer, keepupwithcamera, silent)
	ShmupBullet.fireOverTime(params, x, y, vx, vy, layer, 1, 1, keepupwithcamera, silent)
end

local NewBulletProperties = {}
function ShmupBullet.fireOverTime(params, x, y, velx, vely, layer, time, interval, keepupwithcamera, silent)
	local bullettype

	if type(params) == "string" then
		bullettype = params
		params = levity.map.objecttypes[params]
	end

	if math.hypotsq(velx, vely) < 4 then
		local speed = params.speed or 0
		velx = speed*velx
		vely = speed*vely
	end
	local rotation = 0
	if velx ~= 0 or vely ~= 0 then
		rotation = math.deg(math.atan2(vely, velx))
	end
	if keepupwithcamera then
		local camvelx, camvely = levity.scripts:call(
				levity.map.properties.cameraid, "getVelocity")
		if camvely then
			--velx = velx + camvelx
			vely = vely + camvely
		end
	end

	for k,_ in pairs(NewBulletProperties) do
		NewBulletProperties[k] = nil
	end
	NewBulletProperties.velx = velx
	NewBulletProperties.vely = vely
	if not bullettype then
		NewBulletProperties.script = "ShmupBullet"
		NewBulletProperties.category = params.category
		NewBulletProperties.damage = params.damage
		NewBulletProperties.accelx = params.accelx
		NewBulletProperties.accely = params.accely
		NewBulletProperties.lifetime = params.lifetime
		NewBulletProperties.persist = params.persist
		NewBulletProperties.coroutine = params.coroutine
		NewBulletProperties.animated = params.animated
		NewBulletProperties.collidable = params.collidable
	end

	local tilesetid, tileid = params.tileset, params.tileid or 0
	local gid = params.gid or levity.map:getTileGid(tilesetid, tileid)

	if type(layer) ~= "table" then
		layer = levity.map.layers[layer]
	end

	while time >= interval do
		time = time - interval

		local shot = levity.map:newObject(layer)
		shot.type = bullettype
		shot.x = x + velx * time
		shot.y = y + vely * time
		shot.rotation = rotation
		shot.gid = gid
		for k,v in pairs(NewBulletProperties) do
			shot.properties[k] = v
		end

		if not silent then
			levity.bank:play(params.sound)
		end
	end

	return time
end

local Coroutines = {}
ShmupBullet.Coroutines = Coroutines

function Coroutines.PlayerBomb_FireShrapnel(self)
	local BurstShrapnel = 8
	local angle = 0
	while true do
		local x, y = self.body:getWorldCenter()
		for i = 1, BurstShrapnel do
			ShmupBullet.create("BulletPlayerBombShrapnel",
			x, y, math.cos(angle), math.sin(angle), "playershots")
			angle = angle + math.pi*2/BurstShrapnel
		end
		angle = angle - math.pi/BurstShrapnel

		local t = 1/20
		while t > 0 do
			local _, dt = coroutine.yield()
			t = t - dt
		end
	end
end

function ShmupBullet.explodeTileLayer(tilelayer, debrislayer, explosioncenterx, explosioncentery)
	local map = levity.map
	debrislayer = debrislayer or "sparks"
	if type(debrislayer) ~= "table" then
		debrislayer = map.layers[debrislayer]
	end
	tilelayer.visible = false
	local tw = levity.map.tilewidth
	local th = levity.map.tileheight
	local camera = levity.camera
	local tlox = tilelayer.offsetx
	local tloy = tilelayer.offsety
	local cw = levity.camera.w
	local ch = levity.camera.h
	explosioncenterx = explosioncenterx or cw/2
	explosioncentery = explosioncentery or ch
	local cx = levity.camera.x + explosioncenterx
	local cy = levity.camera.y + explosioncentery
	for r, row in pairs(tilelayer.data) do
		local y = r * th + tloy
		for c, tile in pairs(row) do
			local debris = map:newObject(debrislayer)
			local x = c * tw + tlox - tw
			debris.type = "Debris"
			debris.gid = tile.gid
			local ox = -tile.width/2
			local oy = tile.height/2
			debris.tileoffsetx = ox
			debris.tileoffsety = oy
			debris.x = x - ox
			debris.y = y - oy
			local velx = (x - cx)*1.5
			local vely = (y - cy)*4
			debris.properties.velx = velx
			debris.properties.vely = vely
			local particles = tile.properties.explodeparticles
			if particles then
				levity.scripts:send(particles, "emit", 4,
					x - ox, y - oy, math.atan2(vely, velx))
			end
		end
	end
end

return ShmupBullet
