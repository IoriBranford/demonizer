local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local BulletInterval = 2

local NPCArcher = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.firetimer = love.math.random() * BulletInterval
	self.incover = false
	self.health = 2
end)

NPCArcher.BulletSpeed = 4*60
NPCArcher.BulletInterval = BulletInterval
NPCArcher.LeaveCoverTime = .5
NPCArcher.PlayerShotSuppression = 1/8

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

	if not self.properties.pathid then
		if self.firetimer > NPCArcher.LeaveCoverTime
		and self.firetimer - dt <= NPCArcher.LeaveCoverTime then
			self:setInCover(false)
		end
	end

	if self.firetimer <= 0 then
		self.firetimer = ShmupBullet.fireOverTime(
			self.firetimer, NPCArcher.BulletInterval, cx, cy,
			NPCArcher.BulletSpeed, math.atan2(playerdy, playerdx),
			"archershot", 0, ShmupNPC.ShotLayer,
			ShmupCollision.Category_NPCShot)

		levity.bank:play("bow.wav")

		if not self.properties.pathid then
			self:setInCover(true)
		end
	end
	self.firetimer = self.firetimer - dt
end

function NPCArcher:beginContact_PlayerShot(myfixture, otherfixture, contact)
	if self.incover then
		self.firetimer = self.firetimer + NPCArcher.PlayerShotSuppression
	else
		ShmupNPC.beginContact_PlayerShot(self, myfixture, otherfixture,
						contact)
	end
end

function NPCArcher:beginContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_PlayerShot then
		self:beginContact_PlayerShot(myfixture, otherfixture, contact)
	else
		ShmupNPC.beginContact(self, myfixture, otherfixture, contact)
	end
end

function NPCArcher:setInCover(incover)
	self.incover = incover

	local category = ShmupCollision.Category_NPC

	if incover then
		category = ShmupCollision.Category_InCoverNPC
	end

	local fixtures = self.object.body:getFixtureList()
	for _, fixture in ipairs(fixtures) do
		fixture:setCategory(category)
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

function NPCArcher:beginDraw()
	ShmupNPC.beginDraw(self)
	local r,g,b,a = love.graphics.getColor()
	if self.incover then
		a = 0x80
	end
	love.graphics.setColor(r,g,b,a)
end

levity.bank:load("bow.wav")

return NPCArcher
