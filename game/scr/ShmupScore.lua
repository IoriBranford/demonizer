local levity = require "levity"
local PlayerTeam = require("PlayerTeam")
local Spark = require("Spark")

local ShmupScore
ShmupScore = class(function(self, object)
	self.object = object
	self.properties = self.object.properties

	local nextmapdata = levity.nextmapdata or {}
	local nextmapscore = nextmapdata.score or {}
	self.points = nextmapscore.points or 0
	self.extendpoints = nextmapscore.extendpoints or 1000000
	self.multipliers = nextmapscore.multipliers or {
		[PlayerTeam.PlayerIndex] = 0
	}

	self.totalmultiplier = nextmapscore.totalmultiplier or 0
end)

ShmupScore.MaxPoints = 999999999
ShmupScore.MaxMultiplier = 20
ShmupScore.ExtendInc = 1000000
ShmupScore.BaseCapturePoints = 100

local Sounds = {
	Extend = "snd/extend.wav"
}
levity.bank:load(Sounds)

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

function ShmupScore:initMultiplier(memberi)
	if not self.multipliers[memberi] then
		self.multipliers[memberi] = 0
	end
end

function ShmupScore:npcCaptured(npcid, captorid)
	self:multiplierInc(
		levity.map.scripts:call("playerteam", "getMemberIndex", captorid))

	local npc = levity.map.objects[npcid]
	local points = npc.properties.capturepoints or self:getNextCapturePoints()
	if points > 0 then
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
end

function ShmupScore:npcDied(npcid)
	for idx, mult in pairs(self.multipliers) do
		self.multipliers[idx] = 0
	end
	self.totalmultiplier = 0
end

function ShmupScore:multiplierInc(idx)
	if self.multipliers[idx]
	and self.multipliers[idx] < ShmupScore.MaxMultiplier then
		self.multipliers[idx] = self.multipliers[idx] + 1
		self.totalmultiplier = self.totalmultiplier + 1
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
end

function ShmupScore:wingmanKilled(id)
	self:multiplierLost(
		levity.map.scripts:call("playerteam", "getMemberIndex", id))
end

function ShmupScore:friendKilled(id)
	for idx, mult in pairs(self.multipliers) do
		self.multipliers[idx] = 0
	end
	self.totalmultiplier = 0
end

function ShmupScore:getMultiplier(id)
	return self.multipliers[
		levity.map.scripts:call("playerteam", "getMemberIndex", id)]
end

function ShmupScore:getTotalMultiplier()
	return self.totalmultiplier
end

function ShmupScore:isMaxMultiplier(id)
	return self:getMultiplier(id) == ShmupScore.MaxMultiplier
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
