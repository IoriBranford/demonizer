local levity = require "levity"
local ShmupPlayer = levity.machine:requireScript("ShmupPlayer")
local Spark = levity.machine:requireScript("Spark")

local ShmupScore = class(function(self, id)
	self.object = levity.map.objects[id]
	self.properties = self.object.properties

	self.points = 0
	self.extendpoints = 2000000
	self.multipliers = {
		player = 0
	}

	self.totalmultiplier = 0
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

function ShmupScore:npcCaptured(npcid, captorid, newallyindex)
	if newallyindex then
		self.multipliers[newallyindex] = 0
		return
	end

	if captorid == levity.map.properties.playerid then
		self:multiplierInc("player")
	else
		local allyindex = levity.machine:call(captorid, "getAllyIndex")
		if allyindex then
			self:multiplierInc(allyindex)
		end
	end

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
	for who, mult in pairs(self.multipliers) do
		self.multipliers[who] = 0
	end
	self.totalmultiplier = 0

end

function ShmupScore:multiplierInc(whose)
	if self.multipliers[whose] < ShmupScore.MaxMultiplier then
		self.multipliers[whose] = self.multipliers[whose] + 1
		self.totalmultiplier = self.totalmultiplier + 1
		if self:isMaxMultiplier(whose) then
			levity.bank:play(Sounds.Maxed)
			levity.bank:play(Sounds.Powerup)
		end
	else
		for who, mult in pairs(self.multipliers) do
			if mult < ShmupScore.MaxMultiplier then
				self:multiplierInc(who)
				break
			end
		end
	end
end

function ShmupScore:multiplierLost(whose, replaced)
	local lostmult = self.multipliers[whose]
	self.totalmultiplier = self.totalmultiplier - lostmult
	if type(whose) == "number" then
		if replaced then
			self.multipliers[whose] = 0
		else
			for i = whose, #self.multipliers - 1 do
				self.multipliers[i] = self.multipliers[i + 1]
			end
			self.multipliers[#self.multipliers] = nil
		end
	else
		self.multipliers[whose] = nil
	end
end

function ShmupScore:playerKilled()
	self:multiplierLost("player")
end

function ShmupScore:playerRespawned()
	self.multipliers.player = 0
end

function ShmupScore:allyReserved(index, gid)
	self:multiplierLost(index, false)
end

function ShmupScore:allyKilled(index, replaced)
	self:multiplierLost(index, replaced)
end

function ShmupScore:getMultiplier(whose)
	return self.multipliers[whose]
end

function ShmupScore:getTotalMultiplier()
	return self.totalmultiplier
end

function ShmupScore:isMaxMultiplier(whose)
	return self.multipliers[whose] == ShmupScore.MaxMultiplier
end

function ShmupScore:beginDraw()
	self.properties.text = string.format(self.properties.textformat,
					self.points, self.extendpoints)
end

return ShmupScore
