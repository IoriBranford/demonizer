local levity = require "levity"
local ShmupPlayer = levity.machine:requireScript("ShmupPlayer")
local Spark = levity.machine:requireScript("Spark")

local ShmupScore = class(function(self, id)
	self.object = levity.map.objects[id]
	self.properties = self.object.properties

	self.points = 0
	self.extendpoints = 2000000
	self.multipliers = {
		player = 1
	}
	for i = 1, ShmupPlayer.MaxAllies do
		self.multipliers[i] = 0
	end
	self.totalmultiplier = 1

	if self.properties.textfont then
		levity.fonts:load(self.properties.textfont)
	end
end)


ShmupScore.MaxPoints = 999999999
ShmupScore.MaxMultiplier = 20
ShmupScore.ExtendInc = 3000000
ShmupScore.BaseCapturePoints = 100

local Sounds = {
	Maxed = "maxed.wav",
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
	levity:addObject(pointsobject, npc.layer, "dynamic")

	self:pointsScored(points)

--[[	nice:
	for who, mult in pairs(self.multipliers) do
		if mult > 0 then
			self:multiplierInc(who)
		end
	end
]]
--[[	tough:
]]
	if newallyindex then
		self:multiplierInc(newallyindex)
	else
		if captorid == levity.map.properties.playerid then
			self:multiplierInc("player")
		else
			local allyindex = levity.machine:call(captorid,
								"getAllyIndex")
			if allyindex then
				self:multiplierInc(allyindex)
			end
		end
	end
end

function ShmupScore:npcDied(npcid)
	for who, mult in pairs(self.multipliers) do
		if mult > 1 then
--[[	nice:
			self.multipliers[who] = mult - 1
			self.totalmultiplier = self.totalmultiplier - 1
]]
--[[	tough:
]]
			self.totalmultiplier = self.totalmultiplier - mult + 1
			self.multipliers[who] = 1
		end
	end

end

function ShmupScore:multiplierInc(whose)
	if self.multipliers[whose] < ShmupScore.MaxMultiplier then
		self.multipliers[whose] = self.multipliers[whose] + 1
		self.totalmultiplier = self.totalmultiplier + 1
		if self:isMaxMultiplier(whose) then
			levity.bank:play(Sounds.Maxed)
		end
	else
		for who, mult in pairs(self.multipliers) do
			if mult > 0 and mult < ShmupScore.MaxMultiplier then
				self:multiplierInc(who)
				break
			end
		end
	end
end

function ShmupScore:multiplierLost(whose)
	local lostmult = self.multipliers[whose]
	self.totalmultiplier = self.totalmultiplier - lostmult
	self.multipliers[whose] = 0
	if type(whose) == "number" and whose < #self.multipliers then
		for i = whose, #self.multipliers - 1 do
			self.multipliers[i] = self.multipliers[i + 1]
		end
		self.multipliers[#self.multipliers] = 0
	end
end

function ShmupScore:playerKilled()
	self:multiplierLost("player")
end

function ShmupScore:playerRespawned()
	self:multiplierInc("player")
end

function ShmupScore:allyKilled(index)
	self:multiplierLost(index)
end

function ShmupScore:getMultiplier(whose)
	return self.multipliers[whose]
end

function ShmupScore:isMaxMultiplier(whose)
	return self.multipliers[whose] == ShmupScore.MaxMultiplier
end

function ShmupScore:beginDraw()
	self.properties.text = string.format(self.properties.textformat,
					self.points, self.extendpoints)
end

return ShmupScore
