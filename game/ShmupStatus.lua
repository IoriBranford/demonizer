local levity = require "levity"

local ShmupStatus = class(function(self, id)
	self.layer = levity.map.layers[id]
	self.properties = self.layer.properties

	self.elements = {}
	for _, object in pairs(self.layer.objects) do
		self.elements[object.name] = object
	end

	self.numlives = 2
	self.numbombpieces = 0

	self:updateLives()
	self:updateBombs()
end)

ShmupStatus.MaxLives = 9
ShmupStatus.MaxBombs = 4
ShmupStatus.PiecesPerBomb = 50
ShmupStatus.MaxBombPieces = ShmupStatus.MaxBombs * ShmupStatus.PiecesPerBomb
--ShmupStatus.BombsPer100CaptivesPerSec = 1/32
--ShmupStatus.BombsPerCaptivePerSec = 1/3200
ShmupStatus.PiecesPerCaptivePerSec = 1/64

function ShmupStatus:getScoreId()
	return self.properties.scoreid
end

function ShmupStatus:npcCaptured()
	self.numbombpieces = math.min(self.numbombpieces + 1, ShmupStatus.MaxBombPieces)
	self:updateBombs()
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
		bomb.visible = numbombpieces >= ShmupStatus.PiecesPerBomb
		--bomb.opacity = math.min(1, numbombpieces/ShmupStatus.PiecesPerBomb)
		numbombpieces = numbombpieces - ShmupStatus.PiecesPerBomb
	end
end

function ShmupStatus:beginMove(dt)
	local totalmultiplier = levity.machine:call(self.elements.score.id,
							"getTotalMultiplier")
	self.numbombpieces = math.min(ShmupStatus.MaxBombPieces,
		self.numbombpieces
		+ totalmultiplier*ShmupStatus.PiecesPerCaptivePerSec*dt)
	self:updateBombs()
end

function ShmupStatus:beginDraw()
	self.layer.offsetx = levity.camera.x
	self.layer.offsety = levity.camera.y
end

return ShmupStatus
