local levity = require "levity"
local Object = require "levity.object"
local ShmupWingman -- delayed require to avoid circular dependency
local ShmupMap = require "ShmupMap"

local ShmupStatus = class(require("Script"))

ShmupStatus.MaxLives = 9
ShmupStatus.DefaultStartBombs = 1
ShmupStatus.DefaultMaxBombs = 3
ShmupStatus.PiecesPerBomb = 50
--ShmupStatus.BombsPer100CaptivesPerSec = 1/32
--ShmupStatus.BombsPerCaptivePerSec = 1/3200
ShmupStatus.PiecesPerCaptivePerSec = 1/64
ShmupStatus.MaxReserves = 15
ShmupStatus.TimerWarningSecs = 30
ShmupStatus.CountdownSecs = 3
local PowerLevels = { 10, 30, 60, 100 }

function ShmupStatus:_init(layer)
	self.layer = layer
	self.properties = self.layer.properties

	local istutorial = ShmupMap.isTutorial()

	self.objects = self.layer.objects
	for _, object in pairs(self.layer.objects) do
		self.objects[object.name] = object
	end

	local nextmapdata = levity.nextmapdata or {}
	local nextmapstatus = nextmapdata.status or {}
	self.numlives = nextmapstatus.numlives or 2

	local maxbombs = levity.map.properties.maxbombs or ShmupStatus.DefaultMaxBombs
	levity.map.properties.maxbombs = maxbombs

	local startbombs = levity.map.properties.startbombs or ShmupStatus.DefaultStartBombs
	local startbombpieces = nextmapstatus.numbombpieces or startbombs*ShmupStatus.PiecesPerBomb
	self.numbombpieces = math.min(startbombpieces, maxbombs*ShmupStatus.PiecesPerBomb)
	self.power = nextmapstatus.power or levity.map.properties.startpower or 0

	self.reservegids = levity.map:tileNamesToGids(nextmapstatus.reservenames) or {}
	nextmapdata.status = nil

	self:updateLives()
	self:updateBombs()
	self:updateReserves()

	if istutorial then
		for _, object in pairs(self.objects) do
			object.visible = false
		end
	end

	ShmupWingman = ShmupWingman or require("ShmupWingman")

	self.pausebombcharge = istutorial

	self.timeleft = levity.map.properties.timelimit
	if self.timeleft then
		self.timeleft = self.timeleft + ShmupStatus.CountdownSecs + 1
		self.objects.timer.visible = true
		self.objects.countdown.visible = true

		local caravanrules = self.objects.caravanrules
		if caravanrules then
			caravanrules.visible = true
			caravanrules.text = string.format(
				caravanrules.properties.textformat,
				levity.map.properties.timelimit,
				maxbombs > 0 and "MAX "..maxbombs or "NO ")
		end

		self:updateTimeLeft(0)
	else
		self.objects.timer.visible = false
		self.objects.countdown.visible = false
		local caravanrules = self.objects.caravanrules
		if caravanrules then
			caravanrules.visible = false
		end
	end

	self.objects.activetriggers.text = ""
	self.activetriggertimes = {}
end

function ShmupStatus:getScoreId()
	return self.objects.score.id
end

function ShmupStatus:addBombPieces(addpieces)
	local maxbombs = levity.map.properties.maxbombs
	local newpieces = math.min(self.numbombpieces + addpieces,
					maxbombs*ShmupStatus.PiecesPerBomb)

	if math.floor(self.numbombpieces / ShmupStatus.PiecesPerBomb)
	< math.floor(newpieces / ShmupStatus.PiecesPerBomb) then
		levity.bank:play(self.properties.maxmultipliersound)
		levity.bank:play(self.properties.newbombsound)
	end

	self.numbombpieces = newpieces
end

function ShmupStatus:humanCaptured()
	self:addPower(1)
	self:addBombPieces(1)
	self:updateBombs()
end

