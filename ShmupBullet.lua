local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local bit = require "bit"
require "class"

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
					ShmupCollision.Category_NPCShot)
		end
	end
end)

function ShmupBullet:beginContact(yourfixture, otherfixture, contact)
	if otherfixture:getCategory() == ShmupCollision.Category_Player
	or otherfixture:getCategory() == ShmupCollision.Category_NPC then
		self.object.destroy = true
	end
end

function ShmupBullet:endContact(yourfixture, otherfixture, contact)
	if otherfixture:getCategory() == ShmupCollision.Category_Camera then
		self.object.destroy = true
	end
end

function ShmupBullet.create(centerx, centery, speed, angle, tilesetid, tileid, layer, category)
	ShmupBullet.fireOverTime(1, 1, cx, cy, speed, angle, tilesetid, tileid, layer, category)
end

function ShmupBullet.fireOverTime(time, interval, cx, cy, speed, angle, tilesetid, tileid, layer, category)
	local deg = math.deg(angle)
	local cos = math.cos(angle)
	local sin = math.sin(angle)
	local vx = speed * cos
	local vy = speed * sin

	local distapart = speed * interval
	local dx = distapart * cos
	local dy = distapart * sin

	local tileset = levity:getMapTileset(tilesetid)
	local gid = tileset.firstgid + tileid

	while time >= interval do
		local shot = {
			x = cx, y = cy, rotation = deg, gid = gid,
			properties = {
				script = "ShmupBullet", category = category
			}
		}
		levity:addObject(shot, layer, "dynamic")

		shot.body:setLinearVelocity(vx, vy)

		cx = cx + dx
		cy = cy + dy
		time = time - interval
	end

	return time
end

return ShmupBullet
