local levity = require "levity"
local Curtain = class(function(self, id)
	self.layer = levity.map.layers[id]
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
		if self.layer.offsety < -levity.camera.h then
			self.vy = 0
		end
	end
end

function Curtain:beginFall()
	self.falling = true
	self.vy = -512
	self.layer.offsety = levity.camera.h
end

function Curtain:beginDraw()
	love.graphics.setColor(0, 0, 0, 0xff)
	love.graphics.rectangle("fill",
		self.layer.offsetx + levity.camera.x,
		self.layer.offsety + levity.camera.y, 
		levity.camera.w, levity.camera.h)
	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

return Curtain
