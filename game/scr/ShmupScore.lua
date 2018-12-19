local levity = require "levity"
local PlayerTeam = require("PlayerTeam")

local ShmupScore = class()
function ShmupScore:_init(object)
	self.object = object
	self.properties = self.object.properties

	local nextmapdata = levity.nextmapdata or {}
	local nextmapscore = nextmapdata.score or {}
	self.points = nextmapscore.points or 0
	self.extendpoints = nextmapscore.extendpoints
		or levity.map.properties.extendpoints
		or 1000000
	self.multipliers = nextmapscore.multipliers or {
		[PlayerTeam.PlayerIndex] = 0
	}

	self.totalmultiplier = nextmapscore.totalmultiplier or 0
end

ShmupScore.MaxPoints = 999999999
ShmupScore.MaxMultiplier = 20
ShmupScore.ExtendInc = 1000000
ShmupScore.BaseCapturePoints = 100

function ShmupScore:givePlayerBonus(bonus, sound)
	local player = levity.map.objects[levity.map.properties.playerid]
	self:pointsScored(bonus, player.x, player.y, "BONUS\n%d")
	levity.bank:play(sound)
end

function ShmupScore:pointsScored(points, cardx, cardy, cardformat)
	self.points = math.min(self.points + points, ShmupScore.MaxPoints)
	if self.extendpoints and self.points >= self.extendpoints then
		levity.scripts:broadcast("extendEarned")
		local extendinc = levity.map.properties.extendinc
					or ShmupScore.ExtendInc
		self.extendpoints = self.extendpoints + extendinc
		levity.bank:play(self.properties.extendsound)
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

		local pointsobject = {
			x = cardx-32,
			y = cardy-8,
			text = text,
			halign = "center",
			width = 64,
			height = 16,
			fontfamily = "Press Start 2P",
			pixelsize = 8,
			properties = {
				lifetime = 1,
				vely = camvy - 30,
				script = "ShmupBullet",
			}
		}
		sparks:addObject(pointsobject)
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
	local i = levity.scripts:call("playerteam", "getMemberIndex", captorid)
	i = self:multiplierInc(i)
	if i then
		captorid = levity.scripts:call("playerteam", "getMemberId", i)
		levity.scripts:broadcast("multiplierUpdated", captorid,
					self.multipliers[i])
	end

	local human = levity.map.objects[humanid]
	local points = human.properties.capturepoints or self:getNextCapturePoints()
	if points > 0 then
		self:pointsScored(points, human.body:getX(), human.body:getY())
	end
end

function ShmupScore:humanDied(humanid)
	for idx, mult in pairs(self.multipliers) do
		self.multipliers[idx] = 0
	end
	self.totalmultiplier = 0
	levity.scripts:broadcast("multiplierUpdated", "all", 0)
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
	self:multiplierLost(PlayerTeam.PlayerIndex)
	levity.scripts:broadcast("multiplierUpdated",
				levity.map.properties.playerid, 0)
end
--[[
function ShmupScore:wingmanKilled(id)
	self:multiplierLost(
		levity.scripts:call("playerteam", "getMemberIndex", id))
end
]]
function ShmupScore:friendKilled(id)
	for idx, mult in pairs(self.multipliers) do
		self.multipliers[idx] = 0
	end
	self.totalmultiplier = 0
end

function ShmupScore:getMultiplier(id)
	return self.multipliers[
		levity.scripts:call("playerteam", "getMemberIndex", id)]
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
	and not levity.scripts:call(levity.map.name, "isTutorial") then
		nextmapdata.score = {
			points = self.points,
			extendpoints = self.extendpoints,
			multipliers = self.multipliers,
			totalmultiplier = self.totalmultiplier
		}
	end
end

return ShmupScore
