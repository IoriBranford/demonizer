local levity = require "levity"
local math_floor = math.floor

local DamageTileLayer = class()
function DamageTileLayer:_init(layer)
	assert(layer.type == "tilelayer")
	self.layer = layer
	self.properties = layer.properties
	self:setDamageActive(false)
end

function DamageTileLayer:isDamageActive()
	return self.layer.visible
end

function DamageTileLayer:setDamageActive(active)
	self.layer.visible = active
	if not active then
		self.timer = 0
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
	if not self.layer.visible then
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

return DamageTileLayer
