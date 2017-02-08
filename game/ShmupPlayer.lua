local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = levity.machine:requireScript("ShmupBullet")
local ShmupStatus = levity.machine:requireScript("ShmupStatus")

-- delayed requires to avoid circular dependency
local ShmupNPC
local ShmupWingman

local OS = love.system.getOS()
local IsMobile = OS == "Android" or OS == "iOS"

local PlayMask = {
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb
}

local NonPlayMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerTeam,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_NPCTeam,
	ShmupCollision.Category_NPCShot
}

local ShmupPlayer
ShmupPlayer = class(function(self, id)
	ShmupNPC = ShmupNPC or levity.machine:requireScript("ShmupNPC")
	ShmupWingman = ShmupWingman or levity.machine:requireScript("ShmupWingman")

	self.object = levity.map.objects[id]
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self.object.body:setBullet(true)

	self.inputvx = 0
	self.inputvy = 0
	self.didmousemove = false

	self.firebutton = false
	self.firetimer = 0
	self.focusbutton = false

	self.killed = false
	self.deathtimer = ShmupPlayer.DeathTime

	self.coroutine = coroutine.create(ShmupPlayer.spawnCoroutine)

	self.shieldtimer = 0

	self.exiting = false
	self.exittimer = 0

	self.numwingmen = 0
	self.wingmenids = {}

	local nextmapplayer = levity.nextmapdata.player or {}
	self.numcaptives = nextmapplayer.numcaptives or 0
	self.captivegids = levity:tileNamesToGids(nextmapplayer.captivenames) or {}

	local wingmengids = levity:tileNamesToGids(nextmapplayer.wingmennames) or {}
	local cx, cy = self.object.body:getWorldCenter()
	for _, gid in ipairs(wingmengids) do
		ShmupWingman.create(gid, cx, cy, nil)
	end

	local fixtures = self.object.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	if bodyfixture then
		bodyfixture:setFriction(0)
		bodyfixture:setCategory(ShmupCollision.Category_PlayerTeam)
		bodyfixture:setMask(unpack(NonPlayMask))
	end

	self.wingmanpositions = {}
	self.focuswingmanpositions = {}
	local tile = levity.map.tiles[self.object.gid]
	local tileobjects = tile.objectGroup.objects
	local tileheight = levity:getMapTileset(tile.tileset).tileheight
	-- bottom left origin
	-- TODO in levity transform all tile objects so scripts don't have to
	for _, object in pairs(tileobjects) do
		local i = tonumber(object.name:match("focuswingman(%x)"))
		if i then
			self.focuswingmanpositions[i] = {object.x, object.y - tileheight}
		else
			i = tonumber(object.name:match("wingman(%x)"))
			if i then
				self.wingmanpositions[i] = {object.x, object.y - tileheight}
			end
		end
	end

	self.soundsource = nil
	self.soundfile = nil
end)

ShmupPlayer.Speed = 180
ShmupPlayer.SpeedSq = ShmupPlayer.Speed * ShmupPlayer.Speed
ShmupPlayer.BulletInterval = 1/10
ShmupPlayer.BulletParams = {
	speed = 16*60,
	angle = -math.pi*0.5,
	damage = 4,
	gid = levity:getTileGid("demonshots", "player", 0),
	category = ShmupCollision.Category_PlayerShot
}
ShmupPlayer.BombShrapnelParams = {
	speed = 16*60,
	gid = levity:getTileGid("demonshots", "bombshrapnel", 0),
	category = ShmupCollision.Category_PlayerBomb,
	lifetime = .125,
	persist = true,
}
ShmupPlayer.BombMaxTime = 2
ShmupPlayer.BombParams = {
	lifetime = 2,
	speed = 0,
	angle = 0,
	damage = 8,
	gid = levity:getTileGid("demonbomb", 0, 0),
	category = ShmupCollision.Category_PlayerBomb,
	persist = true,
	coroutine = function(self)
		local params = ShmupPlayer.BombShrapnelParams
		local angle = 0
		while true do
			params.x, params.y = self.object.body:getWorldCenter()
			params.angle = angle
			for i = 1, 16 do
				ShmupBullet.create(params, self.object.layer)
				params.angle = params.angle + math.pi/8
			end
			angle = angle - math.pi/16

			local t = 1/16
			while t > 0 do
				local _, dt = coroutine.yield()
				t = t - dt
			end
		end
	end
}
ShmupPlayer.MaxWingmen = 4
ShmupPlayer.DeathTime = 1
ShmupPlayer.RespawnShieldTime = 3
ShmupPlayer.DeathSnapToCameraVelocity = 1/16
ShmupPlayer.WingmanFleeDistance = 400
ShmupPlayer.CaptivesReleasedOnKill = 10
ShmupPlayer.Button_Fire = 1
ShmupPlayer.Button_Focus = 2
ShmupPlayer.Button_Bomb = 3
ShmupPlayer.ExitWaitTime = 8
ShmupPlayer.ExitSpeed = ShmupPlayer.Speed * 2

