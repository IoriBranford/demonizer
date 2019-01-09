local levity = require "levity"
local prefs = levity.prefs
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = require("ShmupBullet")
local Targeting = require "Targeting"
local IsMobile = (love.system.getOS() == "Android" or love.system.getOS() == "iOS")

local PlayMask = {
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
	self.id = object.id
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)

	self.inputx = 0
	self.inputy = 0
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

	self.ride = levity.scripts:newScript(self.id, "Ride", self.object)
	self.emote = levity.scripts:newScript(self.id, "Emote", self.object)
end

ShmupPlayer.Speed = 180
ShmupPlayer.SpeedSq = ShmupPlayer.Speed * ShmupPlayer.Speed
ShmupPlayer.BulletInterval = 1/10
ShmupPlayer.DeathTime = 1
ShmupPlayer.RecenterTime = .1
ShmupPlayer.RespawnShieldTime = 3
ShmupPlayer.StunExtraShieldTime = .5
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
	elseif self.soundsource then
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
		and not self.bombbutton
		and (self.firebutton or self.focusbutton)
		and not self.stuntimer
		and not self.friendinfront
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

function ShmupPlayer:getStunTime()
	return self.stuntimer
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
	value = math.floor(value + .5)

	local inputstring = "axis"..axis
	if inputstring == prefs.joy_x then
		self.inputx = value
	elseif inputstring == prefs.joy_y then
		self.inputy = value
	end
end

function ShmupPlayer:joystickhat(joystick, hat, value)
	local inputstring = "hat"..hat
	if inputstring == prefs.joy_x then
		if value:find("l") then
			self.inputx = -1
		elseif value:find("r") then
			self.inputx = 1
		else
			self.inputx = 0
		end
	end
	if inputstring == prefs.joy_y then
		if value:find("u") then
			self.inputy = -1
		elseif value:find("d") then
			self.inputy = 1
		else
			self.inputy = 0
		end
	end
end

local dpadhat = require("dpadhat")

function ShmupPlayer:gamepadpressed(joystick, button)
	if button:find("^dp") then
		self:joystickhat(joystick, "dpad", dpadhat(joystick))
	else
		self:joystickpressed(joystick, button)
	end
end

function ShmupPlayer:gamepadreleased(joystick, button)
	if button:find("^dp") then
		self:joystickhat(joystick, "dpad", dpadhat(joystick))
	else
		self:joystickreleased(joystick, button)
	end
end

function ShmupPlayer:buttonchanged(button, pressed)
	if button == ShmupPlayer.Button_Fire and self.firebutton ~= pressed then
		self.firebutton = pressed
		self.firetimer = ShmupPlayer.BulletInterval
	elseif button == ShmupPlayer.Button_Focus and self.focusbutton ~= pressed then
		self.focusbutton = pressed
	elseif button == ShmupPlayer.Button_Bomb and pressed
	and not self.coroutine and not levity.map.paused
	and levity.scripts:call("status", "hasBombs") ~= false then
		self.bombbutton = true
	end
end

function ShmupPlayer:joystickchanged(joystick, button, pressed)
	if button == prefs.joy_fire then
		self:buttonchanged(ShmupPlayer.Button_Fire, pressed)
	elseif button == prefs.joy_focus then
		self:buttonchanged(ShmupPlayer.Button_Focus, pressed)
	elseif button == prefs.joy_bomb then
		self:buttonchanged(ShmupPlayer.Button_Bomb, pressed)
	end
end

function ShmupPlayer:joystickpressed(joystick, button)
	self:joystickchanged(joystick, button, true)
end

function ShmupPlayer:joystickreleased(joystick, button)
	self:joystickchanged(joystick, button, false)
end

function ShmupPlayer:keychanged(key, pressed)
	local input = 1
	if not pressed then
		input = -input
	end

	if key == prefs.key_up then
		self.inputy = self.inputy - input
	elseif key == prefs.key_down then
		self.inputy = self.inputy + input
	elseif key == prefs.key_left then
		self.inputx = self.inputx - input
	elseif key == prefs.key_right then
		self.inputx = self.inputx + input
	elseif key == prefs.key_fire then
		self:buttonchanged(ShmupPlayer.Button_Fire, pressed)
	elseif key == prefs.key_focus then
		self:buttonchanged(ShmupPlayer.Button_Focus, pressed)
	elseif key == prefs.key_bomb then
		self:buttonchanged(ShmupPlayer.Button_Bomb, pressed)
	end
end

function ShmupPlayer:keypressed(key, u)
	self:keychanged(key, true)
end

function ShmupPlayer:keyreleased(key, u)
	self:keychanged(key, false)
end

function ShmupPlayer:mousepressed(x, y, button)
	self:buttonchanged(button, true)
end

function ShmupPlayer:mousereleased(x, y, button)
	self:buttonchanged(button, false)
end

function ShmupPlayer:mousemoved(x, y, dx, dy)
	if not levity.map.paused then
		local scale = levity.camera.scale
		self.inputx = self.inputx + (dx / scale)
		self.inputy = self.inputy + (dy / scale)
		self.didmousemove = true
	end
end

