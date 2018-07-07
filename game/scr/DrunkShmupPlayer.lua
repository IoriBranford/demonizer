local levity = require "levity"
local ShmupPlayer = require "ShmupPlayer"
local ShmupBullet = require("ShmupBullet")

local DrunkShmupPlayer = class(ShmupPlayer)
DrunkShmupPlayer.BombTime = 3
DrunkShmupPlayer.MaxBAC = 1

function DrunkShmupPlayer:_init(object)
	self:super(object)
	self.bacbase = 0
end

function DrunkShmupPlayer:getBAC()
	local bac = self.bacbase
	if self:isKilled() then
		return 0
	end
	if self:isFocused() then
		bac = math.max(0, bac - .25)
	end
	return bac
end

function DrunkShmupPlayer:getNumShots()
	return 1 + math.floor(5*self.bacbase)
end

function DrunkShmupPlayer:beginMove(dt)
	local body = self.object.body
	local vx0, vy0 = body:getLinearVelocity()
	ShmupPlayer.beginMove(self, dt)
	local vx1, vy1 = body:getLinearVelocity()
	local bac = self:getBAC()
	local sint = math.sin(love.timer.getTime()*math.pi)
	local vy1b = vy1 + vx1*bac*sint
	vx1 = vx1 + vy1*bac*sint
	vy1 = vy1b
	local ax = vx1 - vx0
	local ay = vy1 - vy0
	local t = math.max(dt, 1 - bac*1.5)
	body:setLinearVelocity(vx0 + ax*t, vy0 + ay*t)
end

function DrunkShmupPlayer:updateFire(dt)
	if self.firetimer >= ShmupPlayer.BulletInterval then
		local bac = self:getBAC()
		local numshots = self:getNumShots()
		local sintime = math.sin(love.timer.getTime()*math.pi)
		local cx, cy = self.object.body:getWorldCenter()
		local x = cx - 8*(numshots-1)/2
		local y = cy - 8
		local firetimer = self.firetimer
		for i = 1, numshots do
			firetimer = ShmupBullet.fireOverTime(
				"BulletPlayer", x, y,
				sintime*bac, -1 + sintime*sintime*bac,
				"playershots", self.firetimer,
				ShmupPlayer.BulletInterval, true)
			x = x + 8
		end
		self.firetimer = firetimer

		self:playSound(self.Sounds.Shot)
	end
	self.firetimer = levity:timerCorrectRoundingError(
				self.firetimer + dt,
				ShmupPlayer.BulletInterval)
end

function DrunkShmupPlayer:endMove(dt)
	ShmupPlayer.endMove(self, dt)
	local numextrashots = self:getNumShots() - 1
	local statuslayer = levity.map.layers.status
	local statusobjects = statuslayer and statuslayer.objects
	if statusobjects then
		for i = 1, 5 do
			local icon = statusobjects["winebomb"..i]
			if icon then
				icon.visible = i <= numextrashots
			end
		end
	end
end

function DrunkShmupPlayer:joystickchanged(button, pressed)
	if button == ShmupPlayer.Button_Bomb and pressed
	and not self.coroutine and not levity.map.paused
	and self:getNumShots() > 1
	then
		self.bombbutton = true
		self.coroutine = coroutine.create(DrunkShmupPlayer.bombCoroutine)
	else
		ShmupPlayer.joystickchanged(self, button, pressed)
	end
end

function DrunkShmupPlayer:bombCoroutine(dt)
	levity.scripts:broadcast("playerBombed")
	local bombtime = self.bacbase
	self.bacbase = 0
	levity.bank:play(ShmupPlayer.Sounds.Bomber)
	self.shieldtimer = 60
	self:recenterCoroutine(dt)

	levity.bank:play(ShmupPlayer.Sounds.Bomb)
	self.bacbase = bombtime
	self.shieldtimer = self.bacbase
	local period = 15*math.pi
	while self.bacbase > 0 do
		self, dt = coroutine.yield()
		local x, y = self.object.body:getWorldCenter()
		local vx = math.sin(period*self.bacbase)/4
		local vy = -1 + math.sin(period*self.bacbase)/2
		ShmupBullet.create("BulletPlayerWineBombShrapnel",
			x, y, vx, vy, "playershots")
		ShmupBullet.create("BulletPlayerWineBombShrapnel",
			x, y, -vx, vy, "playershots")
		self.bacbase = math.max(0, self.bacbase - dt/2)
	end
	self.bombbutton = false
end

function DrunkShmupPlayer:loopedAnimation()
	local animtile = levity.map.tiles[self.object.gid]
	local tileset = animtile.tileset
	local nextanim = animtile.properties.nextanim
	if nextanim then
		self.object:setGid(levity.map:getTileGid(tileset, nextanim))
	end
end

function DrunkShmupPlayer:beginContact(myfixture, otherfixture, contact)
	local otherproperties = otherfixture:getBody():getUserData().properties
	local alcohol = otherproperties.alcohol
	if alcohol then
		local numshots = self:getNumShots()
		self.bacbase = math.min(self.bacbase + alcohol, DrunkShmupPlayer.MaxBAC)
		if self:getNumShots() > numshots then
			levity.bank:play(ShmupPlayer.Sounds.Powerup)
		end
	end
	ShmupPlayer.beginContact(self, myfixture, otherfixture, contact)
end

function DrunkShmupPlayer:playerKilled()
	self.bacbase = self.bacbase * .6 --math.max(0, self.bacbase - .2)
end

return DrunkShmupPlayer
