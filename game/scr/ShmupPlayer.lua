local levity = require "levity"
local prefs = levity.prefs
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = require("ShmupBullet")
local Targeting = require "Targeting"
local Progress = require "Progress"

local IsMobile = (love.system.getOS() == "Android" or love.system.getOS() == "iOS")

local PlayMask = {
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_EnemyCover,
	ShmupCollision.Category_EnemyBounds
}

local NonPlayMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_EnemyShot,
	ShmupCollision.Category_EnemyCover,
	ShmupCollision.Category_EnemyBounds
}

local DeadMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_EnemyTeam,
	ShmupCollision.Category_EnemyShot,
	ShmupCollision.Category_EnemyCover,
	ShmupCollision.Category_EnemyBounds,
	ShmupCollision.Category_BonusMaze
}

local WinMask = {
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_EnemyShot,
	ShmupCollision.Category_EnemyCover,
	ShmupCollision.Category_EnemyBounds
}

local ShmupPlayer = class(require("Script"))
function ShmupPlayer:_init(object)
	self.object = object
	self.body = object.body
	self.id = object.id
	self.properties = self.object.properties
	self.body:setFixedRotation(true)
	self.body:setBullet(true)

	self.inputx = 0
	self.inputy = 0
	self.didmousemove = false

	self.firebutton = false
	self.firetimer = 0
	self.focusbutton = false
	self.bombbutton = false

	self.killed = false

	local co = self[self.properties.coroutine] or ShmupPlayer.spawnCoroutine
	self.coroutine = coroutine.create(co)

	self.shieldtimer = 0

	self.exitphase = nil
	self.exittimer = 0

	local nextmapdata = levity.nextmapdata or {}
	nextmapdata.playerwon = nil

	local fixtures = self.body:getUserData().fixtures
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
ShmupPlayer.ExitWaitTime = 3
ShmupPlayer.ExitSpeed = ShmupPlayer.Speed * 2
ShmupPlayer.FocusRayLength = 320

function ShmupPlayer:playSound(soundfile)
	if self.soundfile ~= soundfile then
		self.soundfile = soundfile
		self.soundsource = levity.bank:play(soundfile)
	elseif self.soundsource then
		self.soundsource:stop()
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

	return not self.killed and not self.exitphase
		and not self.bombbutton
		and (self.firebutton or self.focusbutton or IsMobile)
		and not self.stuntimer
		and not self.friendinfront
end

function ShmupPlayer:isFocused()
	return not self.killed and not self.exitphase and self.focusbutton
end

function ShmupPlayer:isKilled()
	return self.killed
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
	local cx, cy = self.body:getWorldCenter()
	local dx = cx - fromx
	local dy = cy - fromy
	return math.hypotsq(dx, dy)
end

function ShmupPlayer:joystickaxis(joystick, axis, value)
	if math.abs(value) < .25 then
		value = 0
	end

	local inputstring = type(axis)=="number" and "axis"..axis or axis
	if inputstring == prefs.joy_x then
		self.inputx = value
	elseif inputstring == prefs.joy_y then
		self.inputy = value
	end
end

ShmupPlayer.gamepadaxis = ShmupPlayer.joystickaxis

function ShmupPlayer:joystickhat(joystick, hat, value)
	local inputstring = type(hat)=="number" and "hat"..hat or hat
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
		self.firetimer = ShmupPlayer.BulletInterval
	elseif button == ShmupPlayer.Button_Bomb and pressed
	and not self.coroutine and not levity.map.paused
	and self:call("status", "hasBombs") ~= false then
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

