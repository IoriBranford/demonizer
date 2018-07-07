local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = require("ShmupBullet")

local PlayMask = {
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_EnemyBounds
}

local NonPlayMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_EnemyTeam,
	ShmupCollision.Category_EnemyShot,
	ShmupCollision.Category_EnemyBounds
}

local WinMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_EnemyShot,
	ShmupCollision.Category_EnemyBounds
}

local ShmupPlayer = class()
function ShmupPlayer:_init(object)
	self.object = object
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)

	self.inputvx = 0
	self.inputvy = 0
	self.didmousemove = false

	self.firebutton = false
	self.firetimer = 0
	self.focusbutton = false
	self.bombbutton = false

	self.killed = false

	self.coroutine = coroutine.create(ShmupPlayer.spawnCoroutine)

	self.shieldtimer = 0

	self.exiting = false
	self.exittimer = 0

	local nextmapdata = levity.nextmapdata or {}
	local nextmapplayer = nextmapdata.player or {}
	self.poweredup = nextmapplayer.poweredup or false

	local fixtures = self.object.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	if bodyfixture then
		bodyfixture:setFriction(0)
		bodyfixture:setCategory(ShmupCollision.Category_PlayerTeam)
		bodyfixture:setMask(NonPlayMask)
	end

	self.soundsource = nil
	self.soundfile = nil

	self.moverestricted = nil
	self.firerestricted = nil
end

local Sounds = {
	Shot = "snd/playershot.wav",
	Bomber = "snd/bomber.wav",
	Bomb = "snd/bomb.wav",
	Maxed = "snd/maxed.wav",
	Powerup = "snd/powerup.wav",
	Death = "snd/selfdestruct.wav",
	Scream = "snd/shriek.wav",
	Respawn = "snd/respawn.wav",
	Exit = "snd/turbo.wav"
}
levity.bank:load(Sounds)

ShmupPlayer.Sounds = Sounds
ShmupPlayer.Speed = 180
ShmupPlayer.SpeedSq = ShmupPlayer.Speed * ShmupPlayer.Speed
ShmupPlayer.BulletInterval = 1/10
ShmupPlayer.DeathTime = 1
ShmupPlayer.RecenterTime = .1
ShmupPlayer.RespawnShieldTime = 3
ShmupPlayer.DeathSnapToCameraVelocity = 1/16
ShmupPlayer.Button_Fire = 1
ShmupPlayer.Button_Focus = 2
ShmupPlayer.Button_Bomb = 3
ShmupPlayer.TutorialExitWaitTime = 2
ShmupPlayer.ExitWaitTime = 8
ShmupPlayer.ExitSpeed = ShmupPlayer.Speed * 2

function ShmupPlayer:playSound(soundfile)
	if self.soundfile ~= soundfile then
		self.soundfile = soundfile
		self.soundsource = levity.bank:play(soundfile)
	else
		self.soundsource:rewind()
		self.soundsource:play()
	end
end

function ShmupPlayer:isFiring()
	if self.firerestricted == "none" then
		return false
	end

	if self.firerestricted == "focus" and not self:isFocused() then
		return false
	end

	return not self.killed and not self.exiting
		and not self.bombbutton and self.firebutton
end

function ShmupPlayer:isFocused()
	return not self.killed and not self.exiting and self.focusbutton
end

function ShmupPlayer:isKilled()
	return self.killed
end

function ShmupPlayer:isPoweredUp()
	return self.poweredup
end

function ShmupPlayer:setFiring(button)
	self.firebutton = button
end

function ShmupPlayer:setFocused(button)
	self.focusbutton = button
end

function ShmupPlayer:restrictMove(moverestricted)
	self.moverestricted = moverestricted
	if moverestricted ~= "" then
		self:recenter()
	end
end

function ShmupPlayer:restrictFire(firerestricted)
	self.firerestricted = firerestricted
end

function ShmupPlayer:getDistanceSq(fromx, fromy)
	local cx, cy = self.object.body:getWorldCenter()
	local dx = cx - fromx
	local dy = cy - fromy
	return math.hypotsq(dx, dy)
