local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local NPCKnight = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.firetimer = 0
	self.health = 8
end)

NPCKnight.BulletSpeed = 2*60
NPCKnight.BulletInterval = .5

function NPCKnight:beginMove(dt)
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
	if self.firetimer >= NPCKnight.BulletInterval then
		while self.firetimer >= NPCKnight.BulletInterval do
			self.firetimer = self.firetimer - NPCKnight.BulletInterval
		end

		local angle = math.pi * .5 --math.atan2(playerdy, playerdx)

		cx = cx + (math.cos(angle) * NPCKnight.BulletSpeed * self.firetimer)
		cy = cy + (math.sin(angle) * NPCKnight.BulletSpeed * self.firetimer)

		ShmupBullet.create(cx, cy, NPCKnight.BulletSpeed, angle,
			"knightshot", 0, ShmupNPC.ShotLayer,
			ShmupCollision.Category_NPCShot)

		levity.bank:play("sword.wav")
	end
end

return NPCKnight
