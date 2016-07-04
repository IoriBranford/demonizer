local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupAlly = levity.machine:requireScript("ShmupAlly")
require "class"

local ShmupNPC = class(function(self, id)
	self.object = levity.map.objects[id]
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self:setActive(false)

	local mask = {ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_NPC,
			ShmupCollision.Category_NPCShot}
	self.npctype = levity:getTileColumnName(self.object.gid)
	if string.find(self.npctype, "civ") == 1 then
		self.health = 0
		table.insert(mask, ShmupCollision.Category_PlayerShot)
	else
		self.health = 8
	end

	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_NPC)
		fixture:setMask(unpack(mask))
	end

	self.captured = false

	self.pathtimer = 0
	local pathtime = self.properties.pathtime or 1
	if pathtime then
		self.pathspeed = 1 / pathtime
	end
	local pathid = self.properties.pathid
	if type(pathid) == "string" then
		self.properties.pathid = tonumber(pathid)
	end
	self.oncamera = false
end)

local Sounds = {
	Hit = "hit.wav",
	KO = "knockout.wav",
	FemaleCapture = "item1.wav",
	MaleCapture = "item2.wav",
	Convert = "warp.wav"
}
levity.bank:load(Sounds)

ShmupNPC.ShotLayer = nil -- ShmupMap, set me once it's created

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
		self.properties.pathid = nil
		local gid = levity:getTileGid(self.object.tile.tileset,
						"ko", self.npctype)
		levity:setObjectGid(self.object, gid)

		myfixture:setMask(
			ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_PlayerShot,
			ShmupCollision.Category_NPC,
			ShmupCollision.Category_NPCShot)

		levity.bank:play(Sounds.KO)
	else
		levity.bank:play(Sounds.Hit)
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
	elseif category == ShmupCollision.Category_Camera then
		self.oncamera = true
	end
end

function ShmupNPC:endContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_Camera then
		self.oncamera = false
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
		levity.bank:play(Sounds.Convert)
	end

	if female then
		levity.bank:play(Sounds.FemaleCapture)
	else
		levity.bank:play(Sounds.MaleCapture)
	end
end

function ShmupNPC:beginMove(dt)
	if self.ready == true then
		self:setActive(true)
	end

	if not self.object.visible then
		return
	end

	local body = self.object.body
	local mass = body:getMass()
	local vx0, vy0 = body:getLinearVelocity()

	local pathid = self.properties.pathid
	if pathid then
		local vx, vy = levity.machine:call(pathid, "getVelocity",
					self.pathtimer, self.pathspeed)

		self.pathtimer = self.pathtimer + dt

		local pathfinished = levity.machine:call(pathid, "finished",
					self.pathtimer, self.pathspeed)
		if pathfinished then
			self.properties.pathid = nil
		end

		body:setLinearVelocity(vx, vy)
	else
		body:setLinearVelocity(0, 0)
	end

	if self.captured then
		self:capturedByPlayer()
	end
end

return ShmupNPC