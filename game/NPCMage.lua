
local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local NPCMage = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.firetimer = 2
	self.health = 64
	self.lifetime = 0
end)

NPCMage.BulletSpeed = 1*60
NPCMage.BulletInterval = 0.125

function NPCMage:updateFiring(dt)
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

	if self.firetimer <= 0 then
		local arc = math.pi
		local angle = math.pi * self.lifetime
		local firetimer = self.firetimer
		for i = 1, 2 do
			firetimer = ShmupBullet.fireOverTime(
				self.firetimer, NPCMage.BulletInterval, cx, cy,
				NPCMage.BulletSpeed, angle,
				"mageshot", 0, ShmupNPC.ShotLayer,
				ShmupCollision.Category_NPCShot)
			angle = angle + arc
		end
		self.firetimer = firetimer
	end
	self.firetimer = self.firetimer - dt
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
