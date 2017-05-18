local levity = require "levity"
local Mover = require "Mover"
local ShmupCollision = require "ShmupCollision"
--TODO NPC --> Human

local CombatantMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_NPCShot
}

local Human
Human = class(function(self, object)
	self.object = object
	self.properties = object.properties

	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_NPCTeam)
		fixture:setMask(unpack(CombatantMask))
	end

	self.object.body:setFixedRotation(true)
	self.faceangle = 0
	self.pathfind = Mover.pathfind_linear1way
end)

function Human:getFaceAngle()
	return self.faceangle
end

local Directions = {
	[0] = "right", [1] = "down", [2] = "left", [3] = "up"
}

function Human:faceAngle(angle)
	local i = math.floor(2*angle/math.pi + .5) % 4

	local dir = Directions[i]
	if dir then
		local gid = levity.map:getTileGid(self.object.tile.tileset, dir,
							self.object.type:lower())
		if gid ~= self.object.gid then
			self.object:setGid(gid, levity.map)
		end
	end

	self.faceangle = i*math.pi/2
end

function Human:beginMove(dt)
	local pathid = self.properties.pathid
	local vx, vy = self.object.body:getLinearVelocity()
	if not pathid or (vx == 0 and vy == 0) then
		local playerid = levity.map.properties.playerid
		local player = levity.map.objects[playerid]
		local playercx, playercy = player.body:getWorldCenter()
		local cx, cy = self.object.body:getWorldCenter()
		local playerdx, playerdy = playercx - cx, playercy - cy
		self:faceAngle(math.atan2(playerdy, playerdx))
	end

	if not self.mover and pathid then
		self.mover = levity.scripts:newScript(self.object.id, "Mover",
							self.object)
	end

	if not self.shooter and self.properties.bullettype then
		self.shooter = levity.scripts:newScript(self.object.id, "Shooter",
							self.object)
	end
end

return Human
