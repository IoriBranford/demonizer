local levity = require "levity"
local ShmupPlayer = require "ShmupPlayer"
local ShmupWingman = require "ShmupWingman"
local Item = require "Item"
local Targeting = require "Targeting"

--- Manager of player and wingmen
-- - Formation positions
-- - Active wingmen and reserve wingmen
-- - Captured humans to release on team member's death
local PlayerTeam = class(require("Script"))
function PlayerTeam:_init(layer)
	self.layer = layer
	self.playerid = levity.map.properties.playerid
	self.wingmanids = {}

	local player = levity.map.objects[self.playerid]

	self.wingmanpositions = {}
	self.focuswingmanpositions = {}
	local gid = player.gid
	for i = 1, PlayerTeam.MaxActiveWingmen do
		self.wingmanpositions[i] = {
			levity.map:getTileShapePosition(gid, "wingman"..i)
		}
		self.focuswingmanpositions[i] = {
			levity.map:getTileShapePosition(gid, "focuswingman"..i)
		}
	end

	local nextmapdata = levity.nextmapdata or {}
	local nextmapplayerteam = nextmapdata.playerteam or {}
	local nextmapwingmen = nextmapplayerteam.wingmen or {}
	for i, wingman in ipairs(nextmapwingmen) do
		ShmupWingman.create(levity.map, nil, player.x, player.y, nil, nil, wingman)
	end

	local nextmapcaptivenames = nextmapplayerteam.captivenames
	self.captivegids = levity.map:tileNamesToGids(nextmapcaptivenames) or {}
	self.targetlock = levity.scripts:newScript(layer.name, "TargetLock", layer)
end

function PlayerTeam:initQuery()
	local mult
	local scoreid = self:call("status", "getScoreId")
	if scoreid then
		mult = self:call(scoreid, "getMultiplier", self.playerid)
	end
end

PlayerTeam.PlayerIndex = "player"
PlayerTeam.MaxActiveWingmen = 4
PlayerTeam.MaxBackupWingmen = 4
PlayerTeam.MaxWingmen = PlayerTeam.MaxActiveWingmen + PlayerTeam.MaxBackupWingmen
PlayerTeam.WingmanFleeDistance = 360
PlayerTeam.PlayerMultiplierPerReleasedCaptive = 2
PlayerTeam.WingmanMultiplierPerReleasedCaptive = 4

function PlayerTeam:roomForWingmen()
	return #self.wingmanids < self.MaxWingmen
end

