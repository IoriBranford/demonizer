local levity = require "levity"
local CollisionRules = require "CollisionRules"
require "class"

local FreeCam = class(function(self, id)
	self.object = levity.map.objects[id]
	self.vx = 0
	self.vy = 0
	self.vz = 0
	self.object.body:setFixedRotation(true)

	local cx, cy = self.object.body:getWorldCenter()
	levity.camera:set(cx, cy, self.object.width, self.object.height)

	self:refreshFixture()
end)

local keyforce = 60

function FreeCam:refreshFixture()
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:destroy()
	end

	local fixture = love.physics.newFixture(self.object.body,
					 love.physics.newRectangleShape(
					 levity.camera.w/2, levity.camera.h/2,
					 levity.camera.w, levity.camera.h))
	fixture:setCategory(CollisionRules.Category_Camera)
	fixture:setMask(CollisionRules.Category_Objects)
end

function FreeCam:keypressed(key, u)
	if key == "up" then
		self.vy = self.vy - 1
	elseif key == "down" then
		self.vy = self.vy + 1
	elseif key == "left" then
		self.vx = self.vx - 1
	elseif key == "right" then
		self.vx = self.vx + 1
	elseif key == "=" then
		self.vz = self.vz - 1
	elseif key == "-" then
		self.vz = self.vz + 1
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
	elseif key == "=" then
		self.vz = self.vz + 1
	elseif key == "-" then
		self.vz = self.vz - 1
	end
end

function FreeCam:beginMove(dt)
	local body = self.object.body

	if self.vz ~= 0 then
		levity.camera:zoom(256 * dt * self.vz)
		self:refreshFixture()
	end

	local vx0, vy0 = body:getLinearVelocity()
	local vx1, vy1 = keyforce * self.vx, keyforce * self.vy
	local mass = body:getMass()
	body:applyLinearImpulse(mass * (vx1-vx0), mass * (vy1-vy0))
end

function FreeCam:endMove(dt)
	local cx, cy = self.object.body:getWorldCenter()
	levity.camera:set(cx, cy)
end

return FreeCam
