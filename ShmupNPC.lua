local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupAlly = levity.machine:requireScript("ShmupAlly")
require "class"

local ShmupNPC = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.body:setFixedRotation(true)
	self:setActive(false)
	local mask
	self.npctype = levity:getTileColumnName(self.object.gid)
	if string.find(self.npctype, "civ") == 1 then
		self.health = 0
		mask = {ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_PlayerShot,
			ShmupCollision.Category_NPC,
			ShmupCollision.Category_NPCShot}
	else
		self.health = 8
		mask = {ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_NPC,
			ShmupCollision.Category_NPCShot}
	end

	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_NPC)
		fixture:setMask(unpack(mask))
	end

	self.captured = false
end)

ShmupNPC.ShotLayer = nil -- ShmupMap, set me once it's created

ShmupNPC.KOSound = "knockout.wav"
ShmupNPC.FemaleCaptureSound = "item1.wav"
ShmupNPC.MaleCaptureSound = "item2.wav"
ShmupNPC.ConvertSound = "warp.wav"

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
		levity:setObjectGid(self.object, gid)

		myfixture:setMask(
			ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_PlayerShot,
			ShmupCollision.Category_NPC,
			ShmupCollision.Category_NPCShot)

		levity.bank:play(ShmupNPC.KOSound)
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

function ShmupNPC:capturedByPlayer()
	local playerid = levity.map.properties.playerid
	local roomforallies = levity.machine:call(playerid, "roomForAllies")
	local tileset = levity:getMapTileset(self.object.tile.tileset)
	local female = string.find(tileset.name, "women") ~= nil

	if not roomforallies or not female then
		self.object.destroy = true
	else
		local player = levity.map.objects[playerid]
		if player then
			levity:changeObjectLayer(self.object, player.layer)
		end

		local gid = levity:getTileGid(self.object.tile.tileset,
						"up", self.npctype)
		levity:setObjectGid(self.object, gid, false)

		levity.machine:newScript(self.object.id, "ShmupAlly")
		levity.bank:play(ShmupNPC.ConvertSound)
	end

	if female then
		levity.bank:play(ShmupNPC.FemaleCaptureSound)
	else
		levity.bank:play(ShmupNPC.MaleCaptureSound)
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
		self:capturedByPlayer()
	end
end

return ShmupNPC
