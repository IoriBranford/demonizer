local levity = require "levity"

local LavaLayer = class(function(self, id)
	self.layer = levity.map.layers[id]
	assert(self.layer.type == "tilelayer")
	self.active = false
	self.timer = 0
end)

local Tileset = "lavapit"
local NumRows = 2
local FirstGid = levity:getTileGid(Tileset, "lava", 0)

function LavaLayer:keypressed_space()
	self:ascentStarted()
end

function LavaLayer:ascentStarted()
	self.active = true
end

function LavaLayer:beginMove(dt)
	local tileset = levity.map.tilesets[Tileset]
	local timescale = 1
	if self.active then
		self.timer = self.timer + dt
		self.layer.y = self.layer.y + math.cos(self.timer)/self.timer
		timescale = 1.5
	end

	local gid = FirstGid
	for r = 1, NumRows do
		levity:updateTileAnimations(gid, tileset.tilecolumns,
							dt*timescale)
		gid = gid + tileset.tilecolumns
	end
end

return LavaLayer
