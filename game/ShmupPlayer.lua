local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

local MaxAllies = 4

local ShmupPlayer = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)

	self.vx = 0
	self.vy = 0
	self.didmousemove = false

	local os = love.system.getOS()
	self.firing = os == "Android" or os == "iOS"
	self.firetimer = 0
	self.focused = false

	self.numallies = 0

	self.dead = false
	self.deathtimer = 0

	self.shieldtimer = 0

	local fixtures = self.object.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	if bodyfixture then
		bodyfixture:setFriction(0)
		bodyfixture:setCategory(ShmupCollision.Category_Player)
		bodyfixture:setMask(
			ShmupCollision.Category_Player,
			ShmupCollision.Category_PlayerShot)
	end

	for i = 1, MaxAllies do
		local fixture = fixtures["ally"..i]
		if fixture then
			fixture:setFilterData(0, 0, 0)
		end
	end

	self.soundsource = nil
	self.soundfile = nil
end)

ShmupPlayer.Speed = 180
ShmupPlayer.BulletSpeed = 16*60
ShmupPlayer.BulletInterval = 1/10
ShmupPlayer.MaxAllies = MaxAllies
ShmupPlayer.DeathTime = 1
ShmupPlayer.RespawnShieldTime = 3
ShmupPlayer.DeathSnapToCameraVelocity = 1/16
ShmupPlayer.AllyFleeDistance = 400
ShmupPlayer.FocusAllySpread = 1.5
ShmupPlayer.FocusAllyOffsetY = -16

local Sounds = {
	Shot = "playershot.wav",
	Death = "selfdestruct.wav",
	Respawn = "respawn.wav"
}
levity.bank:load(Sounds)

function ShmupPlayer:playSound(soundfile)
	if self.soundfile ~= soundfile then
		self.soundfile = soundfile
		self.soundsource = levity.bank:play(soundfile)
	else
		self.soundsource:rewind()
		self.soundsource:play()
	end
end

function ShmupPlayer:rank()
	return self.numallies / ShmupPlayer.MaxAllies
end

function ShmupPlayer:roomForAllies()
	return self.numallies < ShmupPlayer.MaxAllies
end

function ShmupPlayer:newAllyIndex()
	self.numallies = self.numallies + 1
	return self.numallies
end

function ShmupPlayer:allyPosition(i)
	local x = self.object.x
	local y = self.object.y
	local offsetfixture = self.object.body:getUserData().fixtures["ally"..i]
	if offsetfixture then
		local ox, oy = offsetfixture:getShape():getPoint()
		if self.focused then
			oy = oy + ShmupPlayer.FocusAllyOffsetY
			ox = ox * ShmupPlayer.FocusAllySpread
			oy = oy * ShmupPlayer.FocusAllySpread
		end
		x = x + ox
		y = y + oy

		if self.dead then
			local cx, cy = self.object.body:getWorldCenter()
			local angle = math.pi * .5
			angle = angle + math.atan2(cx - x, y - cy) * .25

			local distance = self.deathtimer
					* ShmupPlayer.AllyFleeDistance
			x = x + distance * math.cos(angle)
			y = y + distance * math.sin(angle)
		end
	end
	return x, y
end

function ShmupPlayer:isFiring()
	return self.firing
end

function ShmupPlayer:isFocused()
	return self.focused
end

function ShmupPlayer:joystickaxis(joystick, axis, value)
	local speed = ShmupPlayer.Speed
	local lockspeedfactor = .5
	if self.focused then
		speed = speed * lockspeedfactor
	end

	value = math.floor(value + .5)

	if axis == 1 then
		self.vx = speed * value
	elseif axis == 2 then
		self.vy = speed * value
	end
end

function ShmupPlayer:joystickchanged(button, pressed)
	if button == 1 and self.firing ~= pressed then
		self.firing = pressed
		self.firetimer = 0
	elseif button == 2 and self.focused ~= pressed then
		local lockspeedfactor = .5
		if not pressed then
			lockspeedfactor = 1/lockspeedfactor
		end

		self.focused = pressed
		self.vx = self.vx * lockspeedfactor
		self.vy = self.vy * lockspeedfactor
	end
end

function ShmupPlayer:joystickpressed(joystick, button)
	self:joystickchanged(button, true)
end

function ShmupPlayer:joystickreleased(joystick, button)
	self:joystickchanged(button, false)
end

function ShmupPlayer:keychanged(key, pressed)
	local speed = ShmupPlayer.Speed
	local lockspeedfactor = .5
	if self.focused then
		speed = speed * lockspeedfactor
	end

	if not pressed then
		speed = -speed
	end

	if key == "up" then
		self.vy = self.vy - speed
	elseif key == "down" then
		self.vy = self.vy + speed
	elseif key == "left" then
		self.vx = self.vx - speed
	elseif key == "right" then
		self.vx = self.vx + speed
	elseif key == "z" then
		self:joystickchanged(1, pressed)
	elseif key == "x" then
		self:joystickchanged(2, pressed)
	end
