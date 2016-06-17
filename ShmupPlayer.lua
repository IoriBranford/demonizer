local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
require "class"

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

	for i = 1, 4, 1 do
		local fixture = fixtures["ally"..i]
		if fixture then
			fixture:setFilterData(0, 0, 0)
		end
	end
end)

ShmupPlayer.Speed = 180
ShmupPlayer.BulletSpeed = 32*60
ShmupPlayer.BulletInterval = 1/15
ShmupPlayer.MaxAllies = 4
ShmupPlayer.DeathTime = 1
ShmupPlayer.RespawnShieldTime = 3
ShmupPlayer.DeathSnapToCameraVelocity = 1/4

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
		x = x + ox
		y = y + oy
	end
	return x, y
end

function ShmupPlayer:isFiring()
	return self.firing
end

function ShmupPlayer:keypressed(key, u)
	if key == "up" then
		self.vy = self.vy - ShmupPlayer.Speed
	elseif key == "down" then
		self.vy = self.vy + ShmupPlayer.Speed
	elseif key == "left" then
		self.vx = self.vx - ShmupPlayer.Speed
	elseif key == "right" then
		self.vx = self.vx + ShmupPlayer.Speed
	elseif key == "z" then
		self.firetimer = ShmupPlayer.BulletInterval
		self.firing = true
	end
end

function ShmupPlayer:keyreleased(key, u)
	if key == "up" then
		self.vy = self.vy + ShmupPlayer.Speed
	elseif key == "down" then
		self.vy = self.vy - ShmupPlayer.Speed
	elseif key == "left" then
		self.vx = self.vx + ShmupPlayer.Speed
	elseif key == "right" then
		self.vx = self.vx - ShmupPlayer.Speed
	elseif key == "z" then
		self.firetimer = 0
		self.firing = false
	end
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
		end
	end
end

function ShmupPlayer:beginMove(dt)
	local body = self.object.body
	local cx, cy = body:getWorldCenter()
	local vx0, vy0 = body:getLinearVelocity()
	local vx1, vy1 = self.vx, self.vy

	if self.didmousemove then
		vx1 = vx1 / dt
		vy1 = vy1 / dt
		self.vx = 0
		self.vy = 0
		didmousemove = false
	end

	self.shieldtimer = math.max(0, self.shieldtimer - dt)

	local cameraid = self.object.properties.cameraid
	local camera = nil
	if cameraid then
		camera = levity.map.objects[cameraid]
	end

	if self.dead then
		self.deathtimer = self.deathtimer + dt
		local respawn = self.deathtimer >= ShmupPlayer.DeathTime
		self.dead = not respawn
		self.object.visible = respawn
		vx1 = 0
		vy1 = 0
		if camera then
			local camcx, camcy = camera.body:getWorldCenter()
			camcy = camcy + camera.height * (3 / 8)
			local snaptocamv = self.deathtimer *
				ShmupPlayer.DeathSnapToCameraVelocity / dt
			vx1 = (camcx - cx) * snaptocamv
			vy1 = (camcy - cy) * snaptocamv
		end
		if respawn then
			self.shieldtimer = ShmupPlayer.RespawnShieldTime
		end
	end

	if camera then
		local camvx, camvy = camera.body:getLinearVelocity()
		vy1 = vy1 + camvy
	end

	local mass = body:getMass()
	body:applyLinearImpulse(mass * (vx1-vx0), mass * (vy1-vy0))

	if self.firing and not self.dead then
		if self.firetimer >= ShmupPlayer.BulletInterval then
			while self.firetimer >= ShmupPlayer.BulletInterval do
				self.firetimer = self.firetimer
						- ShmupPlayer.BulletInterval
			end

			local cx, cy = body:getWorldCenter()
			cy = cy - (ShmupPlayer.BulletSpeed * self.firetimer)
			ShmupBullet.create(cx, cy,
				ShmupPlayer.BulletSpeed, math.pi*1.5,
				"impshot", 0,
				self.object.layer,
				ShmupCollision.Category_PlayerShot)
		end
		self.firetimer = self.firetimer + dt
	end
end

function ShmupPlayer:endMove(dt)
	local cameraid = self.object.properties.cameraid
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
		local alpha = 0xFF * math.cos(self.shieldtimer * 60)
		love.graphics.setColor(0xFF, 0xFF, 0xFF, alpha)
	end
end

function ShmupPlayer:endDraw()
	if self.shieldtimer > 0 then
		love.graphics.setColor(0xFF, 0xFF, 0xFF, 0xFF)
	end
end

return ShmupPlayer
