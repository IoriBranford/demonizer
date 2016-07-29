local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local NPCPikeman = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.firetimer = love.math.random()
	self.health = 16
end)

NPCPikeman.BulletInterval = 1.5
NPCPikeman.BulletParams = {
	speed = 120,
	gid = levity:getTileGid("humanshots", "pike", 0),
	category = ShmupCollision.Category_NPCShot
}

function NPCPikeman:updateFiring(dt)
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
		local params = NPCPikeman.BulletParams
		params.x = cx
		params.y = cy
		params.angle = math.atan2(playerdy, playerdx)

		self.firetimer = ShmupBullet.fireOverTime(params,
				ShmupNPC.ShotLayer, self.firetimer,
				NPCPikeman.BulletInterval)

		levity.bank:play("pike.wav")
	end
	self.firetimer = self.firetimer - dt
end

function NPCPikeman:beginMove(dt)
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

levity.bank:load("pike.wav")

return NPCPikeman
