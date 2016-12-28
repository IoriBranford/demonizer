local levity = require "levity"
local ShmupWingman -- delayed require to avoid circular dependency

local MaxBombs = 3

local ShmupStatus = class(function(self, id)
	self.layer = levity.map.layers[id]
	self.properties = self.layer.properties

	self.elements = {}
	for _, object in pairs(self.layer.objects) do
		self.elements[object.name] = object
		for _, fixture in pairs(object.body:getFixtureList()) do
			fixture:setFilterData(0,0,0)
		end
	end

	local nextmapstatus = levity.nextmapdata.status or {}
	self.numlives = nextmapstatus.numlives or 2
	self.numbombpieces = nextmapstatus.numbombpieces or 0
	self.reservegids = levity:tileNamesToGids(nextmapstatus.reservenames) or {}

	self:updateLives()
	self:updateBombs()

	ShmupWingman = ShmupWingman or levity.machine:requireScript("ShmupWingman")
end)

ShmupStatus.MaxLives = 9
ShmupStatus.MaxBombs = MaxBombs
ShmupStatus.PiecesPerBomb = 50
ShmupStatus.MaxBombPieces = ShmupStatus.MaxBombs * ShmupStatus.PiecesPerBomb
--ShmupStatus.BombsPer100CaptivesPerSec = 1/32
--ShmupStatus.BombsPerCaptivePerSec = 1/3200
ShmupStatus.PiecesPerCaptivePerSec = 1/64
ShmupStatus.MaxReserves = 15

local Sounds = {
	Maxed = "maxed.wav",
	BombUp = "thankyou.wav"
}
levity.bank:load(Sounds)

function ShmupStatus:getScoreId()
	return self.properties.scoreid
end

function ShmupStatus:addBombPieces(addpieces)
	local newpieces = math.min(self.numbombpieces + addpieces,
					ShmupStatus.MaxBombPieces)

	if math.floor(self.numbombpieces / ShmupStatus.PiecesPerBomb)
	< math.floor(newpieces / ShmupStatus.PiecesPerBomb) then
		levity.bank:play(Sounds.Maxed)
		levity.bank:play(Sounds.BombUp)
	end

	self.numbombpieces = newpieces
end

function ShmupStatus:npcCaptured()
	self:addBombPieces(1)
	self:updateBombs()
end

function ShmupStatus:wingmanReserved(wingmanid, wingmangid)
	self.reservegids[#self.reservegids + 1] = wingmangid
	self:updateReserves()
end

function ShmupStatus:hasReserves()
	return #self.reservegids > 0
end

function ShmupStatus:hasLives()
	return self.numlives > 0
end

function ShmupStatus:extendEarned()
	self.numlives = self.numlives + 1
	self:updateLives()
end

function ShmupStatus:playerRespawned()
	self.numlives = self.numlives - 1
	self:updateLives()
end

function ShmupStatus:hasBombs()
	return self.numbombpieces >= ShmupStatus.PiecesPerBomb
end

function ShmupStatus:playerBombed()
	self.numbombpieces = math.max(0, self.numbombpieces - self:getNextBombCost())
	self:updateBombs()
end

function ShmupStatus:getNextBombCost()
	return math.min(self.numbombpieces, ShmupStatus.PiecesPerBomb)
end

function ShmupStatus:scaleByBombCost(n)
	return n * self:getNextBombCost() / ShmupStatus.PiecesPerBomb
end

function ShmupStatus:updateLives()
	for i = 1, ShmupStatus.MaxLives do
		self.elements["life"..i].visible = (i <= self.numlives)
	end
end

function ShmupStatus:updateBombs()
	local numbombpieces = self.numbombpieces
	for i = 1, ShmupStatus.MaxBombs do
		local bomb = self.elements["bomb"..i]
		if not bomb then
			break
		end

		bomb.visible = numbombpieces > 0

		if bomb.visible then
			local fill = math.min(1, numbombpieces / ShmupStatus.PiecesPerBomb)
			levity.machine:call(bomb.id, "setFill", fill)
		end

		numbombpieces = numbombpieces - ShmupStatus.PiecesPerBomb
	end
end

function ShmupStatus:updateReserves()
	self.elements.reserves.properties.text = tostring(#self.reservegids)
end

function ShmupStatus:beginMove(dt)
	local totalmultiplier = levity.machine:call(self.elements.score.id,
							"getTotalMultiplier")

	self:addBombPieces(totalmultiplier*ShmupStatus.PiecesPerCaptivePerSec*dt)
	self:updateBombs()

	local playerid = levity.map.properties.playerid

	if self:hasReserves()
	and levity.machine:call(playerid, "roomForWingmen") then
		local wingmangid = self.reservegids[#self.reservegids]

		local camera = levity.map.objects[levity.map.properties.cameraid]
		local x, y = camera.body:getWorldCenter()
		for _, fixture in ipairs(camera.body:getFixtureList()) do
			local _, _, _, b = fixture:getBoundingBox()
			y = math.max(y, b)
		end

		local wingmanid = ShmupWingman.create(wingmangid, x, y, false)

		self.reservegids[#self.reservegids] = nil
		self:updateReserves()

		local scoreid = levity.machine:call("hud", "getScoreId")
		levity.machine:call(scoreid, "wingmanJoined", wingmanid)
	end
end

function ShmupStatus:beginDraw()
	self.layer.offsetx = levity.camera.x
	self.layer.offsety = levity.camera.y
end

function ShmupStatus:nextMap(nextmapfile, nextmapdata)
	nextmapdata.status = {
		numlives = self.numlives,
		numbombpieces = self.numbombpieces,
		reservenames = levity:tileGidsToNames(self.reservegids)
	}
end

return ShmupStatus