end

function ShmupPlayer:joystickaxis(joystick, axis, value)
	local speed = ShmupPlayer.Speed
	local focusspeedfactor = .5
	if self.focusbutton then
		speed = speed * focusspeedfactor
	end

	value = math.floor(value + .5)

	if axis == 1 then
		self.inputvx = speed * value
	elseif axis == 2 then
		self.inputvy = speed * value
	end
end

function ShmupPlayer:joystickhat(joystick, hat, value)
	local x, y = 0, 0

	if value:find("l") then
		x = -1
	elseif value:find("r") then
		x = 1
	end

	if value:find("u") then
		y = -1
	elseif value:find("d") then
		y = 1
	end

	self:joystickaxis(joystick, 1, x)
	self:joystickaxis(joystick, 2, y)
end

function ShmupPlayer:joystickchanged(button, pressed)
	if button == ShmupPlayer.Button_Fire and self.firebutton ~= pressed then
		self.firebutton = pressed
		self.firetimer = ShmupPlayer.BulletInterval
	elseif button == ShmupPlayer.Button_Focus and self.focusbutton ~= pressed then
		local focusspeedfactor = .5
		if not pressed then
			focusspeedfactor = 1/focusspeedfactor
		end

		self.focusbutton = pressed
		self.inputvx = self.inputvx * focusspeedfactor
		self.inputvy = self.inputvy * focusspeedfactor
	elseif button == ShmupPlayer.Button_Bomb and pressed
	and not self.coroutine and not levity.map.paused
	and levity.scripts:call("status", "hasBombs") ~= false then
		self.bombbutton = true
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
	local focusspeedfactor = .5
	if self.focusbutton then
		speed = speed * focusspeedfactor
	end

	if not pressed then
		speed = -speed
	end

	if key == "up" then
		self.inputvy = self.inputvy - speed
	elseif key == "down" then
		self.inputvy = self.inputvy + speed
	elseif key == "left" then
		self.inputvx = self.inputvx - speed
	elseif key == "right" then
		self.inputvx = self.inputvx + speed
	elseif key == "z" then
		self:joystickchanged(ShmupPlayer.Button_Fire, pressed)
	elseif key == "x" then
		self:joystickchanged(ShmupPlayer.Button_Focus, pressed)
	elseif key == "c" then
		self:joystickchanged(ShmupPlayer.Button_Bomb, pressed)
	end
end

function ShmupPlayer:mousepressed(x, y, button)
	self:joystickpressed(nil, button)
end

function ShmupPlayer:mousereleased(x, y, button)
	self:joystickreleased(nil, button)
end

function ShmupPlayer:keypressed(key, u)
	self:keychanged(key, true)
end

function ShmupPlayer:keyreleased(key, u)
	self:keychanged(key, false)
end

function ShmupPlayer:mousemoved(x, y, dx, dy)
	if not levity.map.paused then
		self.inputvx = self.inputvx + (dx / levity.camera.scale)
		self.inputvy = self.inputvy + (dy / levity.camera.scale)
		self.didmousemove = true
	end
end

function ShmupPlayer:beginContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_Default then
			local otherproperties = otherfixture:getBody():getUserData().properties
			self.entrancedestid = self.entrancedestid
				or otherproperties.entrancedestid
		elseif category == ShmupCollision.Category_EnemyShot then
			if not self.killed and self.shieldtimer == 0 then
				self:kill()
			end
		end
	end
end

