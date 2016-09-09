local levity = require "levity"
local ShmupCollision = require "ShmupCollision"

local function beginMove(self, dt)
	local body = self.object.body
	local properties = self.object.properties
	local mass = body:getMass()
	local ax = properties.accelx
	local ay = properties.accely
	body:applyForce(mass * ax, mass * ay)

	local vx, vy = body:getLinearVelocity()
	body:setAngle(math.atan2(
			(vy + ay*.5),
			(vx + ax*.5)))
end

local ShmupBullet = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.body:setBullet(true)
	self.object.body:setFixedRotation(true)
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		local category = self.object.properties.category
		fixture:setCategory(category)

		if category == ShmupCollision.Category_PlayerShot then
			fixture:setMask(ShmupCollision.Category_CameraEdge,
					ShmupCollision.Category_PlayerTeam,
					ShmupCollision.Category_PlayerShot)
		else
			fixture:setMask(ShmupCollision.Category_CameraEdge,
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

	if properties.accelx and properties.accely then
		self.beginMove = beginMove
	end
end)

function ShmupBullet:beginContact(yourfixture, otherfixture, contact)
	if otherfixture:getCategory() == ShmupCollision.Category_PlayerTeam
	or otherfixture:getCategory() == ShmupCollision.Category_NPCTeam then
		levity:discardObject(self.object.id)
	end
end

function ShmupBullet:endContact(yourfixture, otherfixture, contact)
	if otherfixture:getCategory() == ShmupCollision.Category_Camera then
		levity:discardObject(self.object.id)
	end
end

--- @table BulletParams
-- @field x
-- @field y
-- @field damage
-- @field speed in px/sec
-- @field angle in radians
-- @field gid
-- @field category
-- @field accelx in px/sec/sec
-- @field accely in px/sec/sec

function ShmupBullet.create(params, layer)
	ShmupBullet.fireOverTime(params, layer, 0, 1)
end

function ShmupBullet.fireOverTime(params, layer, time, interval)
	local x, y, speed, angle, tilesetid, tileid, category = 
		params.x, params.y, params.speed, params.angle, params.tileset,
		params.tileid, params.category

	local accelx, accely = params.accelx, params.accely
	local damage = params.damage

	local deg = math.deg(angle)
	local cos = math.cos(angle)
	local sin = math.sin(angle)
	local vx = speed * cos
	local vy = speed * sin

	local gid = params.gid
	if not gid then
		local tileset = levity:getMapTileset(tilesetid)
		gid = tileset.firstgid + tileid
	end

	while time <= 0 do
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
			}
		}
		layer:addObject(shot)

		time = interval
	end

	return time
end

return ShmupBullet
