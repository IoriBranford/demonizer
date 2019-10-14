local levity = require "levity"
local ShmupCollision = require "ShmupCollision"

local FreeCam = class(require("Script"))
function FreeCam:_init(object)
	self.object = object
	self.object.visible = false
	self.vx = 0
	self.vy = 0
	self.object.body:setFixedRotation(true)
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
	end

	local cx, cy = self.object.body:getWorldCenter()
	levity.camera:set(cx, cy, self.object.width, self.object.height)
end

local keyforce = 60

function FreeCam:keypressed(key, u)
	if key == "up" then
		self.vy = self.vy - 1
	elseif key == "down" then
		self.vy = self.vy + 1
	elseif key == "left" then
		self.vx = self.vx - 1
	elseif key == "right" then
		self.vx = self.vx + 1
	end
end

function FreeCam:keyreleased(key, u)
	if key == "up" then
		self.vy = self.vy + 1
	elseif key == "down" then
		self.vy = self.vy - 1
	elseif key == "left" then
		self.vx = self.vx + 1
	elseif key == "right" then
		self.vx = self.vx - 1
	end
end

function FreeCam:beginMove(dt)
	local body = self.object.body

	local vx1, vy1 = keyforce * self.vx, keyforce * self.vy
	body:setLinearVelocity(vx1, vy1)
end

function FreeCam:endMove(dt)
	local cx, cy = self.object.body:getWorldCenter()
	levity.camera:set(cx, cy)
end

return FreeCam
