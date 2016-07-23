
local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"
require "xcoroutine"

local NPCMage = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.firetimer = 0
	self.health = 512
	self.lifetime = 0

	self.fireco = nil
	self.firearc = math.pi * .5
end)

NPCMage.BulletSpeed = 2*60
NPCMage.BulletInterval = 0.125
NPCMage.BulletGid = levity:getTileGid("humanshots", "magic", 0)

local function fireCoroutine(self)
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

	local numbullets, arc, time = 4, self.firearc, .25

	arc = arc / numbullets
	time = time / numbullets

	local params = {
		speed = NPCMage.BulletSpeed,
		angle = math.atan2(playerdy, playerdx),
		gid = NPCMage.BulletGid,
		category = ShmupCollision.Category_NPCShot
	}

	params.angle = params.angle - arc * math.floor(numbullets * .5)

	local t = time

	for i = 1, numbullets do
		params.x, params.y = self.object.body:getWorldCenter()
		params.accelx = math.cos(params.angle)
		params.accely = math.sin(params.angle)

		ShmupBullet.create(params, ShmupNPC.ShotLayer)

		params.angle = params.angle + arc
		t = coroutine.wait(t)
	end
end

function NPCMage:updateFiring(dt)
	if not self.fireco or coroutine.status(self.fireco) == "dead" then
		self.fireco = coroutine.create(fireCoroutine)
		local ok, err = coroutine.resume(self.fireco, self)
		if not ok then print(err) end
		self.firearc = -self.firearc
	else
		coroutine.updateWait(self.fireco, dt)
	end
end

function NPCMage:beginMove(dt)
	ShmupNPC.beginMove(self, dt)
	if not self.object.visible then
		return
	end
	if self.health <= 0 then
		return
	end

	self.lifetime = self.lifetime + dt

	if self.oncamera then
		self:updateFiring(dt)
	end
end

return NPCMage
