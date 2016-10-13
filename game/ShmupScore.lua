local levity = require "levity"
local ShmupPlayer = levity.machine:requireScript("ShmupPlayer")
local Spark = levity.machine:requireScript("Spark")

local ShmupScore = class(function(self, id)
	self.object = levity.map.objects[id]
	self.properties = self.object.properties

	local nextmapdata = levity.nextmapdata
	self.points = nextmapdata.points or 0
	self.extendpoints = nextmapdata.extendpoints or 2000000
	self.multipliers = nextmapdata.multipliers or {
		[levity.map.properties.playerid] = 0
	}

	self.totalmultiplier = nextmapdata.totalmultiplier or 0
end)

ShmupScore.MaxPoints = 999999999
ShmupScore.MaxMultiplier = 20
ShmupScore.ExtendInc = 3000000
ShmupScore.BaseCapturePoints = 100

local Sounds = {
	Maxed = "maxed.wav",
	Powerup = "powerup.wav",
	Extend = "extend.wav"
}
levity.bank:load(Sounds)

function ShmupScore:pointsScored(points)
	self.points = math.min(self.points + points, ShmupScore.MaxPoints)
	if self.points >= self.extendpoints then
		levity.machine:broadcast("extendEarned")
		self.extendpoints = self.extendpoints + ShmupScore.ExtendInc
		levity.bank:play(Sounds.Extend)
	end
end

function ShmupScore:getNextCapturePoints()
	return ShmupScore.BaseCapturePoints * self.totalmultiplier
end

function ShmupScore:wingmanJoined(newwingmanid)
	self.multipliers[newwingmanid] = 0
end

function ShmupScore:npcCaptured(npcid, captorid)
	self:multiplierInc(captorid)

	local points = self:getNextCapturePoints()
	local npc = levity.map.objects[npcid]
	local pointsobject = {
		x = npc.body:getX()-32,
		y = npc.body:getY()-8,
		width = 64,
		height = 16,
		properties = {
			vely = -60,
			script = "Spark",
			text = tostring(points),
			textfont = "pressstart2p.fnt"
		}
	}
	local sparks = levity.map.layers["sparks"]
	if sparks then
		sparks:addObject(pointsobject)
	end

	self:pointsScored(points)
end

function ShmupScore:npcDied(npcid)
	for id, mult in pairs(self.multipliers) do
		self.multipliers[id] = 0
	end
	self.totalmultiplier = 0
end

function ShmupScore:multiplierInc(id)
	if self.multipliers[id] < ShmupScore.MaxMultiplier then
		self.multipliers[id] = self.multipliers[id] + 1
		self.totalmultiplier = self.totalmultiplier + 1
		if self:isMaxMultiplier(id) then
			levity.bank:play(Sounds.Maxed)
			levity.bank:play(Sounds.Powerup)
		end
	else
		for oid, mult in pairs(self.multipliers) do
			if mult < ShmupScore.MaxMultiplier then
				self:multiplierInc(oid)
				break
			end
		end
	end
end

function ShmupScore:multiplierLost(id)
	local lostmult = self.multipliers[id]
	self.totalmultiplier = self.totalmultiplier - lostmult
	self.multipliers[id] = nil
end

function ShmupScore:playerKilled()
	self:multiplierLost(levity.map.properties.playerid)
end

function ShmupScore:playerRespawned()
	self.multipliers[levity.map.properties.playerid] = 0
end

function ShmupScore:wingmanReserved(id, gid)
	self:multiplierLost(id)
end

function ShmupScore:wingmanKilled(id)
	self:multiplierLost(id)
end

function ShmupScore:friendKilled(id)
	for id, mult in pairs(self.multipliers) do
		self.multipliers[id] = 0
	end
	self.totalmultiplier = 0
end

function ShmupScore:getMultiplier(id)
	return self.multipliers[id]
end

function ShmupScore:getTotalMultiplier()
	return self.totalmultiplier
end

function ShmupScore:isMaxMultiplier(id)
	return self.multipliers[id] == ShmupScore.MaxMultiplier
end

function ShmupScore:beginDraw()
	self.properties.text = string.format(self.properties.textformat,
					self.points, self.extendpoints)
end

return ShmupScore
