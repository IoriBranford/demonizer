local levity = require "levity"

local Facing = class()
function Facing:_init(object)
	self.object = object
	self.angle = math.pi*.5
end

function Facing:getFaceAngle()
	return self.angle
end

local faceAngle_tile = {
	direction = nil
}

function Facing:faceAngle(angle)
	local tsproperties = levity.map.tilesets[self.object.tile.tileset].properties
	local numdirections = tsproperties.numdirections
	if not numdirections then
		self.angle = angle
		return
	end

	local directionarc = 2*math.pi/numdirections
	local i = math.floor(angle/directionarc + .5) % numdirections
	faceAngle_tile.direction = i

	local gid = levity.map:getTileGid(self.object.tile.tileset, faceAngle_tile)
	if gid ~= self.object.gid then
		self.object:setGid(gid, levity.map)
	end

	self.angle = i*directionarc
end

return Facing
