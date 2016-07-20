
local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local NPCMage = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.firetimer = 0
	self.health = 64
	self.lifetime = 0

	self.fireco = nil
	self.firearc = math.pi * .5
end)

NPCMage.BulletSpeed = 2*60
NPCMage.BulletInterval = 0.125

local function fireCoroutine(self, numbullets, arc, time, speed, direction,
				tileset, tileid, layer, category)
	arc = arc / numbullets
	time = time / numbullets
	direction = direction - arc * math.floor(numbullets * .5)

	local t = 0

	for i = 1, numbullets do
		local cx, cy = self.object.body:getWorldCenter()

		ShmupBullet.create(cx, cy, speed, direction,
					tileset, tileid, layer, category)

		direction = direction + arc
		while t < time do
			local dt = coroutine.yield()
			t = t + dt
		end
		t = t - time
	end
end

function NPCMage:updateFiring(dt)
	if not self.fireco or coroutine.status(self.fireco) == "dead" then
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

		self.fireco = coroutine.create(fireCoroutine)
		coroutine.resume(self.fireco, self, 4, self.firearc, .25,
			NPCMage.BulletSpeed, math.atan2(playerdy, playerdx),
			"mageshot", 0, ShmupNPC.ShotLayer,
			ShmupCollision.Category_NPCShot)
		self.firearc = -self.firearc
	else
		coroutine.resume(self.fireco, dt)
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
