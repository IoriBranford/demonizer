local levity = require "levity"
local PlayerTeam = require("PlayerTeam")

local ShmupScore = class(require("Script"))
function ShmupScore:_init(object)
	self.object = object
	self.properties = self.object.properties

	local nextmapdata = levity.nextmapdata or {}
	local nextmapscore = nextmapdata.score or {}
	self.points = nextmapscore.points or 0
	self.extendpoints = nextmapscore.extendpoints
		or levity.map.properties.extendpoints
		or 2000000
	self.multipliers = nextmapscore.multipliers or {
		[PlayerTeam.PlayerIndex] = 0
	}

	self.totalmultiplier = nextmapscore.totalmultiplier or 0
end

ShmupScore.MaxPoints = 999999999
ShmupScore.MaxMultiplier = 20
ShmupScore.ExtendInc = 3000000
ShmupScore.BaseCapturePoints = 100

function ShmupScore:givePlayerBonus(bonus, sound)
	local player = levity.map.objects[levity.map.properties.playerid]
	self:pointsScored(bonus, player.x, player.y, "BONUS\n%d")
	levity.bank:play(sound)
end

function ShmupScore:pointsScored(points, cardx, cardy, cardformat)
	self.points = math.min(self.points + points, ShmupScore.MaxPoints)
	if self.extendpoints and self.points >= self.extendpoints then
		self:broadcast("extendEarned")
		local extendinc = levity.map.properties.extendinc
					or ShmupScore.ExtendInc
		self.extendpoints = self.extendpoints + extendinc
		if self.extendpoints > ShmupScore.MaxPoints then
			self:cancelExtends()
		end
	end

	local sparks = levity.map.layers["sparks"]
	if cardx and cardy and sparks then
		local camera = levity.map.objects[levity.map.properties.cameraid]
		local camvx, camvy = camera.body:getLinearVelocity()
		local text = cardformat and cardformat:format(points)
			or tostring(points)

		local pointsobject = levity.map:newObject(sparks)
		pointsobject.x = math.floor(cardx)-32
		pointsobject.y = math.floor(cardy)-8
		pointsobject.text = text
		pointsobject.halign = "center"
		pointsobject.width = 64
		pointsobject.height = 16
		pointsobject.fontfamily = "Press Start 2P"
		pointsobject.pixelsize = 8
		pointsobject.properties.lifetime = 1
		pointsobject.properties.vely = camvy - 120
		pointsobject.properties.accely = 240
		pointsobject.properties.script = "ShmupBullet"
	end
end

function ShmupScore:getNextCapturePoints()
	return ShmupScore.BaseCapturePoints * self.totalmultiplier
end

function ShmupScore:initMultiplier(memberi)
	if not self.multipliers[memberi] then
		self.multipliers[memberi] = 0
	end
	return self.multipliers[memberi]
end

function ShmupScore:humanCaptured(humanid, captorid)
	local i = self:call("playerteam", "getMemberIndex", captorid)
	i = self:multiplierInc(i)
	if i then
		captorid = self:call("playerteam", "getMemberId", i)
		self:broadcast("multiplierUpdated", captorid,
					self.multipliers[i])
	end

	local human = levity.map.objects[humanid]
	local points = human.properties.capturepoints or self:getNextCapturePoints()
	if points > 0 then
		self:broadcast("pointsScored", points, human.body:getX(), human.body:getY())
	end
end

function ShmupScore:humanDied(humanid)
	for idx, mult in pairs(self.multipliers) do
		self.multipliers[idx] = 0
	end
	self.totalmultiplier = 0
	self:broadcast("multiplierUpdated", "all", 0)
end

-- @return Index of multiplier that was actually increased
function ShmupScore:multiplierInc(idx)
	if self.multipliers[idx]
	and self.multipliers[idx] < ShmupScore.MaxMultiplier then
		self.multipliers[idx] = self.multipliers[idx] + 1
		self.totalmultiplier = self.totalmultiplier + 1
		return idx
	else
		for oidx, mult in pairs(self.multipliers) do
			if mult < ShmupScore.MaxMultiplier then
				return self:multiplierInc(oidx)
			end
		end
	end
end

function ShmupScore:multiplierLost(idx)
	local lostmult = self.multipliers[idx]
	if not lostmult then
		return
	end
	self.totalmultiplier = self.totalmultiplier - lostmult
	if type(idx) == "number" then
		table.remove(self.multipliers, idx)
	elseif idx == PlayerTeam.PlayerIndex then
		self.multipliers[idx] = 0
	end
end

function ShmupScore:playerRespawned()
	local istutorial = self:call(levity.mapfile, "isTutorial")
	if istutorial then
		return
	end
	self:multiplierLost(PlayerTeam.PlayerIndex)
	self:broadcast("multiplierUpdated",
				levity.map.properties.playerid, 0)
end
--[[
function ShmupScore:wingmanKilled(id)
	self:multiplierLost(
		self:call("playerteam", "getMemberIndex", id))
end
]]
function ShmupScore:friendKilled(id)
	local object = levity.map.objects[id]
	if not object or not object.properties.defeatlosemultiplier then
		return
	end
	for idx, mult in pairs(self.multipliers) do
		self.multipliers[idx] = 0
	end
	self.totalmultiplier = 0
end

function ShmupScore:getMultiplier(id)
	return self.multipliers[
		self:call("playerteam", "getMemberIndex", id)]
end

function ShmupScore:getTotalMultiplier()
	return self.totalmultiplier
end

function ShmupScore:isMaxMultiplier(id)
	return self:getMultiplier(id) == ShmupScore.MaxMultiplier
end

function ShmupScore:cancelExtends()
	self.extendpoints = nil
end

function ShmupScore:beginDraw()
	self.object.text = string.format(self.properties.textformat,
					self.points, self.extendpoints or 0)
end

function ShmupScore:nextMap(nextmapfile, nextmapdata)
	if nextmapdata and nextmapdata.playerwon
	and not self:call(levity.map.name, "isTutorial") then
		nextmapdata.score = {
			points = self.points,
			extendpoints = self.extendpoints,
			multipliers = self.multipliers,
			totalmultiplier = self.totalmultiplier
		}
	end
end

return ShmupScore
