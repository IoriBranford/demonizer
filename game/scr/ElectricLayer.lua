local levity = require "levity"

local ElectricLayer = class(function(self, layer)
	self.layer = layer
	assert(self.layer.type == "tilelayer")
	self:setActive(false)
end)

local ElectricTileset = "electricity"
local BuzzRate = 6
local Sounds = {
	Buzz = "snd/buzz.wav"
}
levity.bank:load(Sounds)

function ElectricLayer:isActive()
	return self.layer.visible
end

function ElectricLayer:setActive(active)
	self.layer.visible = active
	if not active then
		self.timer = 0
	end
end

function ElectricLayer:beginMove(dt)
	if not self.layer.visible then
		return
	end

	local newtimer = self.timer + dt

	if math.floor(self.timer * BuzzRate) < math.floor(newtimer * BuzzRate) then
		levity.bank:play(Sounds.Buzz)
		self.layer.map:broadcast("electrocuted")
	end

	self.timer = newtimer

	self.layer.opacity = .125*(1 + math.cos(4*math.pi*self.timer*BuzzRate))

	self.layer.map:updateTilesetAnimations(ElectricTileset, dt)
end

return ElectricLayer