local MouseMoveCap = 120
function ShmupPlayer:mousemoved(x, y, dx, dy)
	if not levity.map.paused and not self.coroutine then
		local scale = levity.camera.scale
		dx = (dx / scale)
		dy = (dy / scale)
		if math.abs(dx) <= MouseMoveCap then
			self.inputx = self.inputx + dx
			self.didmousemove = true
		end
		if math.abs(dy) <= MouseMoveCap then
			self.inputy = self.inputy + dy
			self.didmousemove = true
		end
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
			self:send(otherid, "onHit")
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
	local x, y = self.body:getWorldCenter()
	ShmupBullet.create("PlayerDeath", x, y, 0, 0, self.object.layer, true)

	self.killed = true
	self.object.visible = false

	-- capturing not allowed while player killed
	local fixtures = self.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	bodyfixture:setMask(DeadMask)

	self:broadcast("playerKilled")

	self:playSound(self.properties.deathsound)
	self:playSound(self.properties.screamsound)

	local t = 0
	while t < ShmupPlayer.DeathTime do
		local cameraid = levity.map.properties.cameraid
		local camera = levity.map.objects[cameraid]
		local camvx, camvy = camera.body:getLinearVelocity()
		self.body:setLinearVelocity(camvx, camvy)

		local cx, cy = self.body:getWorldCenter()
		self:send("deathparticles", "emit",
			4, cx, cy, 2*math.pi*love.math.random())

		t = t + dt
		self, dt = coroutine.yield()
	end

	if self:call("status", "getNumLives") ~= 0 then
		self.coroutine = coroutine.create(ShmupPlayer.spawnCoroutine)
	elseif levity.nextmapdata and levity.nextmapdata.attractmode then
		levity:setNextMap("title.lua")
	else
		self:broadcast("playerLost")
		self.body:setLinearVelocity(0, 0)
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
	local cx, cy = self.body:getWorldCenter()
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
		self.body:setLinearVelocity(vx, vy)
		_, dt = coroutine.yield()
		if vx == 0 and vy == 0 then
			self.body:setPosition(self:getSpawnPosition())
		end
	until vx == 0 and vy == 0 and not self.stuntimer
end

function ShmupPlayer:spawnCoroutine(dt)
	self:recenterCoroutine(dt)

	local fixtures = self.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	if bodyfixture then
		bodyfixture:setMask(PlayMask)
	end

	self.shieldtimer = ShmupPlayer.RespawnShieldTime

	if self.killed then
		self.killed = false
		self:broadcast("playerRespawned")
		self:playSound(self.properties.respawnsound)
		self.object.visible = true
		self.object:setGid(
			levity.map:getTileGid(self.object.tile.tileset, "forward"))
	end
end

function ShmupPlayer:startDialogue(dialoguetriggerid)
	if not self.coroutine then
		self.dialoguetriggerid = dialoguetriggerid
		self.coroutine = coroutine.create(ShmupPlayer.dialogueCoroutine)
	else
		self.pendingdialoguetriggerid = dialoguetriggerid
	end
end

function ShmupPlayer:isInDialogue()
	return self.exitphase == "dialogue"
end

function ShmupPlayer:skipDialogue()
	self.skipdialogue = true
end

function ShmupPlayer:skipDialogueObjects(objects)
	for i = #objects, 1, -1 do
		local object = objects[i]
		if object.type == "Polygon" or object.text then
			object.visible = false
		end
	end
end

