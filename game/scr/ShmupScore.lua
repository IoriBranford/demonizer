local levity = require "levity"
local ShmupPlayer = require("ShmupPlayer")
local Spark = require("Spark")

local ShmupScore
ShmupScore = class(function(self, object)
	self.object = object
	self.properties = self.object.properties

	local nextmapdata = levity.nextmapdata or {}
	local nextmapscore = nextmapdata.score or {}
	self.points = nextmapscore.points or 0
	self.extendpoints = nextmapscore.extendpoints or 2000000
	self.multipliers = nextmapscore.multipliers or {
		[self:idToIdx(levity.map.properties.playerid)] = 0
	}

	self.totalmultiplier = nextmapscore.totalmultiplier or 0
end)

ShmupScore.MaxPoints = 999999999
ShmupScore.MaxMultiplier = 20
ShmupScore.ExtendInc = 3000000
ShmupScore.BaseCapturePoints = 100

local Sounds = {
	Maxed = "snd/maxed.wav",
	Powerup = "snd/powerup.wav",
	Extend = "snd/extend.wav"
}
levity.bank:load(Sounds)

function ShmupScore:idToIdx(id)
	if id == levity.map.properties.playerid then
		return "player"
	end
	return levity.map.scripts:call(id, "getWingmanIndex")
end

function ShmupScore:pointsScored(points)
	self.points = math.min(self.points + points, ShmupScore.MaxPoints)
	if self.points >= self.extendpoints then
		levity.map:broadcast("extendEarned")
		self.extendpoints = self.extendpoints + ShmupScore.ExtendInc
		levity.bank:play(Sounds.Extend)
	end
end

function ShmupScore:getNextCapturePoints()
	return ShmupScore.BaseCapturePoints * self.totalmultiplier
end

function ShmupScore:wingmanJoined(newwingmanidx)
	if not self.multipliers[newwingmanidx]
	and ShmupPlayer.isActiveWingmanIndex(newwingmanidx) then
		self.multipliers[newwingmanidx] = 0
	end
end

function ShmupScore:npcCaptured(npcid, captorid)
	self:multiplierInc(self:idToIdx(captorid))

	local points = self:getNextCapturePoints()
	local npc = levity.map.objects[npcid]
	local camera = levity.map.objects[levity.map.properties.cameraid]
	local camvx, camvy = camera.body:getLinearVelocity()
	local pointsobject = {
		x = npc.body:getX()-32,
		y = npc.body:getY()-8,
		width = 64,
		height = 16,
		properties = {
			vely = camvy - 30,
			script = "Spark",
			text = tostring(points),
			textfont = "fnt/pressstart2p.fnt"
		}
	}
	local sparks = levity.map.layers["sparks"]
	if sparks then
		sparks:addObject(pointsobject)
	end

	self:pointsScored(points)
end

function ShmupScore:npcDied(npcid)
	for idx, mult in pairs(self.multipliers) do
		self.multipliers[idx] = 0
	end
	self.totalmultiplier = 0
end

function ShmupScore:multiplierInc(idx)
	if self.multipliers[idx] < ShmupScore.MaxMultiplier then
		self.multipliers[idx] = self.multipliers[idx] + 1
		self.totalmultiplier = self.totalmultiplier + 1
		if self.multipliers[idx] >= ShmupScore.MaxMultiplier then
			levity.bank:play(Sounds.Maxed)
			levity.bank:play(Sounds.Powerup)
		end
	else
		for oidx, mult in pairs(self.multipliers) do
			if mult < ShmupScore.MaxMultiplier then
				self:multiplierInc(oidx)
				break
			end
		end
	end
end

function ShmupScore:multiplierLost(idx)
	local lostmult = self.multipliers[idx]
	self.totalmultiplier = self.totalmultiplier - lostmult
	if type(idx) == "number" then
		local nummults = #self.multipliers
		for i = idx, nummults do
			self.multipliers[i] = self.multipliers[i+1]
		end
		self.multipliers[nummults] = nil
	end
end

function ShmupScore:playerKilled()
	self:multiplierLost("player")
end

function ShmupScore:playerRespawned()
	self.multipliers["player"] = 0
end

function ShmupScore:wingmanKilled(id)
	self:multiplierLost(self:idToIdx(id))
end

function ShmupScore:friendKilled(id)
	for idx, mult in pairs(self.multipliers) do
		self.multipliers[idx] = 0
	end
	self.totalmultiplier = 0
end

function ShmupScore:getMultiplier(id)
	return self.multipliers[self:idToIdx(id)]
end

function ShmupScore:getTotalMultiplier()
	return self.totalmultiplier
end

function ShmupScore:isMaxMultiplier(id)
	return self.multipliers[self:idToIdx(id)] == ShmupScore.MaxMultiplier
end

function ShmupScore:beginDraw()
	self.properties.text = string.format(self.properties.textformat,
					self.points, self.extendpoints)
end

function ShmupScore:nextMap(nextmapfile, nextmapdata)
	if nextmapdata then
		nextmapdata.score = {
			points = self.points,
			extendpoints = self.extendpoints,
			multipliers = self.multipliers,
			totalmultiplier = self.totalmultiplier
		}
	end
end

return ShmupScore
