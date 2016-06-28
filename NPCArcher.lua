local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local NPCArcher = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.firetimer = math.random(1.5)
	self.health = 4
end)

NPCArcher.BulletSpeed = 4*60
NPCArcher.BulletInterval = 1.5

function NPCArcher:updateFiring(dt)
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
		self.firetimer = ShmupBullet.fireOverTime(
			self.firetimer, NPCArcher.BulletInterval, cx, cy,
			NPCArcher.BulletSpeed, math.atan2(playerdy, playerdx),
			"archershot", 0, ShmupNPC.ShotLayer,
			ShmupCollision.Category_NPCShot)

		levity.bank:play("bow.wav")
	end
end

function NPCArcher:beginMove(dt)
	ShmupNPC.beginMove(self, dt)
	if not self.object.visible then
		return
	end
	if self.health <= 0 then
		return
	end

	if self.oncamera then
		self:updateFiring(dt)
	end
end

levity.bank:load("bow.wav")

return NPCArcher
