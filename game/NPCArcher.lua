local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local BulletInterval = 2

local NPCArcher = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.firetimer = love.math.random() * BulletInterval
	self.health = 8
end)

NPCArcher.BulletSpeed = 4*60
NPCArcher.BulletInterval = BulletInterval
NPCArcher.LeaveCoverTime = 1
NPCArcher.PlayerShotSuppression = 1/8
NPCArcher.BulletGid = levity:getTileGid("humanshots", "arrow", 0)

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

	if self.firetimer <= 0 then
		self.firetimer = ShmupBullet.fireOverTime({
				x = cx,
				y = cy,
				speed = NPCArcher.BulletSpeed,
				angle = math.atan2(playerdy, playerdx),
				gid = NPCArcher.BulletGid,
				category = ShmupCollision.Category_NPCShot
			}, ShmupNPC.ShotLayer, self.firetimer,
			NPCArcher.BulletInterval)

		levity.bank:play("bow.wav")
	end
	self.firetimer = self.firetimer - dt

	if not self.pathwalker or self.pathwalker:finished() then
		self:setInCover(self.firetimer > NPCArcher.LeaveCoverTime)
	end
end

function NPCArcher:suppress()
	self.firetimer = self.firetimer + NPCArcher.PlayerShotSuppression
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
