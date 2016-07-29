local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local bit = require "bit"
require "class"

local function beginMove(self, dt)
	local body = self.object.body
	local properties = self.object.properties
	local mass = body:getMass()
	local ax = properties.accelx
	local ay = properties.accely
	body:applyLinearImpulse(mass * ax, mass * ay)

	local vx, vy = body:getLinearVelocity()
	body:setAngle(math.atan2(vy + ay, vx + ax))
end

local ShmupBullet = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.body:setBullet(true)
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		local category = self.object.properties.category
		fixture:setCategory(category)

		if category == ShmupCollision.Category_PlayerShot then
			fixture:setMask(ShmupCollision.Category_CameraEdge,
					ShmupCollision.Category_Player,
					ShmupCollision.Category_PlayerShot)
		else
			fixture:setMask(ShmupCollision.Category_CameraEdge,
					ShmupCollision.Category_NPC,
					ShmupCollision.Category_InCoverNPC,
					ShmupCollision.Category_NPCShot)
		end
	end
	local properties = self.object.properties
	if properties.accelx and properties.accely then
		self.beginMove = beginMove
	end
end)

function ShmupBullet:beginContact(yourfixture, otherfixture, contact)
	if otherfixture:getCategory() == ShmupCollision.Category_Player
	or otherfixture:getCategory() == ShmupCollision.Category_NPC then
		self.object.dead = true
	end
end

function ShmupBullet:endContact(yourfixture, otherfixture, contact)
	if otherfixture:getCategory() == ShmupCollision.Category_Camera then
		self.object.dead = true
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
				accelx = accelx,
				accely = accely,
			}
		}
		levity:addObject(shot, layer, "dynamic")

		shot.body:setLinearVelocity(vx, vy)

		time = time + interval
	end

	return time
end

return ShmupBullet
