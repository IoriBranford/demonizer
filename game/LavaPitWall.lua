local levity = require "levity"

local LavaPitWall = class(function(self, id)
	self.layer = levity.map.layers[id]
	assert(self.layer.type == "tilelayer")
	self.active = false
	self.timer = 0

	-- let y = a + b*sin(t)/t
	self.a = self.layer.offsety * .25
	self.b = self.layer.offsety * .75
end)

local Tileset = "lavapit"
local NumRows = 3
local FirstGid = levity:getTileGid(Tileset, "pitwall", 0)

-- TEST
function LavaPitWall:keypressed_space()
	self:ascentStarted()
end

function LavaPitWall:ascentStarted()
	self.active = true
end

function LavaPitWall:beginMove(dt)
	if self.active then
		self.timer = self.timer + dt*math.pi
		self.layer.y = self.a + self.b*math.sin(self.timer)/self.timer

		local tileset = levity.map.tilesets[Tileset]

		local gid = FirstGid
		for r = 1, NumRows do
			levity:updateTileAnimations(gid, tileset.tilecolumns,
								dt)
			gid = gid + tileset.tilecolumns
		end
	end
end

return LavaPitWall
