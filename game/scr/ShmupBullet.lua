local levity = require "levity"
local ShmupCollision = require "ShmupCollision"

local function beginMove(self, dt)
	if self.coroutine then
		assert(coroutine.resume(self.coroutine, self, dt))
	end

	local body = self.object.body
	local properties = self.object.properties
	local ax = properties.accelx
	local ay = properties.accely
	if ax and ay then
		local mass = body:getMass()
		body:applyForce(mass * ax, mass * ay)

		local vx, vy = body:getLinearVelocity()
		body:setAngle(math.atan2((vy + ay*.5), (vx + ax*.5)))
	end
end

local function loopedAnimation(self)
	levity:discardObject(self.object.id)
end

local ShmupBullet = class()
function ShmupBullet:_init(object)
	self.object = object
	self.object.body:setBullet(true)
	self.object.body:setFixedRotation(true)
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		local category = self.object.properties.category
		fixture:setCategory(category)

		if category == ShmupCollision.Category_PlayerShot then
			fixture:setMask(ShmupCollision.Category_CameraEdge,
					ShmupCollision.Category_PlayerTeam,
					ShmupCollision.Category_PlayerShot,
					ShmupCollision.Category_PlayerBomb,
					ShmupCollision.Category_NPCShot)
		elseif category == ShmupCollision.Category_PlayerBomb then
			fixture:setMask(ShmupCollision.Category_CameraEdge,
					ShmupCollision.Category_PlayerTeam,
					ShmupCollision.Category_PlayerShot,
					ShmupCollision.Category_PlayerBomb)
		else
			fixture:setMask(ShmupCollision.Category_CameraEdge,
					ShmupCollision.Category_PlayerShot,
					ShmupCollision.Category_NPCTeam,
					ShmupCollision.Category_NPCInCover,
					ShmupCollision.Category_NPCShot)
		end
	end

	local properties = self.object.properties

	self.object.body:setLinearVelocity(
		properties.velx or 0,
		properties.vely or 0)
	properties.velx = nil
	properties.vely = nil

	if properties.coroutine then
		levity.scripts:scriptAddEventFunc(self,
				self.object.id,
				"beginMove", beginMove)
		self.coroutine = coroutine.create(properties.coroutine)
	end

	if properties.accelx and properties.accely then
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

	self.exitedcamera = false
end

ShmupBullet.MaxTime = 10

function ShmupBullet:beginContact(yourfixture, otherfixture, contact)
	if otherfixture:getCategory() == ShmupCollision.Category_PlayerTeam
	or otherfixture:getCategory() == ShmupCollision.Category_PlayerBomb
	or otherfixture:getCategory() == ShmupCollision.Category_NPCTeam then
		if not self.object.properties.persist then
			levity:discardObject(self.object.id)
		end
	end
end

function ShmupBullet:preSolve(yourfixture, otherfixture, contact)
	contact:setEnabled(false)
end

function ShmupBullet:endContact(yourfixture, otherfixture, contact)
	if otherfixture:getCategory() == ShmupCollision.Category_Camera then
		self.exitedcamera = true
	end
end

function ShmupBullet:endMove(dt)
	if self.exitedcamera then
		levity:discardObject(self.object.id)
	elseif type(self.time) == "number" then
		self.time = self.time - dt
		if self.time <= 0 then
			levity:discardObject(self.object.id)
		end
	end
end

--- @table BulletParams
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

function ShmupBullet.create(params, x, y, angle, layer)
	ShmupBullet.fireOverTime(params, x, y, angle, layer, 0, 1)
end

function ShmupBullet.fireOverTime(params, x, y, angle, layer, time, interval)
	if params.category ~= ShmupCollision.Category_PlayerShot
	and params.category ~= ShmupCollision.Category_PlayerBomb then
		if levity.scripts:call(levity.map.properties.playerid, "isKilled") then
			return interval
		end
	end

	local tilesetid, tileid, category =
		params.tileset,
		params.tileid, params.category

	local accelx, accely = params.accelx, params.accely
	local damage = params.damage

	angle = angle or 0
	local speed = params.speed or 0
	local deg = math.deg(angle)
	local cos = math.cos(angle)
	local sin = math.sin(angle)
	local vx = speed * cos
	local vy = speed * sin
	local camvx, camvy = levity.scripts:call(
			levity.map.properties.cameraid, "getVelocity")
	if camvy then
		--vx = vx + camvx
		vy = vy + camvy
	end

	local gid = params.gid or levity.map:getTileGid(tilesetid, tileid)

	if type(layer) ~= "table" then
		layer = levity.map.layers[layer]
	end

	while time < interval do
		local shot = {
			x = x - vx * time,
			y = y - vy * time,
			rotation = deg, gid = gid,
			properties = {
				script = "ShmupBullet",
				category = category,
				damage = damage,
				velx = vx,
				vely = vy,
				accelx = accelx,
				accely = accely,
				lifetime = params.lifetime,
				persist = params.persist,
				coroutine = params.coroutine
			}
		}
		layer:addObject(shot)

		time = time + interval

		if params.sound then
			levity.bank:play(params.sound)
		end
	end

	return time
end

return ShmupBullet