function ShmupPlayer:preSolve(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_EnemyTeam
		or category == ShmupCollision.Category_EnemyInCover
		then
			local otherobject = otherfixture:getBody():getUserData().object
			if otherobject.layer ~= self.object.layer then
				contact:setEnabled(false)
			end
		end
	end
end

function ShmupPlayer:kill()
	self.coroutine = coroutine.create(ShmupPlayer.deathCoroutine)
end

function ShmupPlayer:deathCoroutine(dt)
	local x, y = self.object.body:getWorldCenter()
	ShmupBullet.create("PlayerDeath", x, y, 0, 0, self.object.layer, true)

	self.killed = true
	self.object.visible = false
	self.poweredup = false

	-- capturing not allowed while player killed
	local fixtures = self.object.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	bodyfixture:setMask(NonPlayMask)

	levity.scripts:broadcast("playerKilled")

	self:playSound(Sounds.Death)
	self:playSound(Sounds.Scream)

	local t = 0
	while t < ShmupPlayer.DeathTime do
		local cameraid = levity.map.properties.cameraid
		local camera = levity.map.objects[cameraid]
		local camvx, camvy = camera.body:getLinearVelocity()
		self.object.body:setLinearVelocity(camvx, camvy)

		local cx, cy = self.object.body:getWorldCenter()
		levity.scripts:send("deathparticles", "emit",
			4, cx, cy, 2*math.pi*love.math.random())

		t = t + dt
		self, dt = coroutine.yield()
	end

	if levity.scripts:call("status", "getNumLives") ~= 0 then
		self.coroutine = coroutine.create(ShmupPlayer.spawnCoroutine)
	else
		levity.scripts:broadcast("playerLost")
		self.object.body:setLinearVelocity(0, 0)
		while true do
			coroutine.yield()
		end
	end
end

function ShmupPlayer:getSpawnPosition()
	local cameraid = levity.map.properties.cameraid
	local camera = levity.map.objects[cameraid]
	local camcx, camcy = camera.body:getWorldCenter()
	return camcx, camcy + camera.height * (3 / 8)
end

function ShmupPlayer:getRecenterVelocity(dt)
	local cx, cy = self.object.body:getWorldCenter()
	local spawnx, spawny = self:getSpawnPosition()
	local dx, dy = spawnx - cx, spawny - cy

	local cameraid = levity.map.properties.cameraid
	local camera = levity.map.objects[cameraid]
	local camvx, camvy = camera.body:getLinearVelocity()

	if math.hypotsq(dx, dy) < ShmupPlayer.SpeedSq*dt*dt then
		return 0, 0
	end

	return dx/ShmupPlayer.RecenterTime + camvx,
		dy/ShmupPlayer.RecenterTime + camvy
end

function ShmupPlayer:recenter()
	self.coroutine = self.coroutine or
		coroutine.create(ShmupPlayer.recenterCoroutine)
end

function ShmupPlayer:recenterCoroutine(dt)
	local _
	local vx, vy
	repeat
		vx, vy = self:getRecenterVelocity(dt)
		self.object.body:setLinearVelocity(vx, vy)
		_, dt = coroutine.yield()
	until vx == 0 and vy == 0
end

function ShmupPlayer:spawnCoroutine(dt)
	self:recenterCoroutine(dt)

	local fixtures = self.object.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	if bodyfixture then
		bodyfixture:setMask(PlayMask)
	end

	self.shieldtimer = ShmupPlayer.RespawnShieldTime

	if self.killed then
		self.killed = false
		levity.scripts:broadcast("playerRespawned")
		self:playSound(Sounds.Respawn)
		self.object.visible = true
		self.object:setGid(
			levity.map:getTileGid(self.object.tile.tileset, "forward"))
	end
end

function ShmupPlayer:startEntrance(entranceid)
	self.entranceid = entranceid
	self.coroutine = coroutine.create(ShmupPlayer.exitCoroutine)
end

function ShmupPlayer:exitCoroutine(dt)
	self.killed = false
	self.object.visible = true
	self.exiting = true

	local fixtures = self.object.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	if bodyfixture then
		bodyfixture:setMask(WinMask)
	end

	levity.scripts:broadcast("playerEntering", self.entranceid)

	self:recenterCoroutine(dt)

	local istutorial = levity.scripts:call(levity.map.name, "isTutorial")
	local exitwaittime
	if self.won and not istutorial then
		levity.scripts:broadcast("startWinBonus")
		exitwaittime = ShmupPlayer.ExitWaitTime
	else
		exitwaittime = ShmupPlayer.TutorialExitWaitTime
	end

	local t = 0
	repeat
		self, dt = coroutine.yield()
		t = t+dt
	until t >= exitwaittime

	if self.won then
		self:playSound(Sounds.Exit)
	end

	self.object.body:setLinearVelocity(0, -ShmupPlayer.ExitSpeed)

	t = 0
	repeat
		self, dt = coroutine.yield()
		t = t+dt
	until t >= 1 or self.entrancedestid
	if self.entrancedestid then
		self.object.body:setLinearVelocity(0, 0)
	end

	levity.scripts:send("curtain", "beginClose")

	t = 0
	repeat
		self, dt = coroutine.yield()
		t = t+dt
	until t >= 1

	if self.won then
		levity:setNextMap(levity.map.properties.nextmap or "title.lua", {})
	else
		local cameraid = levity.map.properties.cameraid
		local destobject = self.entrancedestid
			and levity.map.objects[self.entrancedestid]
		if destobject then
			local camera = levity.map.objects[cameraid]
			camera.body:setPosition(destobject.x, destobject.y)
			self.object.body:setPosition(
				destobject.x + destobject.width/2,
				destobject.y + destobject.height + self.object.height/2)
		end
		levity.scripts:send(self.entrancedestid, "activate")
		self.exiting = false
		self.entranceid = nil
		self.entrancedestid = nil

		levity.scripts:send("curtain", "beginOpen")
		self.coroutine = coroutine.create(ShmupPlayer.spawnCoroutine)
	end
end

function ShmupPlayer:beginMove(dt)
	self.shieldtimer = math.max(0, self.shieldtimer - dt)

	if self.coroutine then
		local ok, err = coroutine.resume(self.coroutine, self, dt)
		if not ok then print(err) end
		if coroutine.status(self.coroutine) == "dead" then
			self.coroutine = nil
		else
			return
		end
	end

	local body = self.object.body
	local vx0, vy0 = body:getLinearVelocity()
	local vx1, vy1 = self.inputvx, self.inputvy

	local cameraid = levity.map.properties.cameraid
	local camera = nil
	if cameraid then
		camera = levity.map.objects[cameraid]
	end

	if self.moverestricted == "y" then
		vx1 = 0
	elseif self.moverestricted == "x" then
		vy1 = 0
	elseif self.moverestricted == "none" then
		vx1, vy1 = 0, 0
	end

	if self.didmousemove then
		vx1 = vx1 / dt
		vy1 = vy1 / dt
		self.inputvx = 0
		self.inputvy = 0
		self.didmousemove = false
	end

	local camvx, camvy = levity.scripts:call(cameraid, "getVelocity")
	if camvy then
		vy1 = vy1 + camvy
	end

	body:setLinearVelocity(vx1, vy1)
end

function ShmupPlayer:updateFire(dt)
	if self.firetimer >= ShmupPlayer.BulletInterval then
		local cx, cy = self.object.body:getWorldCenter()
		local x = cx - 8
		local y = cy - 8
		local firetimer = self.firetimer
		for i = 1, 2 do
			firetimer = ShmupBullet.fireOverTime(
				"BulletPlayer", x, y, 0, -1,
				"playershots", self.firetimer,
				ShmupPlayer.BulletInterval, true)
			x = x + 16
		end
		self.firetimer = firetimer

		self:playSound(Sounds.Shot)
	end
	self.firetimer = levity:timerCorrectRoundingError(
				self.firetimer + dt,
				ShmupPlayer.BulletInterval)
end

function ShmupPlayer:endMove(dt)
	local scoreid = levity.scripts:call("status", "getScoreId")
	if scoreid and not self.poweredup and not self.killed then
		self.poweredup = levity.scripts:call(scoreid, "isMaxMultiplier",
							self.object.id)
		if self.poweredup then
			levity.bank:play(Sounds.Maxed)
			levity.bank:play(Sounds.Powerup)
		end
	end

	local cameraid = levity.map.properties.cameraid
	local camera = nil
	if cameraid then
		camera = levity.map.objects[cameraid]
	end
	if camera then
		local cx, cy = self.object.body:getWorldCenter()
		levity.scripts:call(cameraid, "swayWithPlayer", cx)
	end

	if not self.hitbox then
		self.hitbox = {
			gid = levity.map:getTileGid("playerhitbox", 0, 0)
		}
		self.hitbox.x, self.hitbox.y = self.object.body:getWorldCenter()

		self.object.layer:addObject(self.hitbox)
	end
	self.hitbox.visible = self:isFocused()
	if self.hitbox.body then
		local x, y = self.object.body:getWorldCenter()
		self.hitbox.body:setPosition(x, y + 1/64)
	end

	if self:isFiring() then
		self:updateFire(dt)
	end

	local nextanim
	local animtile = levity.map.tiles[self.object.gid]
	local tileset = animtile.tileset
	local tilename = animtile.properties.name

	local vx1 = self.object.body:getLinearVelocity()
	if self.bombbutton and not tilename:find("bomb") then
		levity.bank:play(Sounds.Bomber)
		nextanim = "bombready"
	elseif vx1 > 0 then
		if tilename == "forward"
		or tilename:find("left") then
			nextanim = "righttilt"
		end
	elseif vx1 < 0 then
		if tilename == "forward"
		or tilename:find("right") then
			nextanim = "lefttilt"
		end
	else
		if tilename == "left"
		or tilename == "lefttilt" then
			nextanim = "leftuntilt"
		elseif tilename == "right"
		or tilename == "righttilt" then
			nextanim = "rightuntilt"
		end
	end

	if nextanim then
		self.object:setGid(levity.map:getTileGid(tileset, nextanim))
	end
end

function ShmupPlayer:humanConverted(humanid, captorid)
	local ShmupWingman = require("ShmupWingman")
	self.shieldtimer = ShmupWingman.ConvertTime
end

function ShmupPlayer:beginDraw()
	local color = self.object.color or {}
	for i=1,3 do
		color[i] = 0xff
	end

	if self.shieldtimer > 0 then
		local flash = 0x100 * (math.cos(self.shieldtimer*30*math.pi)*2 + 3)
		color[1] = flash
		color[3] = flash
	end
	self.object.color = color

	if self.moverestricted == "x" then
		local x, y = self.object.body:getWorldCenter()
		local w = levity.camera.w
		local h = 8
		love.graphics.line(x - w, y - h, x + w, y - h)
		love.graphics.line(x - w, y + h, x + w, y + h)
	elseif self.moverestricted == "y" then
		local x, y = self.object.body:getWorldCenter()
		local w = 8
		local h = levity.camera.h
		love.graphics.line(x - w, y - h, x - w, y + h)
		love.graphics.line(x + w, y - h, x + w, y + h)
	end
end

function ShmupPlayer:loopedAnimation()
	local animtile = levity.map.tiles[self.object.gid]
	local animname = animtile.properties.name
	local tileset = animtile.tileset

	if animname == "bombready" then
		local x, y = self.object.body:getWorldCenter()
		levity.scripts:send("launchbombparticles", "emit",
			4, x, y, -math.pi/2)
	elseif animname == "bomblaunch" then
		local x, y = self.object.body:getWorldCenter()
		ShmupBullet.create("BulletPlayerBomb", x, y-128, 0, 0, "playershots", true)
		levity.scripts:broadcast("playerBombed")
		self.bombbutton = false
	end

	local nextanim = animtile.properties.nextanim
	if nextanim then
		self.object:setGid(levity.map:getTileGid(tileset, nextanim))
	end
end

function ShmupPlayer:beginPlayerWin()
	local fixtures = self.object.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	if bodyfixture then
		bodyfixture:setMask(WinMask)
	end
end

function ShmupPlayer:playerWon()
	self.won = true
	self.coroutine = coroutine.create(ShmupPlayer.exitCoroutine)
end

function ShmupPlayer:nextMap(nextmapfile, nextmapdata)
	if nextmapdata then
		nextmapdata.player = {
			poweredup = self.poweredup
		}
	end
end

return ShmupPlayer