function ShmupStatus:wingmanReserved(wingmanid, wingmangid)
	self.reservegids[#self.reservegids + 1] = wingmangid
end

function ShmupStatus:hasReserves()
	return #self.reservegids > 0
end

function ShmupStatus:getNumReserves()
	return #self.reservegids
end

function ShmupStatus:getNumLives()
	return self.numlives
end

function ShmupStatus:getTimeLeft()
	return self.timeleft
end

function ShmupStatus:extendEarned()
	levity.bank:play(self.properties.extendsound)
	self.numlives = self.numlives + 1
	self:updateLives()
end

function ShmupStatus:playerRespawned()
	if not self:call(levity.map.name, "isTutorial") then
		self:resetPower()
		self.numlives = self.numlives - 1
		self:updateLives()
		self:addBombPieces(ShmupStatus.PiecesPerBomb/2)
	end
end

function ShmupStatus:hasBombs()
	return self.numbombpieces >= ShmupStatus.PiecesPerBomb
end

function ShmupStatus:getNumBombPieces()
	return self.numbombpieces
end

function ShmupStatus:playerBombed()
	local istutorial = ShmupMap.isTutorial()
	if not istutorial then
		self.numbombpieces = math.max(0, self.numbombpieces - self:getNextBombCost())
		self:updateBombs()
	end
end

function ShmupStatus:getNextBombCost()
	return math.min(self.numbombpieces, ShmupStatus.PiecesPerBomb)
end

function ShmupStatus:scaleByBombCost(n)
	return n * self:getNextBombCost() / ShmupStatus.PiecesPerBomb
end

function ShmupStatus:updateLives()
	for i = 1, ShmupStatus.MaxLives do
		local life = self.objects["life"..i]
		if life then
			life.visible = (i <= self.numlives)
		end
	end
end

function ShmupStatus:getLivesRightEdge()
	if self.numlives > 0 then
		local life = self.objects["life"..self.numlives]
		if life then
			return life.x + life.width
		end
	end
end

function ShmupStatus:getBackupCaptureHeight()
	local score = self.objects.score
	local totalmultiplier = score and self:call(score.id, "getTotalMultiplier") or 0
	return 30 + (totalmultiplier/2)
end

function ShmupStatus:updateBombs()
	local numbombpieces = self.numbombpieces
	local maxbombs = levity.map.properties.maxbombs or ShmupStatus.DefaultMaxBombs
	for i = 1, ShmupStatus.DefaultMaxBombs do
		local bomb = self.objects["bomb"..i]
		if not bomb then
			break
		end

		bomb.visible = i <= maxbombs --numbombpieces > 0

		if bomb.visible then
			local fill = math.min(1, numbombpieces / ShmupStatus.PiecesPerBomb)
			self:send(bomb.id, "setFill", fill)
		end

		numbombpieces = numbombpieces - ShmupStatus.PiecesPerBomb
	end
end

function ShmupStatus:updateReserves()
	local numreserves = #self.reservegids
	local hasreserves = numreserves > 0
	self.objects.reserves.visible = hasreserves
	self.objects.wingleft.visible = hasreserves
	self.objects.wingright.visible = hasreserves
	self.objects.reserves.text = tostring(numreserves)
end

local TimeFormat = "%02d:%02d"
function ShmupStatus:updateTimeLeft(dt)
	local timeleft = self.timeleft
	local secondchanged = math.floor(timeleft) ~= math.floor(timeleft + dt)

	if secondchanged then
		local timer = self.objects.timer
		local countdown = self.objects.countdown
		local timelimit = levity.map.properties.timelimit
		local countdowntimeleft = timeleft - timelimit

		if countdowntimeleft < 0 then
			countdown.visible = false
			local caravanrules = self.objects.caravanrules
			if caravanrules then
				caravanrules.visible = false
			end
		elseif countdowntimeleft < 1 then
			Object.setGid(countdown, levity.map:getTileGid("go", 0))
			levity.bank:play(self.properties.gosound)
		else
			local gid = levity.map:getTileGid("countdown",
				tostring(math.floor(math.min(countdowntimeleft, ShmupStatus.CountdownSecs))))
			Object.setGid(countdown, gid)
			levity.bank:play(self.properties.countdownsound)
		end

		timeleft = math.min(timeleft + 1, timelimit)
		local minutes = math.floor(timeleft / 60)
		local seconds = math.floor(timeleft % 60)
		timer.text = string.format(TimeFormat, minutes, seconds)
		if timeleft <= ShmupStatus.TimerWarningSecs then
			timer.color[2] = 0
			timer.color[3] = 0
		else
			timer.color[2] = 1
			timer.color[3] = 1
		end
	end
end

function ShmupStatus:addPower(power)
	local powergauge = self.objects.powergauge
	local level = self:getPowerLevel()
	power = self.power + power
	local maxpower = PowerLevels[#PowerLevels]
	self.power = math.min(power, maxpower)
	self:send(powergauge.id, "setFill", self.power/maxpower)

	local newlevel = self:getPowerLevel()
	if self.power < maxpower then
		powergauge.properties.color = powergauge.properties["colorlevel"..newlevel]
	end
	local powerlevel = self.objects.powerlevel
	if powerlevel then
		if self.power >= maxpower then
			powerlevel.text = "MAX"
		else
			powerlevel.text = "Lv"..newlevel
		end
	end
	if level < newlevel then
		levity.bank:play(self.properties.powerupsound)
	end
end

function ShmupStatus:resetPower()
	self:addPower(-self.power)
end

function ShmupStatus:getPowerLevel()
	for i = #PowerLevels, 1, -1 do
		if self.power >= PowerLevels[i] then
			return i
		end
	end
	return 0
end

function ShmupStatus:getNumPlayerShots()
	return self:getPowerLevel() >= 1 and 2 or 1
end

function ShmupStatus:canWingmenGrab()
	return self:getPowerLevel() >= 2
end

function ShmupStatus:canWingmenAttack()
	return self:getPowerLevel() >= 4
end

function ShmupStatus:isPlayerPullingAllItems()
	return self:getPowerLevel() >= 3
end

function ShmupStatus:setPrompt(promptname, visible)
	local prompt = self.objects[promptname]
	if prompt then
		prompt.visible = visible
	end
end

function ShmupStatus:beginMove(dt)
	if levity.map.paused then
		return
	end

	self:addPower(0)
	local maxpower = PowerLevels[#PowerLevels]
	if self.power >= maxpower then
		local powergauge = self.objects.powergauge
		local i = (math.floor(love.timer.getTime()*60) % 5) + 1
		powergauge.properties.color = powergauge.properties["colorlevel"..i]
	end

	local totalmultiplier = self:call(self.objects.score.id,
							"getTotalMultiplier")

	if not self.pausebombcharge then
		self:addBombPieces(totalmultiplier*ShmupStatus.PiecesPerCaptivePerSec*dt)
		self:updateBombs()
	end

	local playerid = levity.map.properties.playerid

	if self:hasReserves()
	and self:call("playerteam", "roomForWingmen") then
		local wingmangid = self.reservegids[#self.reservegids]

		local x, y = self:call("playerteam", "getBackupWingmanPosition")
		local wingmanid = ShmupWingman.create(levity.map, wingmangid,
							x, y, nil, nil)

		self.reservegids[#self.reservegids] = nil
	end

	if self.timeleft and not self.pausetimer then
		self.timeleft = self.timeleft - dt
		if self.timeleft <= 0 then
			self.numlives = 0
			self:send(playerid, "kill")
			self.timeleft = nil
			self.objects.timer.visible = false
		else
			self:updateTimeLeft(dt)
		end
	end

	self:updateActiveTriggers(dt)
	self:updateReserves()
end

function ShmupStatus:triggerActivated(triggerid)
	if self:call(triggerid, "hasActivatedIds") then
		self.activetriggertimes[triggerid] = 0
	end
end

function ShmupStatus:triggerCleared(triggerid)
	self.activetriggertimes[triggerid] = nil
end

local ActiveTriggerFormat = "%s %0.1fs"
function ShmupStatus:updateActiveTriggers(dt)
	local text = ""
	for id, time in pairs(self.activetriggertimes) do
		time = time + dt
		self.activetriggertimes[id] = time
		local trigger = levity.map.objects[id]
		if trigger then
			text = text..ActiveTriggerFormat:format(trigger.layer.name, time)..'\n'
		else
			self.activetriggertimes[id] = nil
		end
	end
	self.objects.activetriggers.text = text
end

function ShmupStatus:beginDraw()
	self.layer.offsetx = levity.camera.x
	self.layer.offsety = levity.camera.y
end

function ShmupStatus:dialogueStarted()
	self.pausebombcharge = true
end

function ShmupStatus:dialogueFinished()
	self.pausebombcharge = false
end

function ShmupStatus:playerWon()
	self.pausetimer = true
end
ShmupStatus.beginPlayerWin = ShmupStatus.playerWon
ShmupStatus.playerLost = ShmupStatus.playerWon

function ShmupStatus:nextMap(nextmapfile, nextmapdata)
	if nextmapdata and nextmapdata.playerwon
	and not self:call(levity.map.name, "isTutorial") then
		nextmapdata.status = {
			power = self.power,
			numlives = self.numlives,
			numbombpieces = self.numbombpieces,
			reservenames = levity.map:tileGidsToNames(self.reservegids)
		}
	end
end

return ShmupStatus
