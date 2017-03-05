local levity = require "levity"
local Curtain = class(function(self, layer)
	self.layer = layer
	self.vy = -1024
	self.falling = false
end)

function Curtain:beginMove(dt)
	self.layer.offsety = self.layer.offsety + self.vy*dt
	if self.falling then
		if self.layer.offsety <= 0 then
			self.vy = 0
			self.layer.offsety = 0
		end
	else
		if self.layer.offsety < -self.layer.map.camera.h then
			self.vy = 0
		end
	end
end

function Curtain:beginFall()
	self.falling = true
	self.vy = -512
	self.layer.offsety = self.layer.map.camera.h
end

function Curtain:beginDraw()
	love.graphics.setColor(0, 0, 0, 0xff)
	love.graphics.rectangle("fill",
		self.layer.offsetx + self.layer.map.camera.x,
		self.layer.offsety + self.layer.map.camera.y,
		self.layer.map.camera.w, self.layer.map.camera.h)
	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

return Curtain
