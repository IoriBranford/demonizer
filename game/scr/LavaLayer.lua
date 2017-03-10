local levity = require "levity"

local Tileset = "lavapit"
local NumRows = 2
local FirstGid

local LavaLayer = class(function(self, layer)
	FirstGid = levity.map:getTileGid(Tileset, "lava", 0)
	self.layer = layer
	assert(self.layer.type == "tilelayer")
	self.active = false
	self.timer = 0

	-- let y = a + b*sin(t)/t
	self.a = self.layer.offsety * .5
	self.b = self.layer.offsety * .5
end)

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
		self.timer = self.timer + dt*math.pi
		self.layer.y = self.a + self.b*math.sin(self.timer)/self.timer
		timescale = 1.5
	end

	local gid = FirstGid
	for r = 1, NumRows do
		levity.map:updateTileAnimations(gid, tileset.tilecolumns,
							dt*timescale)
		gid = gid + tileset.tilecolumns
	end
end

return LavaLayer
