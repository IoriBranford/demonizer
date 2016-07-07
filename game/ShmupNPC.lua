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

	local tileset = levity:getMapTileset(self.object.tile.tileset)
	self.female = string.find(tileset.name, "women") ~= nil

	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_NPC)
		fixture:setMask(unpack(mask))
	end

	self.captured = false

	self.pathtimer = 0
	self.pathpoint = 1

	local pathid = self.properties.pathid
	if type(pathid) == "string" then
		self.properties.pathid = tonumber(pathid)
	end

	self.oncamera = false

	self.bleedouttimer = 0
end)

local Sounds = {
	Hit = "hit.wav",
	KO = "knockout.wav",
	FemaleCapture = "item1.wav",
	MaleCapture = "item2.wav",
	Convert = "warp.wav"
}
levity.bank:load(Sounds)

ShmupNPC.BleedOutTime = 5
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

		self.bleedouttimer = ShmupNPC.BleedOutTime
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

	if not roomforallies or not self.female then
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

	if self.female then
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
	local vx0, vy0 = body:getLinearVelocity()

	local pathid = self.properties.pathid
	if pathid then
		self.pathpoint = levity.machine:call(pathid, "updatePoint",
			self.pathpoint, body:getX(), body:getY(), vx0, vy0)

		self.pathtimer = self.pathtimer + dt

		if levity.machine:call(pathid, "finished", self.pathpoint)
		or self.pathtimer >= self.properties.pathtime then
			self.properties.pathid = nil
		else
			local vx, vy = levity.machine:call(pathid, "getVelocityTo",
			self.pathpoint, body:getX(), body:getY(),
			self.properties.pathtime)

			body:setLinearVelocity(vx, vy)
		end
	else
		body:setLinearVelocity(0, 0)
	end

	if self.captured then
		self:capturedByPlayer()
	end

	if self.bleedouttimer > 0 then
		self.bleedouttimer = self.bleedouttimer - dt
		if self.bleedouttimer <= 0 then
			self.object.destroy = true
		end
	end
end

function ShmupNPC:beginDraw()
	if self.bleedouttimer > 0 then
		local flashrate = 60 * math.sqrt(self.bleedouttimer)
		local flash = 0x80 * (math.cos(flashrate*math.pi) + 3)

		local red, green, blue = flash, flash, flash
		if self.female then
			green = 0xff
		end

		local alpha = math.min(self.bleedouttimer * 0xff, 0xff)

		love.graphics.setColor(red, green, blue, alpha)
	end
end

function ShmupNPC:endDraw()
	if self.bleedouttimer > 0 then
		love.graphics.setColor(0xff, 0xff, 0xff)
	end
end

return ShmupNPC
