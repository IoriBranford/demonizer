local levity = require "levity"
local Curtain = class(function(self, layer)
	self.layer = layer
	self.vy = -1024
	self.falling = false
end)

function Curtain:beginMove(dt)
	local map = levity.map.overlaymap or levity.map
	self.layer.offsety = self.layer.offsety + self.vy*dt
	if self.falling then
		if self.layer.offsety <= 0 then
			self.vy = 0
			self.layer.offsety = 0
		end
	else
		if self.layer.offsety < -map.camera.h then
			self.vy = 0
		end
	end
end

function Curtain:beginFall()
	local map = levity.map.overlaymap or levity.map
	self.falling = true
	self.vy = -512
	self.layer.offsety = map.camera.h
	self.layer.visible = true
end

function Curtain:beginDraw()
	love.graphics.setColor(0, 0, 0, 0xff)
	local map = levity.map.overlaymap or levity.map
	local camera = map.camera
	love.graphics.rectangle("fill",
		self.layer.offsetx + camera.x,
		self.layer.offsety + camera.y,
		camera.w, camera.h)
	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

return Curtain
