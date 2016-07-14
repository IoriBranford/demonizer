
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

	if self.firetimer <= 0 then
		local firetimer
		local a0 = math.pi * self.lifetime
		for angle = a0, a0 + math.pi*1.5, math.pi*.5 do
			firetimer = ShmupBullet.fireOverTime(
				self.firetimer, NPCMage.BulletInterval, cx, cy,
				NPCMage.BulletSpeed, angle,
				"mageshot", 0, ShmupNPC.ShotLayer,
				ShmupCollision.Category_NPCShot)
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
