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
	self.convertobject = nil
	self.converttimer = nil
	self.allyindex = nil
	self.npctype = levity:getTileColumnName(self.object.gid)
	if string.find(self.npctype, "civ") == 1 then
		self.health = 0
	else
		self.health = 8
	end
end)

ShmupNPC.ConvertTime = 1
ShmupNPC.SnapToPlayerVelocity = 1/4

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
		local gid = levity:getTileGid(self.object.tile.tileset,
						"ko", self.npctype)
		levity:setObjectGid(self.object, gid)

		myfixture:setMask(
			ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_PlayerShot,
			ShmupCollision.Category_NPC,
			ShmupCollision.Category_NPCShot)
	end
end

function ShmupNPC:beginContact_Player(myfixture, otherfixture, contact)
	if self.health > 0 or self.converttimer then
		return
	end

	local playerid = levity.map.properties.playerid
	local roomforallies = levity.machine:call(playerid, "roomForAllies")
	local tileset = levity:getMapTileset(self.object.tile.tileset)
	local female = string.find(tileset.name, "women") ~= nil

	if not roomforallies or not female then
		self.object.destroy = true
	else
		self.allyindex = levity.machine:call(playerid, "newAllyIndex")
		self.converttimer = 0

		local player = levity.map.objects[playerid]
		if player then
			levity:changeObjectLayer(self.object, player.layer)
		end

		local gid = levity:getTileGid(self.object.tile.tileset,
						"up", self.npctype)
		levity:setObjectGid(self.object, gid, false)
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

function ShmupNPC:updateConversion(dt)
	local body = self.object.body
	local playerid = levity.map.properties.playerid
	local player = levity.map.objects[playerid]

	if self.converttimer == 0 then
		self.convertobject = {
			x = self.object.x,
			y = self.object.y,
			gid = levity:getTileGid("demonizing", 0, 0)
		}
		levity:addObject(self.convertobject, self.object.layer, "dynamic")
	end

	local cx, cy = body:getWorldCenter()
	local dx, dy = levity.machine:call(playerid, "allyPosition", self.allyindex)

	local pvx, pvy = player.body:getLinearVelocity()
	local vx0, vy0 = body:getLinearVelocity()
	local vx1, vy1 = dx - cx, dy - cy
	local snaptopv = self.converttimer
		* ShmupNPC.SnapToPlayerVelocity / dt
	local ax = vx1 * snaptopv - vx0
	local ay = vy1 * snaptopv - vy0

	local mass = body:getMass()
	body:applyLinearImpulse(mass * ax, mass * ay)

	self.converttimer = self.converttimer + dt
	if self.converttimer >= ShmupNPC.ConvertTime then
		self.convertobject.destroy = true
		self.convertobject = nil

		local gid = levity:getTileGid("demonwomen", self.npctype, 0)
		levity:setObjectGid(self.object, gid)
		levity.machine:newScript(self.object.id, "ShmupAlly", self.allyindex)
	end
end

function ShmupNPC:beginMove(dt)
	if self.ready == true then
		self:setActive(true)
	end

	if not self.object.visible then
		return
	end

	if self.converttimer then
		self:updateConversion(dt)
	end
end

function ShmupNPC:endMove(dt)
	if self.convertobject then
		local x, y = self.object.body:getPosition()
		self.convertobject.body:setPosition(x, y + 1/64)
	end
end

return ShmupNPC
