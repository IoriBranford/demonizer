local levity = require "levity"
local ShmupWingman = require "ShmupWingman"
local ShmupNPC = require "ShmupNPC"
local PlayerPower = require "PlayerPower"

--- Manager of player and wingmen
-- - Formation positions
-- - Active wingmen and reserve wingmen
-- - Captured humans to release on team member's death
local PlayerTeam
PlayerTeam = class(function(self, layer)
	self.layer = layer
	self.playerid = levity.map.properties.playerid
	self.wingmanids = {}
	self.powergaugeids = {
		[PlayerTeam.PlayerIndex] =
			PlayerPower.create(self.playerid, self.layer)
	}

	local player = levity.map.objects[self.playerid]

	self.wingmanpositions = {}
	self.focuswingmanpositions = {}
	local tile = levity.map.tiles[player.gid]
	local tileobjects = tile.objectGroup.objects
	local tileheight = levity.map:getTileset(tile.tileset).tileheight
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

	local nextmapdata = levity.nextmapdata or {}
	local nextmapplayerteam = nextmapdata.playerteam or {}
	local nextmapwingmen = nextmapplayerteam.wingmen or {}
	local cx, cy = player.body:getWorldCenter()
	for i, wingman in ipairs(nextmapwingmen) do
		ShmupWingman.create(levity.map, nil, cx, cy, nil, nil, wingman)
	end

	local nextmapcaptivenames = nextmapplayerteam.captivenames
	self.captivegids = levity.map:tileNamesToGids(nextmapcaptivenames) or {}
end)

PlayerTeam.PlayerIndex = "player"
PlayerTeam.MaxWingmen = 4
PlayerTeam.WingmanFleeDistance = 400

function PlayerTeam:roomForWingmen()
	return #self.wingmanids < PlayerTeam.MaxWingmen
end

local function isActiveWingmanIndex(i)
	return 0 < i and i <= PlayerTeam.MaxWingmen
end

function PlayerTeam:wingmanJoined(wingmanid)
	local i = #self.wingmanids + 1
	self.wingmanids[i] = wingmanid
	if isActiveWingmanIndex(i) then
		self.powergaugeids[i] = PlayerPower.create(wingmanid, self.layer)
	end
end

function PlayerTeam:isWingmanActive(wingmanid)
	local i = self:getMemberIndex(wingmanid)
	if i then
		return isActiveWingmanIndex(i)
	end
end

function PlayerTeam:getWingmanId(i)
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

function PlayerTeam:getWingmanPosition(wingmanid)
	local i = self:getMemberIndex(wingmanid)
	if not i then
		return
	end

	if not isActiveWingmanIndex(i) then
		local wingman = levity.map.objects[wingmanid]
		local x, y = wingman.body:getWorldCenter()
		return x, y + 0x1000
	end

	local player = levity.map.objects[self.playerid]
	local wmx, wmy = player.body:getWorldCenter()
	local offset

	if levity.map.scripts:call(self.playerid, "isFocused") then
		offset = self.focuswingmanpositions[i]
	else
		offset = self.wingmanpositions[i]
	end

	if offset then
		wmx = wmx + offset[1]
		wmy = wmy + offset[2]

		if levity.map.scripts:call(self.playerid, "isKilled") then
			local angle = math.pi * .5
			angle = angle + math.atan2(-offset[1], -offset[2]) * .25

			local distance = PlayerTeam.WingmanFleeDistance
			wmx = wmx + distance * math.cos(angle)
			wmy = wmy + distance * math.sin(angle)
		end
	end
	return wmx, wmy
end

function PlayerTeam:endMove(dt)
	local focused = levity.map.scripts:call(self.playerid, "isFocused")
	for _, id in pairs(self.powergaugeids) do
		local gauge = levity.map.objects[id]
		if gauge then
			gauge.visible = focused
		end
	end
end

function PlayerTeam:wingmanReserved(wingmanid)
	self:forgetWingman()
end

function PlayerTeam:releaseCaptives(memberid)
	local body = levity.map.objects[memberid].body
	local cx, cy = body:getWorldCenter()
	local maxcaptives = ShmupNPC.MaxReleasedCaptives
	local uimap = levity.map.overlaymap
	local scoreid = uimap.scripts:call("status", "getScoreId")
	if scoreid then
		maxcaptives =
			uimap.scripts:call(scoreid, "getMultiplier", memberid)
			or maxcaptives
	end
	ShmupNPC.releaseCaptives(self.captivegids, maxcaptives, cx, cy, self.layer)
end

function PlayerTeam:playerKilled()
	self:releaseCaptives(self.playerid)
end

function PlayerTeam:wingmanKilled(wingmanid)
	self:releaseCaptives(wingmanid)
	self:forgetWingman()
end

function PlayerTeam:forgetWingman(wingmanid)
	local i = self:getMemberIndex(wingmanid)
	if i then
		table.remove(self.wingmanids, i)
		if isActiveWingmanIndex(i) then
			levity.map:discardObject(self.powergaugeids[i])
			table.remove(self.powergaugeids, i)
		end

		if i <= PlayerTeam.MaxWingmen
		and #self.wingmanids >= PlayerTeam.MaxWingmen then
			i = PlayerTeam.MaxWingmen
			local id = self.wingmanids[i]
			levity.map.scripts:call(id, "setCaptureEnabled", true)
			self.powergaugeids[i] = PlayerPower.create(id, self.layer)
		end
	end
end

function PlayerTeam:playerRespawned()
	self:refreshCaptureEnabled()
end

function PlayerTeam:refreshCaptureEnabled()
	for i = 1, #self.wingmanids do
		local id = self.wingmanids[i]
		local converting = levity.map.scripts:call(id, "isConverting")
		levity.map.scripts:send(id, "setCaptureEnabled",
				not converting and isActiveWingmanIndex(i))
	end
end

function PlayerTeam:npcCaptured(npcid)
	if not levity.map.scripts:call(npcid, "isFemale") then
		local gid = levity.map.scripts:call(npcid, "getKOGid")
		self.captivegids[#self.captivegids+1] = gid
	end
end

function PlayerTeam:nextMap(nextmapfile, nextmapdata)
	local wingmen = {}
	for i, id in ipairs(self.wingmanids) do
		wingmen[i] = levity.map.scripts:call(id, "getNextMapData")
	end

	if nextmapdata then
		nextmapdata.playerteam = {
			wingmen = wingmen,
			captivenames = levity.map:tileGidsToNames(self.captivegids),
		}
	end
end

return PlayerTeam