function ShmupPlayer:dialogueCoroutine(dt)
	self:broadcast("allItemsPulled")
	self.exitphase = "dialogue"
	local fixtures = self.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	if bodyfixture then
		bodyfixture:setMask(NonPlayMask)
	end
	local trigger = levity.map.objects[self.dialoguetriggerid]
	self:broadcast("dialogueStarted", trigger and trigger.layer.name)
	self:recenterCoroutine(dt)
	local dialoguenexttriggerid = trigger and trigger.properties.dialoguenexttriggerid
	local waittriggerid = trigger and trigger.properties.waittriggerid
	local nexttrigger
	local islastdialogue = true
	local timelinespeed = trigger.properties.timelinespeed
	local dialoguefinishtowin = trigger.properties.dialoguefinishtowin
	if timelinespeed == 0 then
		nexttrigger = levity.map.objects[dialoguenexttriggerid]
		islastdialogue = not nexttrigger or not nexttrigger.properties.dialogue
		if not self.skipdialogue then
			local showbattle = islastdialogue and not dialoguefinishtowin
			self:send("status", "setPrompt", "continueprompt", not showbattle)
			self:send("status", "setPrompt", "battleprompt", showbattle)
			self.firebutton = false
			self.focusbutton = false
		end
		while not self.firebutton
		and not self.focusbutton
		and not self.skipdialogue do
			coroutine.yield()
		end
		if self.skipdialogue then
			if not islastdialogue then
				self:skipDialogueObjects(nexttrigger.layer.objects)
			end
		end
		self:send(trigger.id, "deactivate")
		local nexttimelinespeed = nexttrigger and nexttrigger.properties.timelinespeed
		if islastdialogue or self.skipdialogue or nexttimelinespeed > 0 then
			self:send("status", "setPrompt", "continueprompt", false)
			self:send("status", "setPrompt", "battleprompt", false)
		end
		self:send(dialoguenexttriggerid, "activate")
	elseif timelinespeed > 0 then
		nexttrigger = levity.map.objects[waittriggerid]
		islastdialogue = not nexttrigger or not nexttrigger.properties.dialogue
		while self:call(trigger.id, "isWaitingToTrigger") do
			coroutine.yield()
			if self.skipdialogue then
				if not islastdialogue then
					self:skipDialogueObjects(nexttrigger.layer.objects)
				end
			end
		end
	end

	if islastdialogue then
		if dialoguefinishtowin then
			self:broadcast("playerWon")
		else
			self.skipdialogue = nil
			self.exitphase = nil
			self.dialoguetriggerid = nil
			if bodyfixture then
				bodyfixture:setMask(PlayMask)
			end
			self.shieldtimer = ShmupPlayer.RespawnShieldTime
		end
		self:broadcast("dialogueFinished", trigger.id)
	end
end

function ShmupPlayer:startEntrance(entranceid)
	local entrance = levity.map.objects[entranceid]
	if entrance then
		self.entranceid = entranceid
		self.object:setLayer(entrance.layer)
	end
	self.coroutine = coroutine.create(ShmupPlayer.exitRecenterCoroutine)
end

function ShmupPlayer:isExiting()
	return self.exitphase == "exit", self.entranceid
end

function ShmupPlayer:waitCoroutine()
	self.exitphase = "waiting"
	while true do
		coroutine.yield()
	end
end

function ShmupPlayer:startExit()
	self.won = true
	self.coroutine = coroutine.create(self.exitCoroutine)
end

function ShmupPlayer:exitRecenterCoroutine(dt)
	self.killed = false
	self.object.visible = true
	self.exitphase = "recenter"

	local fixtures = self.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	if bodyfixture then
		bodyfixture:setMask(NonPlayMask)
	end

	self:broadcast("playerEntering", self.entranceid)

	self:recenterCoroutine(dt)

	local istutorial = self:call(levity.map.name, "isTutorial")
	local exitwaittime
	if self.won and not istutorial then
		self:broadcast("startWinBonus")
		exitwaittime = ShmupPlayer.ExitWaitTime
	else
		exitwaittime = ShmupPlayer.TutorialExitWaitTime
	end

	local t = 0
	repeat
		self, dt = coroutine.yield()
		t = t+dt
	until t >= exitwaittime

	self.coroutine = coroutine.create(ShmupPlayer.exitCoroutine)
end

function ShmupPlayer:exitCoroutine(dt)
	if self.won then
		self:playSound(self.properties.exitsound)
	end

	self.body:setLinearVelocity(0, -ShmupPlayer.ExitSpeed)
	self.exitphase = "exit"

	local t = 0
	repeat
		self, dt = coroutine.yield()
		t = t+dt
	until t >= 1 or self.entrancedestid
	if self.entrancedestid then
		self.body:setLinearVelocity(0, 0)
	end

	self:send("curtain", "beginClose")

	t = 0
	repeat
		self, dt = coroutine.yield()
		t = t+dt
	until t >= 1

	if self.won then
		local nextmap = levity.map.properties.nextmap
		if not nextmap or not love.filesystem.getInfo(nextmap) then
			nextmap = "earlyend.lua"
		end
		local nextmapdata = levity.nextmapdata or {}
		nextmapdata.playerwon = true
		levity:setNextMap(nextmap, nextmapdata)
	else
		self:broadcast("allBulletsCleared")
		self:moveToAndActivate(self.entrancedestid)
		self.object:setLayer(levity.map.layers["playerteam"])
		self.exitphase = false
		self.entranceid = nil
		self.entrancedestid = nil

		self:send("curtain", "beginOpen")
		self.coroutine = coroutine.create(ShmupPlayer.spawnCoroutine)
	end
