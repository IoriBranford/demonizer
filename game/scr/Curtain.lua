local levity = require "levity"

local Curtain = class(require("Script"))
function Curtain:_init(layer)
	self.layer = layer
	self:beginOpen()
end

Curtain.Speed = 1024
Curtain.CloseTimeout = 2

function Curtain:beginMove(dt)
	if self:finishedOpening() then
		self.direction = 0
		return
	end

	self.openwidth = self.openwidth + self.direction*Curtain.Speed*dt
end

function Curtain:drawOver()
	if self:finishedOpening() then
		return
	end

	love.graphics.setColor(0, 0, 0, 0xff)
	local camera = levity.camera
	local width = (camera.w - self.openwidth)*.5
	love.graphics.rectangle("fill", camera.x, camera.y, width, camera.h)
	love.graphics.rectangle("fill", camera.x + (camera.w + self.openwidth)*.5,
		camera.y, width, camera.h)
	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

function Curtain:isOpeningOrClosing()
	return self.direction ~= 0
end

function Curtain:isClosing()
	return self.direction == -1
end

function Curtain:finishedOpening()
	return self.openwidth > levity.camera.w
end

function Curtain:finishedClosing()
	local closetime = self.closetime or Curtain.CloseTimeout
	return self.openwidth < closetime*-Curtain.Speed
end

function Curtain:beginOpen()
	self.openwidth = 0
	self.direction = 1
end

function Curtain:beginClose(closetime)
	self.openwidth = levity.camera.w
	self.direction = -1
	self.closetime = closetime
end

return Curtain
