local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local ShmupBullet = require("ShmupBullet")
local NPCArcher = require("NPCArcher")

local NPCPrincess
NPCPrincess = class(ShmupNPC, function(self, object)
	ShmupNPC.init(self, object)
	self.firetimer = NPCPrincess.BulletInterval
	self.health = 320
	self.properties.pathspeed = self.properties.pathspeed
					or NPCPrincess.Speed
	self.properties.killpoints = 15000
	self.coroutine = nil
	self.fireco = nil
end)

NPCPrincess.Speed = 180
NPCPrincess.BulletInterval = .25
NPCPrincess.LeaveCoverTime = 1
NPCPrincess.PlayerShotSuppression = 1/8
NPCPrincess.NPCSuppressionReaction = 1/16
NPCPrincess.BulletSpreadArc = math.pi/8
NPCPrincess.BulletParams = {
	tileset = "humanshots",
	tileid = "arrow",
	speed = 240,
	category = ShmupCollision.Category_NPCShot
}
NPCPrincess.ChargeShotWaitTime = 1.5
NPCPrincess.ChargeShotInterval = 1/8
NPCPrincess.ChargeShotSpreadArc = math.pi/16
NPCPrincess.ChargeShotParams = {
	tileset = "humanshots",
	tileid = "firearrow",
	speed = 240,
	category = ShmupCollision.Category_NPCShot
}

local Sounds = {
	Bow = "snd/bow.wav",
	Charge = "snd/charge.wav"
}
levity.bank:load(Sounds)

function NPCPrincess:canBeCaptured()
	return false
end

function NPCPrincess:chargeShotCoroutine(dt)
	levity.bank:play(Sounds.Charge)
	self:faceAngle(math.pi/2)

	local t = NPCPrincess.ChargeShotWaitTime
	local readytofire = false
	repeat
		self, dt = coroutine.yield()
		t = t - dt
		readytofire = t <= 0
	until readytofire

	local params = NPCPrincess.ChargeShotParams

	params.accelx = 0
	params.accely = 640

	t = NPCPrincess.ChargeShotInterval
	local mapcx = levity.map.width*levity.map.tilewidth/2
	local numbullets = 15
	while numbullets > 0 do
		repeat
			t = math.max(0, t - dt)
			self, dt = coroutine.yield()
		until t < dt

		local player = levity.map.objects
					[levity.map.properties.playerid]
		local playercx, playercy = player.body:getWorldCenter()
		local cx, cy = self.object.body:getWorldCenter()

		local x, y = cx, cy

		local angle = -math.pi/2
		angle = angle + (mapcx - cx)*math.pi/1024

		angle = angle - NPCPrincess.ChargeShotSpreadArc*2
		local firetimer
		for i = 1, 5 do
			firetimer = ShmupBullet.fireOverTime(params, x, y, angle,
				"npcshots", t, NPCPrincess.ChargeShotInterval)

			angle = angle + NPCPrincess.ChargeShotSpreadArc

			numbullets = numbullets - 1
		end
		t = firetimer

		levity.bank:play(Sounds.Bow)
	end
	params.accelx = nil
	params.accely = nil

	self.fireco = coroutine.create(NPCPrincess.normalFireCoroutine)
end

function NPCPrincess:normalFireCoroutine(dt)
	local params = NPCPrincess.BulletParams
	local t = NPCPrincess.BulletInterval
	local numbullets = 30
	while numbullets > 0 do
		repeat
			t = math.max(0, t - dt)
			self, dt = coroutine.yield()
		until t < dt and self.numcovers <= 0

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

		local angle = math.atan2(playerdy, playerdx)
		self:faceAngle(angle)

		local x = cx
		local y = cy
		local angle = angle - NPCPrincess.BulletSpreadArc

		local firetimer
		for i = 1, 3 do
			firetimer = ShmupBullet.fireOverTime(params,
				x, y, angle, "npcshots", t,
				NPCPrincess.BulletInterval)

			angle = angle + NPCPrincess.BulletSpreadArc

			numbullets = numbullets - 1
		end
		t = firetimer

		levity.bank:play(Sounds.Bow)
	end

	self.fireco = coroutine.create(NPCPrincess.chargeShotCoroutine)
end

function NPCPrincess:updateFiring(dt)
	if not self.fireco or coroutine.status(self.fireco) == "dead" then
		self.fireco = coroutine.create(NPCPrincess.normalFireCoroutine)
	end

	local ok, err = coroutine.resume(self.fireco, self, dt)
	if not ok then print(err) end
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

return NPCPrincess