function PlayerTeam:countNonActiveWingmen()
	return math.max(0, #self.wingmanids - self.MaxActiveWingmen)
end

function PlayerTeam:countBackupWingmen()
	return math.min(self:countNonActiveWingmen(), self.MaxBackupWingmen)
end

local function isActiveWingmanIndex(i)
	return 0 < i and i <= PlayerTeam.MaxActiveWingmen
end

local function isBackupWingmanIndex(i)
	i = i - PlayerTeam.MaxActiveWingmen
	return 0 < i and i <= self.MaxBackupWingmen
end

function PlayerTeam:makeWingmanActive(i)
	if isActiveWingmanIndex(i) then
		local initmult
		local scoreid = self:call("status", "getScoreId")
		if scoreid then
			initmult = self:call(scoreid, "initMultiplier", i)
		end
		local wingmanid = self.wingmanids[i]
	end
end

function PlayerTeam:wingmanJoined(wingmanid)
	local i = #self.wingmanids + 1
	self.wingmanids[i] = wingmanid
	self:makeWingmanActive(i)
end

function PlayerTeam:isWingmanActive(wingmanid)
	local i = self:getMemberIndex(wingmanid)
	return i and  0 < i and i <= self.MaxActiveWingmen
end

function PlayerTeam:isWingmanActiveOrBackup(wingmanid)
	local i = self:getMemberIndex(wingmanid)
	return i and 0 < i and i <= self.MaxWingmen
end

function PlayerTeam:isWingmanBackup(wingmanid)
	local i = self:getMemberIndex(wingmanid)
	return i and self.MaxActiveWingmen < i and i <= self.MaxWingmen
end

function PlayerTeam:getMemberId(i)
	if i == PlayerTeam.PlayerIndex then
		return levity.map.properties.playerid
	end
	return self.wingmanids[i]
end

function PlayerTeam:getRandomWingmanId()
	local i = love.math.random(math.min(#self.wingmanids, self.MaxActiveWingmen))
	return self.wingmanids[i]
end

function PlayerTeam:getMemberIndex(id)
	if id == self.playerid then
		return PlayerTeam.PlayerIndex
	end
	for i = 1, #self.wingmanids do
		if self.wingmanids[i] == id then
			return i
		end
	end
end

function PlayerTeam:getBackupWingmanPosition(backupi)
	local playerexiting, playerentranceid = self:call(self.playerid, "isExiting")
	if playerexiting then
		local targetid = playerentranceid or self.playerid
		local target = levity.map.objects[targetid]
		return target.body:getPosition()
	end

	local camera = levity.camera
	local x = camera.x + camera.w*.5
	local y = camera.y + camera.h + 8
	if self:call(self.playerid, "isKilled") then
		y = y + 56
	end

	local numgaps = self:countBackupWingmen() - 1
	local gap = backupi and backupi-1 or numgaps/2
	local gapwidth = 40
	local rowwidth = gapwidth*numgaps
	x = x - rowwidth/2 + gapwidth*gap

	return x, y
end

function PlayerTeam:getWingmanPosition(wingmanid, leaderid)
	local i = self:getMemberIndex(wingmanid)
	if not i then
		return
	end

	if not isActiveWingmanIndex(i) then
		if i > self.MaxWingmen then
			i = nil
		else
			i = i - self.MaxActiveWingmen
		end
		return self:getBackupWingmanPosition(i)
	end

	leaderid = leaderid or self.playerid
	local target = levity.map.objects[leaderid]
		or levity.map.objects[self.playerid]
	local wmx, wmy = target.body:getWorldCenter()
	local offset

	if self:call(self.playerid, "isFocused") then
		offset = self.focuswingmanpositions[i]
	else
		offset = self.wingmanpositions[i]
	end

	if offset then
		local ox, oy = offset[1], offset[2]
		if leaderid ~= self.playerid then
			local player = levity.map.objects[self.playerid]
			local px, py = player.body:getWorldCenter()
			local angle = math.atan2(wmx - px, -wmy + py)
			local sina = math.sin(angle)
			local cosa = math.cos(angle)
			ox, oy = ox*cosa - oy*sina, ox*sina + oy*cosa
		end
		wmx = wmx + ox
		wmy = wmy + oy

		if self:call(self.playerid, "isKilled") then
			local angle = math.pi * .5
			angle = angle + math.atan2(-offset[1], -offset[2]) * .25

			local distance = PlayerTeam.WingmanFleeDistance
			wmx = wmx + distance * math.cos(angle)
			wmy = wmy + distance * math.sin(angle)
		end
	end
	return wmx, wmy
end

function PlayerTeam:beginMove(dt)
	local tid1, tid2 = self:call(self.playerid, "updateFocusTargets")
	if tid1 or tid2 then
		for i, id in pairs(self.wingmanids) do
			local offset = self.focuswingmanpositions[i]
			local tid
			if offset and offset[1] > 0 then
				tid = tid2 or tid1
			else
				tid = tid1 or tid2
			end

			if tid ~= self:call(id, "getLockTargetId") then
				self:send(id, "setLockTargetId", tid)
				break
			end
		end
	end
end

function PlayerTeam:wingmanReserved(wingmanid)
	self:forgetWingman(wingmanid)
end

function PlayerTeam:releaseCaptives(memberid, multperreleasedcaptive)
	local body = levity.map.objects[memberid].body
	local cx, cy = body:getWorldCenter()
	local numcaptives
	local scoreid = self:call("status", "getScoreId")
	local mult = scoreid and self:call(scoreid, "getMultiplier", memberid)
	if mult and multperreleasedcaptive then
		numcaptives = math.ceil(mult / multperreleasedcaptive)
	end
	Item.releaseCaptives(self.captivegids, numcaptives, cx, cy, self.layer)
end

function PlayerTeam:playerKilled()
	local istutorial = self:call(levity.mapfile, "isTutorial")
	if not istutorial then
		self:releaseCaptives(self.playerid, self.PlayerMultiplierPerReleasedCaptive)
	end
	for i = 4, 1, -1 do
		self:send(self.wingmanids[i], "kill")
	end
end

function PlayerTeam:wingmanKilled(wingmanid)
	self:releaseCaptives(wingmanid, self.WingmanMultiplierPerReleasedCaptive)
	self:forgetWingman(wingmanid)
end

function PlayerTeam:forgetWingman(wingmanid)
	local i = self:getMemberIndex(wingmanid)
	if i then
		local scoreid = self:call("status", "getScoreId")
		if scoreid then
			self:send(scoreid, "multiplierLost", i)
		end

		table.remove(self.wingmanids, i)
		if isActiveWingmanIndex(i) then
			if #self.wingmanids >= PlayerTeam.MaxActiveWingmen then
				self:makeWingmanActive(PlayerTeam.MaxActiveWingmen)
			end
		end
	end
end

function PlayerTeam:playerRespawned()
	self:refreshCaptureEnabled()
end

function PlayerTeam:refreshCaptureEnabled()
	for i = 1, #self.wingmanids do
		local id = self.wingmanids[i]
		local converting = self:call(id, "isConverting")
		self:send(id, "setCaptureEnabled", not converting)
	end
end

function PlayerTeam:humanCaptured(humanid)
	local human = levity.map.objects[humanid]
	self.captivegids[#self.captivegids+1] = human.gid
end

function PlayerTeam:nextMap(nextmapfile, nextmapdata)
	if nextmapdata and nextmapdata.playerwon then
		local wingmen = {}
		for i, id in ipairs(self.wingmanids) do
			wingmen[i] = self:call(id, "getNextMapData")
		end

		local istutorial = self:call(levity.map.name, "isTutorial")
		nextmapdata.playerteam = {
			wingmen = wingmen,
			captivenames = istutorial and nil or
				levity.map:tileGidsToNames(self.captivegids)
		}
	end
end

function PlayerTeam:isWingmanGoingToCapture(id)
	if not id then
		return
	end
	for i = 1, #self.wingmanids do
		if id == self:call(self.wingmanids[i], "getTargetCaptiveId") then
			return true
		end
	end
end

--[[
function PlayerTeam:keypressed(key)
	key = tonumber(key)
	if key and key >= 1 and key <= 9 then
		self:send(self.wingmanids[key], "kill")
	end
end
]]

return PlayerTeam
