local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupAlly = levity.machine:requireScript("ShmupAlly")
require "class"

local ShmupNPC = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.body:setFixedRotation(true)
	self:setActive(false)
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_NPC)
		fixture:setMask(
			ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_NPC,
			ShmupCollision.Category_NPCShot)
	end
	self.health = 8
	self.captured = false
	self.npctype = levity:getTileColumnName(self.object.gid)
end)

function ShmupNPC:activate()
	self.ready = true
end

function ShmupNPC:setActive(active)
	self.object.visible = active
	self.object.body:setActive(active)
	self.ready = false
end

function ShmupNPC:beginContact_PlayerShot(myfixture, otherfixture, contact)
	self.health = self.health - 1
	if self.health <= 0 then
		local gid = levity:getTileGid(self.object.tile.tileset,
						"ko", self.npctype)
		levity:setObjectGid(self.object, gid, "dynamic", self.object.layer)

		myfixture:setMask(
			ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_PlayerShot,
			ShmupCollision.Category_NPC,
			ShmupCollision.Category_NPCShot)
	end
end

function ShmupNPC:beginContact_Player(myfixture, otherfixture, contact)
	if self.health <= 0 then
		self.captured = true
	end
end

function ShmupNPC:beginContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_Player then
		self:beginContact_Player(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_PlayerShot then
		self:beginContact_PlayerShot(myfixture, otherfixture, contact)
	end
end

function ShmupNPC:convertToAlly()
	local playerid = levity.map.properties.playerid
	local roomforallies = levity.machine:call(playerid, "roomForAllies")
	local tileset = levity:getMapTileset(self.object.tile.tileset)
	if roomforallies and string.find(tileset.name, "women") then
		local gid = levity:getTileGid("demonwomen", self.npctype, 0)
		levity:setObjectGid(self.object, gid, "dynamic", self.object.layer)
		levity.machine:newScript(self.object.id, "ShmupAlly")
	else
		self.object.destroy = true
	end
end

function ShmupNPC:beginMove(dt)
	if self.ready == true then
		self:setActive(true)
	end

	if not self.object.visible then
		return
	end

	if self.captured then
		self:convertToAlly()
	end
end

return ShmupNPC
