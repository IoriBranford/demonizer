local levity = require "levity"

local Curtain
Curtain = class(function(self, layer)
	self.layer = layer
	self:beginOpen()
end)

Curtain.Speed = 1024
Curtain.CloseTimeout = 2

local function beginMove(self, dt)
	self.openwidth = self.openwidth + self.direction*Curtain.Speed*dt

	local map = levity.map.overlaymap or levity.map
	if self.openwidth >= map.camera.w
	or self.openwidth < -Curtain.CloseTimeout*Curtain.Speed then
		map.scripts:scriptRemoveEventFunc(self, self.layer.name,
							"beginMove")
		map.scripts:scriptRemoveEventFunc(self, self.layer.name,
							"beginDraw")
	end
end

local function beginDraw(self)
	love.graphics.setColor(0, 0, 0, 0xff)
	local map = levity.map.overlaymap or levity.map
	local camera = map.camera
	local width = (camera.w - self.openwidth)*.5
	love.graphics.rectangle("fill", camera.x, camera.y, width, camera.h)
	love.graphics.rectangle("fill", camera.x + (camera.w + self.openwidth)*.5,
		camera.y, width, camera.h)
	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

function Curtain:beginOpen()
	local map = levity.map.overlaymap or levity.map
	self.openwidth = 0
	self.direction = 1
	map.scripts:scriptAddEventFunc(self, self.layer.name, "beginMove",
							beginMove)
	map.scripts:scriptAddEventFunc(self, self.layer.name, "beginDraw",
							beginDraw)
end

function Curtain:beginClose()
	local map = levity.map.overlaymap or levity.map
	self.openwidth = map.camera.w
	self.direction = -1
	map.scripts:scriptAddEventFunc(self, self.layer.name, "beginMove",
							beginMove)
	map.scripts:scriptAddEventFunc(self, self.layer.name, "beginDraw",
							beginDraw)
end

return Curtain
