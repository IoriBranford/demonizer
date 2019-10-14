local levity = require "levity"

local Facing = class(require("Script"))
function Facing:_init(object)
	self.object = object
	self.angle = math.pi*.5
end

function Facing:getFaceAngle()
	return self.angle
end

local faceAngle_tile = {
	direction = nil,
	state = nil
}

function Facing:faceAngle(angle, state)
	local tileset = self.object.tile and
		levity.map.tilesets[self.object.tile.tileset]
	local tsproperties = tileset and tileset.properties
	local numdirections = tsproperties and tsproperties.numdirections
	if not numdirections then
		self.angle = angle
		return
	end

	local directionangle0 = math.rad(tsproperties.directionangle0 or 0)
	local directionarc = 2*math.pi/numdirections
	local i = math.floor((angle-directionangle0)/directionarc + .5) % numdirections
	local tilestride = tsproperties.directiontilestride or 1
	faceAngle_tile.direction = i*tilestride

	local currentstate = levity.map:getTileLineName(self.object.gid, "state")
	state = state or currentstate
	faceAngle_tile.state = state

	local gid = levity.map:getTileGid(self.object.tile.tileset, faceAngle_tile)
	if gid ~= self.object.gid then
		self.object:setGid(gid, state == currentstate and "keeptimer" or true,
			nil, false)
	end

	self.angle = directionangle0 + i*directionarc
end

return Facing
