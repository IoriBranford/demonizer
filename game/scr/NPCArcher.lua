local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local ShmupBullet = require("ShmupBullet")

local BulletInterval = 1

local NPCArcher
NPCArcher = class(ShmupNPC, function(self, object)
	ShmupNPC.init(self, object)
	self.firetimer = BulletInterval
	self.health = 8
	self.properties.killpoints = 250
	self.properties.pathspeed = self.properties.pathspeed or 180
	self.originalspeed = self.properties.pathspeed
end)

NPCArcher.BulletInterval = BulletInterval
NPCArcher.LeaveCoverTime = .25
NPCArcher.PlayerShotSuppression = 1/8
NPCArcher.NPCSuppressionReaction = 1/16
NPCArcher.BulletParams = {
	tileset = "humanshots",
	tileid = "arrow",
	speed = 240,
	category = ShmupCollision.Category_NPCShot
}

function NPCArcher:updateFiring(dt)
	local params = NPCArcher.BulletParams
	local cx, cy = self.object.body:getWorldCenter()
	local playerdx = 0
	local playerdy = 1

	local playerid = levity.map.properties.playerid
	if playerid then
		local player = levity.map.objects[playerid]
		local playercx, playercy = player.body:getWorldCenter()
		playerdx = playercx - cx
		playerdy = playercy - cy
	end

	local vx, vy = self.object.body:getLinearVelocity()
	local dot = math.dot(vx, vy, playerdx, playerdy)
	if dot >= 0 then
		self:faceAngle(math.atan2(playerdy, playerdx))
	else
		self:faceAngle(math.atan2(vy, vx))
	end

	if self.numcovers <= 0 and self.firetimer < dt and dot >= 0 then
		local x = cx
		local y = cy
		local angle = math.atan2(playerdy, playerdx)
		self.firetimer = ShmupBullet.fireOverTime(params, x, y, angle,
			"npcshots", self.firetimer, NPCArcher.BulletInterval)

		levity.bank:play("snd/bow.wav")
	end
	self.firetimer = math.max(0, self.firetimer - dt)
end

function NPCArcher:suppress()
	self.firetimer = math.min(BulletInterval,
		self.firetimer + NPCArcher.PlayerShotSuppression)
	levity.map:broadcast("npcSuppressed", self.object.id)
end

function NPCArcher:npcSuppressed(npcid)
	if not self.object.body:isActive() then
		return
	end
	if self.object.id ~= npcid then
		self.firetimer = math.max(0,
			self.firetimer - NPCArcher.NPCSuppressionReaction)
	end
end

function NPCArcher:beginMove(dt)
	ShmupNPC.beginMove(self, dt)
	if not self.object.body:isActive() then
		return
	end
	if self.health < 1 then
		return
	end

	if self.firetimer > NPCArcher.LeaveCoverTime
	and self.numcovers > 0 then
		self.properties.pathspeed = 0
	else
		self.properties.pathspeed = self.originalspeed
	end

	if self.oncamera then
		self:updateFiring(dt)
	end
end

levity.bank:load("snd/bow.wav")

return NPCArcher
