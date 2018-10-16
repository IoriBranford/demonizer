local levity = require "levity"

local ElectricLayer = class()
function ElectricLayer:_init(layer)
	self.layer = layer
	self.properties = layer.properties
	assert(self.layer.type == "tilelayer")
	self:setActive(false)
end

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

	local buzzrate = self.properties.buzzrate or 6
	if math.floor(self.timer * buzzrate) < math.floor(newtimer * buzzrate) then
		levity.bank:play(self.properties.buzzsound)
		levity.scripts:broadcast("electrocuted")
	end

	self.timer = newtimer

	self.layer.opacity = .125*(1 + math.cos(4*math.pi*self.timer*buzzrate))
end

return ElectricLayer
