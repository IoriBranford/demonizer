local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local NPCArcher = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.firetimer = 0
end)

NPCArcher.BulletSpeed = 4*60
NPCArcher.BulletInterval = 1/4

function NPCArcher:beginMove(dt)
	ShmupNPC.beginMove(self, dt)
	if not self.object.visible then
		return
	end
	if self.health <= 0 then
		return
	end

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

	self.firetimer = self.firetimer + dt
	if self.firetimer >= NPCArcher.BulletInterval then
		while self.firetimer >= NPCArcher.BulletInterval do
			self.firetimer = self.firetimer - NPCArcher.BulletInterval
		end

		local angle = math.atan2(playerdy, playerdx)

		cx = cx + (math.cos(angle) * NPCArcher.BulletSpeed * self.firetimer)
		cy = cy + (math.sin(angle) * NPCArcher.BulletSpeed * self.firetimer)

		ShmupBullet.create(cx, cy, NPCArcher.BulletSpeed, angle,
			"archershot", 0, self.object.layer,
			ShmupCollision.Category_NPCShot)
	end
end

return NPCArcher
