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
	local tileset = levity:getMapTileset(tilesetid)

	local shot = {
		x = centerx,
		y = centery,
		width = tileset.tilewidth,
		height = tileset.tileheight,
		rotation = math.deg(angle),
		gid = tileset.firstgid + tileid,
		visible = true,
		properties = {
			script = "ShmupBullet",
			category = category
		}
	}
	levity:addObject(shot, layer, "dynamic")

	local mass = shot.body:getMass()
	shot.body:applyLinearImpulse(
		mass * speed * math.cos(angle),
		mass * speed * math.sin(angle))

	return shot
end

return ShmupBullet
