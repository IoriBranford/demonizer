local levity = require "levity"

local ShmupResults = class()

ShmupResults.PerReserveBonus = 2500
ShmupResults.PerBombBonus = 200
ShmupResults.PerSecondBonus = 1000

function ShmupResults:_init(layer)
	self.id = layer.name
	self.layer = layer
	self.properties = layer.properties

	layer.visible = false

	self.elements = {}
	for _, object in pairs(self.layer.objects) do
		self.elements[object.name] = object
		object.visible = false
	end
	self.coroutine = levity.scripts:newScript(self.id, "Coroutine", self.layer)
end

function ShmupResults:startWinBonus()
	self.layer.visible = true
	self.coroutine:startCoroutine(self.tallyCoroutine, self)
end

function ShmupResults:tallyBonus(bonustype, bonuspoints, amount, tallytime)
	local scoreid = levity.scripts:call("status", "getScoreId")

	assert(bonuspoints, "No bonus for "..bonustype)
	local bonuspointstext = self.elements[bonustype.."points"]
	bonuspointstext.visible = true
	bonuspointstext.text =
		string.format(bonuspointstext.properties.textformat,
			bonuspoints)

	local bonustotaltext = self.elements[bonustype.."total"]
	bonustotaltext.visible = true

	local bonustotal = -bonuspoints
	for i = 0, amount do
		bonustotal = bonustotal + bonuspoints
		bonustotal = math.min(bonustotal, amount * bonuspoints)
		bonustotaltext.text = string.format(
			bonustotaltext.properties.textformat,
			bonustotal)
		self.coroutine:waitTime(tallytime)
	end

	if bonustotal > 0 then
		levity.scripts:send(scoreid, "pointsScored", bonustotal)
	end
	self.coroutine:waitTime(1)
end

function ShmupResults:tallyCoroutine()
	local reserves = levity.scripts:call("status", "getNumReserves")
	if reserves > 0 then
		self:tallyBonus("reserve", ShmupResults.PerReserveBonus,
				reserves, levity.movedt*6)
	end

	local timeleft = math.ceil(levity.scripts:call("status", "getTimeLeft") or 0)
	if timeleft > 0 then
		self:tallyBonus("time", ShmupResults.PerSecondBonus, timeleft,
				levity.movedt)
	end

	local numshots = levity.scripts:call(levity.map.properties.playerid,
		"getNumShots") or 1
	numshots = numshots - 1
	if numshots > 0 then
		self:tallyBonus("bomb", 1000, numshots, levity.movedt)
	end

	--self:tallyBonus("bomb", ShmupResults.PerBombBonus,
	--		levity.scripts:call("status", "getNumBombPieces"),
	--		levity.movedt)

	local lives = levity.scripts:call("status", "getNumLives") or 0
	local livesbonus = levity.map.properties.winlivesbonus or 0
	if livesbonus > 0 and lives > 0 then
		levity.scripts:broadcast("cancelExtends")
		local livesright = levity.scripts:call("status", "getLivesRightEdge")
		self.elements["livespoints"].body:setX(livesright)
		self.elements["livestotal"].body:setX(livesright)
		self:tallyBonus("lives", livesbonus, lives, levity.movedt*6)
	end
end

function ShmupResults:beginDraw()
	self.layer.offsetx = levity.camera.x
	self.layer.offsety = levity.camera.y
end

return ShmupResults
