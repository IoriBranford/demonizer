local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local NPCKnight = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.firetimer = love.math.random(0, .25)
	self.health = 8
end)

NPCKnight.BulletSpeed = 2*60
NPCKnight.BulletInterval = 1

function NPCKnight:updateFiring(dt)
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
		self.firetimer = ShmupBullet.fireOverTime(
			self.firetimer, NPCKnight.BulletInterval, cx, cy,
			NPCKnight.BulletSpeed, math.atan2(playerdy, playerdx),
			"knightshot", 0, ShmupNPC.ShotLayer,
			ShmupCollision.Category_NPCShot)

		levity.bank:play("sword.wav")
	end
	self.firetimer = self.firetimer - dt
end

function NPCKnight:beginMove(dt)
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

levity.bank:load("sword.wav")

return NPCKnight
