local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local NPCKnight = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.firetimer = love.math.random()
	self.health = 64
	self.weapon = "pike"
	if string.find(self.npctype, "sword") == 1 then
		self.weapon = "sword"
	end
end)

NPCKnight.BulletSpeedBase = 2*60
NPCKnight.BulletSpeedInc = 15
NPCKnight.BulletInterval = 1.5
NPCKnight.BulletHalfArc = math.pi*.125

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
		local firetimer = self.firetimer
		local params = {
			x = cx,
			y = cy,
			speed = NPCKnight.BulletSpeedBase,
			angle = math.atan2(playerdy, playerdx)
				- NPCKnight.BulletHalfArc,
			gid = levity:getTileGid("humanshots", self.weapon, 0),
			category = ShmupCollision.Category_NPCShot
		}

		for i = 1, 3 do
			firetimer = ShmupBullet.fireOverTime(params,
					ShmupNPC.ShotLayer, self.firetimer,
					NPCKnight.BulletInterval)

			params.angle = params.angle + NPCKnight.BulletHalfArc
			params.speed = params.speed + NPCKnight.BulletSpeedInc
		end

		self.firetimer = firetimer

		levity.bank:play(self.weapon..".wav")
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

levity.bank:load("pike.wav")
levity.bank:load("sword.wav")

return NPCKnight