function ShmupPlayer.isActiveWingmanIndex(i)
	return 0 < i and i <= ShmupPlayer.MaxWingmen
end

local Sounds = {
	Shot = "playershot.wav",
	Bomber = "bomber.wav",
	Bomb = "bomb.wav",
	Death = "selfdestruct.wav",
	Scream = "shriek.wav",
	Respawn = "respawn.wav",
	Exit = "turbo.wav"
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

function ShmupPlayer:rankFactor()
	return self.numwingmen / ShmupPlayer.MaxWingmen
end

function ShmupPlayer:roomForWingmen()
	return self.numwingmen < ShmupPlayer.MaxWingmen
end

function ShmupPlayer:newWingmanIndex(wingmanid)
	local newindex = self.numwingmen + 1
	self.numwingmen = newindex
	self.wingmenids[#self.wingmenids + 1] = wingmanid
	return newindex
end

function ShmupPlayer:wingmanReserved(wingmanid, wingmangid)
	self.numwingmen = self.numwingmen - 1
	local wingmanindex = levity.machine:call(wingmanid, "getWingmanIndex")
	table.remove(self.wingmenids, wingmanindex)
end

function ShmupPlayer:wingmanKilled(wingmanid)
	self.numwingmen = self.numwingmen - 1
	local wingmanindex = levity.machine:call(wingmanid, "getWingmanIndex")
	table.remove(self.wingmenids, wingmanindex)
end

function ShmupPlayer:getWingmanPosition(i)
	local wmx, wmy = self.object.body:getWorldCenter()
	local offset

	if self:isFocused() then
		offset = self.focuswingmanpositions[i]
	else
		offset = self.wingmanpositions[i]
	end

	if offset then
		wmx = wmx + offset[1]
		wmy = wmy + offset[2]

		if self.killed then
			local angle = math.pi * .5
			angle = angle + math.atan2(-offset[1], -offset[2]) * .25

			local distance = ShmupPlayer.WingmanFleeDistance
			wmx = wmx + distance * math.cos(angle)
			wmy = wmy + distance * math.sin(angle)
		end
	end
	return wmx, wmy
end

function ShmupPlayer:isFiring()
	return not self.killed and not self.exiting and self.firebutton
end

function ShmupPlayer:isFocused()
	return not self.killed and not self.exiting and self.focusbutton
end

function ShmupPlayer:isKilled()
	return self.killed
end

function ShmupPlayer:setFiring(button)
	self.firebutton = button
end

function ShmupPlayer:setFocused(button)
	self.focusbutton = button
end

function ShmupPlayer:getDistanceSq(fromx, fromy)
	local cx, cy = self.object.body:getWorldCenter()
	dx = cx - fromx
	dy = cy - fromy
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

function ShmupPlayer:joystickchanged(button, pressed)
	if button == ShmupPlayer.Button_Fire and self.firebutton ~= pressed then
		self.firebutton = pressed
		self.firetimer = 0
	elseif button == ShmupPlayer.Button_Focus and self.focusbutton ~= pressed then
		local focusspeedfactor = .5
		if not pressed then
			focusspeedfactor = 1/focusspeedfactor
		end

		self.focusbutton = pressed
		self.inputvx = self.inputvx * focusspeedfactor
		self.inputvy = self.inputvy * focusspeedfactor
	elseif button == ShmupPlayer.Button_Bomb and pressed
	and not self.killed and not levity.mappaused then
		local params = ShmupPlayer.BombParams

		if levity.machine:call("hud", "hasBombs") then
			params.x, params.y = self.object.body:getWorldCenter()
			params.y = params.y - 128
			ShmupBullet.create(params, self.object.layer)
			levity.bank:play(Sounds.Bomb)
			levity.bank:play(Sounds.Bomber)
			levity.machine:broadcast("playerBombed")
		end
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
	if not levity.mappaused then
		self.inputvx = self.inputvx + (dx / levity.camera.scale)
		self.inputvy = self.inputvy + (dy / levity.camera.scale)
		self.didmousemove = true
	end
end

function ShmupPlayer:beginContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()
	if category == ShmupCollision.Category_NPCTeam then
		local captiveid = otherfixture:getBody():getUserData().id
		if not levity.machine:call(captiveid, "isFemale")
		and levity.machine:call(captiveid, "canBeCaptured") then
			local captivegid = levity.machine:call(captiveid, "getKOGid")
			local i = (self.numcaptives % ShmupPlayer.CaptivesReleasedOnKill) + 1
			self.captivegids[i] = captivegid
			self.numcaptives = self.numcaptives + 1
		end
	elseif category == ShmupCollision.Category_NPCShot then
		if not self.killed and self.shieldtimer == 0 then
			self.coroutine = coroutine.create(
				ShmupPlayer.deathCoroutine)
		end
	end
end

function ShmupPlayer:deathCoroutine(dt)
	self.deathtimer = 0
	self.killed = true
	self.object.visible = false

	-- capturing not allowed while player killed
	local fixtures = self.object.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	bodyfixture:setMask(unpack(NonPlayMask))

	levity.machine:broadcast("playerKilled")

	self:playSound(Sounds.Death)
	self:playSound(Sounds.Scream)

	local cx, cy = self.object.body:getWorldCenter()
	ShmupNPC.releaseCaptives(self.captivegids, cx, cy, self.object.layer)

	for i = #self.captivegids, 1, -1 do
		self.captivegids[i] = nil
	end
	self.numcaptives = 0

	local t = 0
	while t < ShmupPlayer.DeathTime do
		local cameraid = levity.map.properties.cameraid
		local camera = levity.map.objects[cameraid]
		local camvx, camvy = camera.body:getLinearVelocity()
		self.object.body:setLinearVelocity(camvx, camvy)

		t = t + dt
		self, dt = coroutine.yield()
	end

	if levity.machine:call("hud", "hasLives") then
		self.coroutine = coroutine.create(ShmupPlayer.spawnCoroutine)
	else
		levity.machine:broadcast("playerDefeated")
		while true do
			coroutine.yield()
		end
	end
end

local function getSpawnPosition()
	local cameraid = levity.map.properties.cameraid
	local camera = levity.map.objects[cameraid]
	local camcx, camcy = camera.body:getWorldCenter()
	return camcx, camcy + camera.height * (3 / 8)
end

function ShmupPlayer:getRecenterVelocity(dt)
	local cx, cy = self.object.body:getWorldCenter()
	local spawnx, spawny = getSpawnPosition()
	local dx, dy = spawnx - cx, spawny - cy

	local snaptocamv = 8
		--self.deathtimer * ShmupPlayer.DeathSnapToCameraVelocity / dt

	local cameraid = levity.map.properties.cameraid
	local camera = levity.map.objects[cameraid]
	local camvx, camvy = camera.body:getLinearVelocity()

	if dx*dx + dy*dy < ShmupPlayer.SpeedSq*dt*dt then
		return dx/dt + camvx, dy/dt + camvy
	end

	return dx * snaptocamv + camvx, dy * snaptocamv + camvy
end

function ShmupPlayer:spawnCoroutine(dt)
	local recentered

	repeat
		local vx1, vy1 = self:getRecenterVelocity(dt)
		self.object.body:setLinearVelocity(vx1, vy1)

		local _, dt = coroutine.yield()

		local cx, cy = self.object.body:getWorldCenter()
		local spawnx, spawny = getSpawnPosition()
		local dx, dy = spawnx - cx, spawny - cy

		recentered = dx*dx + dy*dy < ShmupPlayer.SpeedSq*dt*dt
	until recentered

	local fixtures = self.object.body:getUserData().fixtures
	local bodyfixture = fixtures["body"]
	if bodyfixture then
		bodyfixture:setMask(unpack(PlayMask))
	end

	self.shieldtimer = ShmupPlayer.RespawnShieldTime

	if self.killed then
		self.killed = false
		levity.machine:broadcast("playerRespawned")
		self:playSound(Sounds.Respawn)
		self.object.visible = true
	end
end

function ShmupPlayer:exitCoroutine(dt)
	self.exiting = true

	for _, fixture in pairs(self.object.body:getFixtureList()) do
		fixture:setFilterData(0, 0, 0)
	end

	local t = 0
	while t < ShmupPlayer.ExitWaitTime do
		local vx, vy = self:getRecenterVelocity(dt)
		self.object.body:setLinearVelocity(vx, vy)

		t = t + dt
		self, dt = coroutine.yield()
	end

	self:playSound(Sounds.Exit)
	self.object.body:setLinearVelocity(0, -ShmupPlayer.ExitSpeed)

	while true do
		coroutine.yield()
	end
end

function ShmupPlayer:beginMove(dt)
	if self.coroutine then
		local ok, err = coroutine.resume(self.coroutine, self, dt)
		if not ok then print(err) end
		if coroutine.status(self.coroutine) ~= "dead" then
			return
		end
		self.coroutine = nil
	end

	local body = self.object.body
	local cx, cy = body:getWorldCenter()
	local vx1, vy1 = self.inputvx, self.inputvy

	self.shieldtimer = math.max(0, self.shieldtimer - dt)

	local cameraid = levity.map.properties.cameraid
	local camera = nil
	if cameraid then
		camera = levity.map.objects[cameraid]
	end

	if self.didmousemove then
		vx1 = vx1 / dt
		vy1 = vy1 / dt
		self.inputvx = 0
		self.inputvy = 0
		self.didmousemove = false
	end

	if camera then
		local camvx, camvy = camera.body:getLinearVelocity()
		vy1 = vy1 + camvy
	end

	body:setLinearVelocity(vx1, vy1)

	if self:isFiring() then
		if self.firetimer <= 0 then
			local params = ShmupPlayer.BulletParams
			params.x = cx - 8
			params.y = cy - 8
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

	if not self.hitbox then
		self.hitbox = {
			gid = levity:getTileGid("playerhitbox", 0, 0)
		}
		self.hitbox.x, self.hitbox.y = self.object.body:getWorldCenter()

		self.object.layer:addObject(self.hitbox)
	end
	self.hitbox.visible = self:isFocused()
	if self.hitbox.body then
		local x, y = self.object.body:getWorldCenter()
		self.hitbox.body:setPosition(x, y + 1/64)
	end
end

function ShmupPlayer:beginDraw()
	if self.shieldtimer > 0 then
		local alpha = (0x100 * (math.cos(self.shieldtimer*30*math.pi) + 1)*.5)
		love.graphics.setColor(0xff, 0xff, 0xff, alpha)
	end

	local scoreid = levity.machine:call("hud", "getScoreId")
	if scoreid then
		self.properties.text = levity.machine:call(scoreid,
					"getMultiplier", self.object.id)
	else
		self.properties.text = nil
	end
	self.properties.textfont = "pressstart2p.fnt"
end

function ShmupPlayer:endDraw()
	if self.shieldtimer > 0 then
		love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
	end
end

function ShmupPlayer:playerVictorious()
	self.coroutine = coroutine.create(ShmupPlayer.exitCoroutine)
end

function ShmupPlayer:nextMap(nextmapfile, nextmapdata)
	local wingmengids = {}
	for _, id in ipairs(self.wingmenids) do
		wingmengids[#wingmengids + 1] = levity.map.objects[id].gid
	end

	nextmapdata.player = {
		wingmennames = levity:tileGidsToNames(wingmengids),
		captivenames = levity:tileGidsToNames(self.captivegids),
		numcaptives = self.numcaptives
	}
end

return ShmupPlayer
