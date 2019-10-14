local levity = require "levity"
local math_floor = math.floor

local DamageTileLayer = class(require("Script"))
function DamageTileLayer:_init(layer)
	assert(layer.type == "tilelayer")
	self.layer = layer
	self.data = layer.data
	self.properties = layer.properties
	self.users = {}
	self.layer.visible = false

	local rows = {}
	local numrows = 0
	for r, row in pairs(self.data) do
		if next(row) then
			rows[r] = row
			numrows = numrows + 1

			local numtiles = 0
			for _, tile in pairs(row) do
				numtiles = numtiles + 1
			end
			if numtiles > 0 then
				row.numtiles = numtiles
			end
		end
	end
	self.numrows = numrows
	self.rows = rows
end

function DamageTileLayer:isDamageActive()
	return self.layer.visible
end

function DamageTileLayer:setDamageActive(userid, active)
	if active then
		self.users[userid] = true
	else
		self.users[userid] = nil
	end
end

function DamageTileLayer:getPositionProperties(x, y)
	if not self.layer.visible then
		return
	end

	local tx, ty = levity.map:convertPixelToTile(x, y)
	tx = math_floor(tx)
	ty = math_floor(ty)
	local tile = self.layer.data[ty][tx]
	return tile and tile.properties
end

function DamageTileLayer:beginMove(dt)
	self.layer.visible = next(self.users) ~= nil
	if not self.layer.visible then
		self.timer = 0
		return
	end

	local newtimer = self.timer + dt

	local flickerrate = self.properties.flickerrate or 6
	if math.floor(self.timer * flickerrate) < math.floor(newtimer * flickerrate) then
		levity.bank:play(self.properties.activesound)
	end

	self.timer = newtimer

	self.layer.opacity = .125*(1 + math.cos(4*math.pi*self.timer*flickerrate))
end

function DamageTileLayer:getRandomTile()
	local rows = self.rows
	local c, r, row, tile
	local i, i2 = 1, love.math.random(self.numrows)
	while i <= i2 do
		r, row = next(rows, r)
		i = i + 1
	end
	i, i2 = 1, love.math.random(row.numtiles)
	while i <= i2 do
		c, tile = next(row, c)
		if type(c) == "number" then
			i = i + 1
		end
	end
	return c, r
end

return DamageTileLayer