end

function ShmupPlayer:moveToAndActivate(triggerid)
	local trigger = triggerid and levity.map.objects[triggerid]
	if trigger then
		local cameraid = levity.map.properties.cameraid
		local camera = levity.map.objects[cameraid]
		camera.body:setPosition(trigger.x, trigger.y)
		self.body:setPosition(trigger.x + trigger.width/2,
			trigger.y + trigger.height + self.object.height/2)
		self:send(triggerid, "activate")
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
			local vx, vy = self.body:getLinearVelocity()
			self.ride:updateRidersVelocity(dt, vx, vy)
			return
		end
	end

	if self.pendingdialoguetriggerid then
		self:startDialogue(self.pendingdialoguetriggerid)
		self.pendingdialoguetriggerid = nil
		return
	end

	local body = self.body
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
		local focusspeedfactor = 2/3
		if self.focusbutton then
			speed = speed * focusspeedfactor
		end
		vx = vx * speed
		vy = vy * speed
	end

	local camvx, camvy = self:call(cameraid, "getVelocity")
	if camvy then
		vy = vy + camvy
	end

	body:setLinearVelocity(vx, vy)
	self.ride:updateRidersVelocity(dt, vx, vy)
end

function ShmupPlayer:updateFire(dt)
	if self.firetimer >= ShmupPlayer.BulletInterval then
		local numbullets = self:call("status", "getNumPlayerShots") or 2
		local cx, cy = self.body:getWorldCenter()
		local space = 16
		local x = cx - (numbullets-1)*space/2
		local y = cy - (numbullets-1)*space/2
		local firetimer = self.firetimer
		for i = 1, numbullets do
			firetimer = ShmupBullet.fireOverTime(
				"BulletPlayer", x, y, 0, -1,
				"playershots", self.firetimer,
				ShmupPlayer.BulletInterval, true)
			if numbullets > 1 then
				x = x + space/(numbullets-1)
			end
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
	local cx, cy = self.body:getWorldCenter()
	local lx = cx - checkFriendlyFire_halfw
	local rx = cx + checkFriendlyFire_halfw
	local y1, y2 = cy, cy - checkFriendlyFire_height
	local id1 = Targeting.queryRay("canTakeDamage", lx, y1, lx, y2)
	local id2 = Targeting.queryRay("canTakeDamage", rx, y1, rx, y2)
	return self:call(id1, "isHypnotized")
		or self:call(id2, "isHypnotized")
end