end

function ShmupPlayer:keypressed(key, u)
	self:keychanged(key, true)
end

function ShmupPlayer:keyreleased(key, u)
	self:keychanged(key, false)
end

function ShmupPlayer:touchmoved(touch, x, y, dx, dy)
	self:mousemoved(x, y, dx, dy)
end

function ShmupPlayer:mousemoved(x, y, dx, dy)
	self.vx = self.vx + (dx / levity.camera.scale)
	self.vy = self.vy + (dy / levity.camera.scale)
	self.didmousemove = true
end

function ShmupPlayer:beginContact(myfixture, otherfixture, contact)
	if otherfixture:getCategory() == ShmupCollision.Category_NPCShot then
		if not self.dead and self.shieldtimer == 0 then
			self.deathtimer = 0
			self.dead = true
			self.numallies = 0

			-- capturing not allowed while player dead
			myfixture:setMask(
				ShmupCollision.Category_Player,
				ShmupCollision.Category_PlayerShot,
				ShmupCollision.Category_NPC,
				ShmupCollision.Category_NPCShot)

			levity.machine:broadcast("playerDead")

			self:playSound(Sounds.Death)
		end
	end
end

function ShmupPlayer:beginMove(dt)
	local body = self.object.body
	local cx, cy = body:getWorldCenter()
	local vx1, vy1 = self.vx, self.vy

	if self.didmousemove then
		vx1 = vx1 / dt
		vy1 = vy1 / dt
		self.vx = 0
		self.vy = 0
		self.didmousemove = false
	end

	self.shieldtimer = math.max(0, self.shieldtimer - dt)

	local cameraid = levity.map.properties.cameraid
	local camera = nil
	if cameraid then
		camera = levity.map.objects[cameraid]
	end

	if self.dead then
		self.deathtimer = self.deathtimer + dt
		local respawn = self.deathtimer >= ShmupPlayer.DeathTime

		vx1 = 0
		vy1 = 0

		if camera and respawn then
			local camcx, camcy = camera.body:getWorldCenter()
			camcy = camcy + camera.height * (3 / 8)

			local recentered = math.abs(cx - camcx) < 1
					and math.abs(cy - camcy) < 1
			respawn = respawn and recentered

			local snaptocamv = self.deathtimer *
				ShmupPlayer.DeathSnapToCameraVelocity / dt
			vx1 = (camcx - cx) * snaptocamv
			vy1 = (camcy - cy) * snaptocamv
		end

		if respawn then
			self.shieldtimer = ShmupPlayer.RespawnShieldTime
			self.dead = false
			local fixtures = self.object.body:getUserData().fixtures
			local bodyfixture = fixtures["body"]
			if bodyfixture then
				--reenable capturing
				bodyfixture:setMask(
					ShmupCollision.Category_Player,
					ShmupCollision.Category_PlayerShot)
			end
			levity.machine:broadcast("playerRespawned")
			self:playSound(Sounds.Respawn)
		end

		self.object.visible = respawn
	end

	if camera then
		local camvx, camvy = camera.body:getLinearVelocity()
		vy1 = vy1 + camvy
	end

	body:setLinearVelocity(vx1, vy1)

	if self.firing and not self.dead then
		if self.firetimer <= 0 then
			local params = {
				x = cx - 8,
				y = cy,
				speed = ShmupPlayer.BulletSpeed,
				angle = math.pi*1.5,
				damage = 8,
				tileset = "impshot",
				tileid = 0,
				category = ShmupCollision.Category_PlayerShot
			}
			local firetimer = self.firetimer
			for i = 1, 2 do
				firetimer = ShmupBullet.fireOverTime(params,
					self.object.layer, self.firetimer,
					ShmupPlayer.BulletInterval)
				params.x = params.x + 16
			end
			self.firetimer = firetimer

			self:playSound(Sounds.Shot)
		end

		self.firetimer = self.firetimer - dt
	end
end

function ShmupPlayer:endMove(dt)
	local cameraid = levity.map.properties.cameraid
	local camera = nil
	if cameraid then
		camera = levity.map.objects[cameraid]
	end
	if camera then
		local cx, cy = self.object.body:getWorldCenter()
		levity.machine:call(cameraid, "swayWithPlayer", cx)
	end
end

function ShmupPlayer:beginDraw()
	if self.shieldtimer > 0 then
		local alpha = (0x100 * (math.cos(self.shieldtimer*30*math.pi) + 1)*.5)
		love.graphics.setColor(0xff, 0xff, 0xff, alpha)
	end
end

function ShmupPlayer:endDraw()
	if self.shieldtimer > 0 then
		love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
	end
end

return ShmupPlayer
