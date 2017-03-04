local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local ShmupBullet = require("ShmupBullet")

local BulletInterval = 2

local NPCArcher = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.firetimer = BulletInterval
	self.health = 8
end)

NPCArcher.BulletInterval = BulletInterval
NPCArcher.LeaveCoverTime = 1
NPCArcher.PlayerShotSuppression = 1/8
NPCArcher.NPCSuppressionReaction = 1/16
NPCArcher.BulletParams = {
	speed = 240,
	gid = levity.map:getTileGid("humanshots", "arrow", 0),
	category = ShmupCollision.Category_NPCShot
}

function NPCArcher:updateFiring(dt)
	if self.firetimer <= 0 then
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

		params.x = cx
		params.y = cy
		params.angle = math.atan2(playerdy, playerdx)
		self.firetimer = ShmupBullet.fireOverTime(params,
			ShmupNPC.ShotLayer, self.firetimer,
			NPCArcher.BulletInterval)

		levity.bank:play("snd/bow.wav")
	end
	self.firetimer = self.firetimer - dt

	if not self.pathwalker or self.pathwalker:finished() then
		self:setInCover(self.firetimer > NPCArcher.LeaveCoverTime)
	end
end

function NPCArcher:suppress()
	self.firetimer = math.min(BulletInterval,
		self.firetimer + NPCArcher.PlayerShotSuppression)
	levity.map.scripts:broadcast("npcSuppressed", self.object.id)
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

	if self.oncamera then
		self:updateFiring(dt)
	end
end

levity.bank:load("snd/bow.wav")

return NPCArcher