function ShmupPlayer:beginContact(myfixture, otherfixture, contact)
	local otherdata = otherfixture:getBody():getUserData()
	local otherid = otherdata and otherdata.id
	local otherproperties = otherdata and otherdata.properties
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_Default then
			if otherid and otherproperties
			and self.entranceid == otherid and not self.entrancedestid then
				self.entrancedestid = otherproperties.entrancedestid
			end
		elseif category == ShmupCollision.Category_EnemyTeam then
			if otherproperties.meleeknockback then
				self:playSound(self.properties.knockedbacksound)
				self.stuntimer = otherproperties.meleestuntimer or 1
				self.shieldtimer = self.stuntimer + ShmupPlayer.StunExtraShieldTime
				self.emote:setEmote("emotes", "stun")
				self:recenter()
			end
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

	self:playSound(self.properties.deathsound)
	self:playSound(self.properties.screamsound)

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
	until vx == 0 and vy == 0 and not self.stuntimer
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
		self:playSound(self.properties.respawnsound)
		self.object.visible = true
		self.object:setGid(
			levity.map:getTileGid(self.object.tile.tileset, "forward"))
	end
end

function ShmupPlayer:startEntrance(entranceid)
	local entrance = levity.map.objects[entranceid]
	if entrance then
		self.entranceid = entranceid
		self.object:setLayer(entrance.layer)
	end
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
		self:playSound(self.properties.exitsound)
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
		local nextmap = levity.map.properties.nextmap
		if not nextmap or not love.filesystem.exists(nextmap) then
			nextmap = "earlyend.lua"
		end
		levity:setNextMap(nextmap, { playerwon = true })
	else
		self:moveToAndActivate(self.entrancedestid)
		self.object:setLayer(levity.map.layers["playerteam"])
		self.exiting = false
		self.entranceid = nil
		self.entrancedestid = nil

		levity.scripts:send("curtain", "beginOpen")
		self.coroutine = coroutine.create(ShmupPlayer.spawnCoroutine)
	end
end

function ShmupPlayer:moveToAndActivate(triggerid)
	local trigger = triggerid and levity.map.objects[triggerid]
	if trigger then
		local cameraid = levity.map.properties.cameraid
		local camera = levity.map.objects[cameraid]
		camera.body:setPosition(trigger.x, trigger.y)
		self.object.body:setPosition(trigger.x + trigger.width/2,
			trigger.y + trigger.height + self.object.height/2)
		levity.scripts:send(triggerid, "activate")
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
			local vx, vy = self.object.body:getLinearVelocity()
			self.ride:updateRidersVelocity(dt, vx, vy)
			return
		end
	end

	local body = self.object.body
	local vx, vy = self.inputx, self.inputy

	local cameraid = levity.map.properties.cameraid
	local camera = nil
	if cameraid then
		camera = levity.map.objects[cameraid]
	end

	if self.moverestricted == "y" then
		vx = 0
	elseif self.moverestricted == "x" then
		vy = 0
	elseif self.moverestricted == "none" then
		vx, vy = 0, 0
	end

	if self.didmousemove then
		vx = vx / dt
		vy = vy / dt
		self.inputx = 0
		self.inputy = 0
		self.didmousemove = false
	else
		local speed = ShmupPlayer.Speed
		local focusspeedfactor = .5
		if self.focusbutton then
			speed = speed * focusspeedfactor
		end
		vx = vx * speed
		vy = vy * speed
	end

	local camvx, camvy = levity.scripts:call(cameraid, "getVelocity")
	if camvy then
		vy = vy + camvy
	end

	body:setLinearVelocity(vx, vy)
	self.ride:updateRidersVelocity(dt, vx, vy)
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

		self:playSound(self.properties.shotsound)
	end
	self.firetimer = levity:timerCorrectRoundingError(
				self.firetimer + dt,
				ShmupPlayer.BulletInterval)
end

local checkFriendlyFire_halfw = 8
local checkFriendlyFire_height = 240
function ShmupPlayer:checkFriendlyFire()
	local cx, cy = self.object.body:getWorldCenter()
	local lx = cx - checkFriendlyFire_halfw
	local rx = cx + checkFriendlyFire_halfw
	local y1, y2 = cy, cy - checkFriendlyFire_height
	local id1 = Targeting.queryRay("canTakeDamage", lx, y1, lx, y2)
	local id2 = Targeting.queryRay("canTakeDamage", rx, y1, rx, y2)
	return levity.scripts:call(id1, "isHypnotized")
		or levity.scripts:call(id2, "isHypnotized")
end

function ShmupPlayer:endMove(dt)
	self.friendinfront = IsMobile and self:checkFriendlyFire()

	local scoreid = levity.scripts:call("status", "getScoreId")
	if scoreid and not self.poweredup and not self.killed then
		self.poweredup = levity.scripts:call(scoreid, "isMaxMultiplier",
							self.id)
		if self.poweredup then
			levity.bank:play(self.properties.maxedsound)
			levity.bank:play(self.properties.powerupsound)
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
		levity.bank:play(self.properties.bombersound)
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

	local stuntimer = self.stuntimer
	if stuntimer then
		stuntimer = stuntimer - dt
		if stuntimer < 0 then
			stuntimer = nil
			self.emote:setEmote()
		end
		self.stuntimer = stuntimer
	end
end

function ShmupPlayer:wingmanJoined(wingmanid)
	local wingman = levity.map.objects[wingmanid]
	self.shieldtimer = wingman.properties.converttime or 1
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
		ShmupBullet.create("BulletPlayerBomb", x, y, 0, 0, "playershots", true)
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
	local exitid = levity.map.properties.exitid
	self:startEntrance(exitid)
end

function ShmupPlayer:nextMap(nextmapfile, nextmapdata)
	if nextmapdata and nextmapdata.playerwon then
		nextmapdata.player = {
			poweredup = self.poweredup
		}
	end
end

return ShmupPlayer
