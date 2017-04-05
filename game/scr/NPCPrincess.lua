local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local ShmupBullet = require("ShmupBullet")
local NPCArcher = require("NPCArcher")

local NPCPrincess
NPCPrincess = class(ShmupNPC, function(self, object)
	NPCPrincess.BulletParams.gid =
		levity.map:getTileGid("humanshots", "arrow", 0)

	ShmupNPC.init(self, object)
	self.firetimer = NPCPrincess.BulletInterval
	self.health = 256
	self.properties.pathspeed = self.properties.pathspeed
					or NPCPrincess.Speed
	self.properties.killpoints = 15000
	self.coroutine = nil
end)

NPCPrincess.Speed = 180
NPCPrincess.BulletInterval = .25
NPCPrincess.LeaveCoverTime = 1
NPCPrincess.PlayerShotSuppression = 1/8
NPCPrincess.NPCSuppressionReaction = 1/16
NPCPrincess.BulletParams = NPCArcher.BulletParams
NPCPrincess.BulletSpreadHalfArc = math.pi/8
--{
--	speed = 240,
--	category = ShmupCollision.Category_NPCShot
--}

function NPCPrincess:canBeCaptured()
	return false
end

function NPCPrincess:updateFiring(dt)
	if self.numcovers <= 0 and self.firetimer <= 0 then
		local params = NPCPrincess.BulletParams
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
			- NPCPrincess.BulletSpreadHalfArc

		local firetimer
		for i = 1, 3 do
			firetimer = ShmupBullet.fireOverTime(params,
				levity.map.layers["npcshots"], self.firetimer,
				NPCPrincess.BulletInterval)

			params.angle = params.angle
				+ NPCPrincess.BulletSpreadHalfArc
		end
		self.firetimer = firetimer

		levity.bank:play("snd/bow.wav")
	end
	self.firetimer = self.firetimer - dt
	if self.numcovers > 0 and self.firetimer < 0 then
		self.firetimer = 0
	end
end

function NPCPrincess:suppress()
	self.firetimer = math.min(NPCPrincess.BulletInterval,
		self.firetimer + NPCPrincess.PlayerShotSuppression)
	levity.map:broadcast("npcSuppressed", self.object.id)
end

function NPCPrincess:npcSuppressed(npcid)
	if not self.object.body:isActive() then
		return
	end
	if self.object.id ~= npcid then
		self.firetimer = math.max(0,
			self.firetimer - NPCPrincess.NPCSuppressionReaction)
	end
end

function NPCPrincess:defeatCoroutine(dt)
	self.object:setGid(self.object.gid, levity.map, false)
	local t = 0
	repeat
		t = t + dt
		self.object.body:setLinearVelocity(
			-60*math.sin(math.max(0, t-2) * 30 * math.pi),
			0)
		self, dt = coroutine.yield()
	until t >= 3
	self.object.body:setLinearVelocity(0, 0)

	local gid = levity.map:getTileGid(self.object.tile.tileset, "down",
			levity.map:getTileColumnName(self.object.gid))
	self.object:setGid(gid, levity.map, false)
	t = 0
	repeat
		t = t + dt
		self, dt = coroutine.yield()
	until t >= 1

	gid = levity.map:getTileGid(self.object.tile.tileset, "up",
			levity.map:getTileColumnName(self.object.gid))
	self.object:setGid(gid, levity.map)

	local vx = (levity.map.tilewidth*levity.map.width/2
			- self.object.body:getX())
	local vy = -self.object.body:getY()
	local dist = math.hypot(vx, vy)
	vx = vx * 1.5 * NPCPrincess.Speed / dist
	vy = vy * 1.5 * NPCPrincess.Speed / dist
	self.object.body:setLinearVelocity(vx, vy)
	repeat coroutine.yield() until self.object.body:getY() <= 0

	levity.map.scripts:broadcast("playerWon")
	levity.map:discardObject(self.object.id)
end

function NPCPrincess:beginMove(dt)
	if self.health < 1 then
		if not self.coroutine then
			self.coroutine = coroutine.create(NPCPrincess.defeatCoroutine)
		end

		coroutine.resume(self.coroutine, self, dt)
		return
	end

	ShmupNPC.beginMove(self, dt)
	if not self.object.body:isActive() then
		return
	end

	if self.oncamera then
		self:updateFiring(dt)
	end
end

levity.bank:load("snd/bow.wav")

return NPCPrincess