function ShmupPlayer:endMove(dt)
	self.friendinfront = IsMobile and self:checkFriendlyFire()

	local cameraid = levity.map.properties.cameraid
	local camera = nil
	if cameraid then
		camera = levity.map.objects[cameraid]
	end
	if camera then
		local cx, cy = self.body:getWorldCenter()
		self:call(cameraid, "swayWithPlayer", cx)
	end

	if not self.hitbox then
		self.hitbox = levity.map:newObject(self.object.layer)
		self.hitbox.gid = levity.map:getTileGid("playerhitbox", 0, 0)
		self.hitbox.x, self.hitbox.y = self.body:getWorldCenter()
	end
	self.hitbox.visible = self:isFocused()
	if self.hitbox.body then
		local x, y = self.body:getWorldCenter()
		self.hitbox.body:setPosition(x, y + 1/64)
	end

	if self:isFiring() then
		self:updateFire(dt)
	end

	local nextanim
	local animtile = levity.map.tiles[self.object.gid]
	local tileset = animtile.tileset
	local tilename = animtile.properties.name

	local vx1 = self.body:getLinearVelocity()
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
		color[i] = 1
	end

	if self.shieldtimer > 0 then
		local flash = (math.cos(self.shieldtimer*30*math.pi)*2 + 3)
		color[1] = flash
		color[3] = flash
	end
	self.object.color = color

	if self.moverestricted == "x" then
		local x, y = self.body:getWorldCenter()
		local w = levity.camera.w
		local h = 8
		love.graphics.line(x - w, y - h, x + w, y - h)
		love.graphics.line(x - w, y + h, x + w, y + h)
	elseif self.moverestricted == "y" then
		local x, y = self.body:getWorldCenter()
		local w = 8
		local h = levity.camera.h
		love.graphics.line(x - w, y - h, x - w, y + h)
		love.graphics.line(x + w, y - h, x + w, y + h)
	end

	if self:isFiring() and self:isFocused() then
		local lx, ly, rx, ry, _ = self:getEyePositions()
		local lx2, ly2 = self:getFocusTargetPosition(self.leftfocustargetid)
		local rx2, ry2 = self:getFocusTargetPosition(self.rightfocustargetid)
		ly2 = ly2 or (ly - ShmupPlayer.FocusRayLength)
		ry2 = ry2 or (ry - ShmupPlayer.FocusRayLength)
		local flash = .25*(1+math.sin(15*math.pi*love.timer.getTime()))
		love.graphics.setColor(1, .5, .5, flash)
		love.graphics.line(lx, ly, lx, ly2)
		love.graphics.line(rx, ry, rx, ry2)
		love.graphics.setColor(1, 1, 1, 1)
	end
end

function ShmupPlayer:getEyePositions()
	local x, y = self.body:getWorldCenter()
	local x1 = x - 6
	local x2 = x + 6
	return x1, y, x2, y
end

function ShmupPlayer:updateFocusTargets()
	if not self:isFiring() or not self:isFocused() then
		self.leftfocustargetid, self.rightfocustargetid = nil, nil
		return
	end
	local lx, ly, rx, ry = self:getEyePositions()
	local ly2 = ly - ShmupPlayer.FocusRayLength
	local ry2 = ry - ShmupPlayer.FocusRayLength
	self.leftfocustargetid = Targeting.queryRay("canBeLockTarget", lx, ly, lx, ly2)
	self.rightfocustargetid = Targeting.queryRay("canBeLockTarget", rx, ry, rx, ry2)
	return self.leftfocustargetid, self.rightfocustargetid
end

function ShmupPlayer:getFocusTargetPosition(id)
	local object = levity.map.objects[id]
	if object then
		return object.body:getWorldCenter()
	end
end

function ShmupPlayer:loopedAnimation()
	local animtile = levity.map.tiles[self.object.gid]
	local animname = animtile.properties.name
	local tileset = animtile.tileset

	if animname == "bombready" then
		local x, y = self.body:getWorldCenter()
		self:send("launchbombparticles", "emit",
			4, x, y, -math.pi/2)
	elseif animname == "bomblaunch" then
		local x, y = self.body:getWorldCenter()
		ShmupBullet.create("BulletPlayerBomb", x, y, 0, 0, "playershots", true)
		self:broadcast("playerBombed")
		self.bombbutton = false
	end

	local nextanim = animtile.properties.nextanim
	if nextanim then
		self.object:setGid(levity.map:getTileGid(tileset, nextanim))
	end
end

function ShmupPlayer:beginPlayerWin()
	local fixtures = self.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	if bodyfixture then
		bodyfixture:setMask(WinMask)
	end
	local nextmap = levity.map.properties.nextmap
	if nextmap and love.filesystem.getInfo(nextmap) then
		Progress.unlock(nextmap)
	end
end

function ShmupPlayer:playerWon()
	local fixtures = self.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	if bodyfixture then
		bodyfixture:setMask(NonPlayMask)
	end
	self.won = true
	local exitid = levity.map.properties.exitid
	self:startEntrance(exitid)
end

return ShmupPlayer
