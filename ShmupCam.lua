local levity = require "levity"
local CollisionRules = require "CollisionRules"
require "class"

local ShmupCam = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.visible = false
	self.object.body:setFixedRotation(true)
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
	end

	local cx, cy = self.object.body:getWorldCenter()
	levity.camera:set(cx, cy, self.object.width, self.object.height)

	self.vx = 0
	self.vy = 0

	self.xmax = (levity.map.width * levity.map.tilewidth) - self.object.width
end)

function ShmupCam:beginContact_activategroup(myfixture, otherfixture, contact)
	local triggerobject = otherfixture:getUserData().object
	local triggerlayer = triggerobject.layer
	for _, object in ipairs(triggerlayer.objects) do
		levity.machine:call(object.id, "activate")
	end
end

function ShmupCam:beginContact_camerapath(myfixture, otherfixture, contact)
	self.vx, self.vy = otherfixture:getShape():getPoint(2)

	local otherproperties = otherfixture:getUserData().properties
	local time = otherproperties.time

	if time then
		self.vx = self.vx / time
		self.vy = self.vy / time
	end
end

function ShmupCam:endContact_camerapath(myfixture, otherfixture, contact)
	self.vx = 0
	self.vy = 0
end

function ShmupCam:beginContact(myfixture, otherfixture, contact)
	local otherproperties = otherfixture:getUserData().properties

	local triggertype = otherproperties.triggertype
	if triggertype then
		local bc = self["beginContact_"..triggertype]
		if bc then
			bc(self, myfixture, otherfixture, contact)
		end
	end
end

function ShmupCam:endContact(myfixture, otherfixture, contact)
	local otherproperties = otherfixture:getUserData().properties

	local triggertype = otherproperties.triggertype
	if triggertype then
		local bc = self["endContact_"..triggertype]
		if bc then
			bc(self, myfixture, otherfixture, contact)
		end
	end
end

function ShmupCam:beginMove(dt)
	local body = self.object.body
	local vx0, vy0 = body:getLinearVelocity()
	local vx1, vy1 = self.vx, self.vy
	local mass = body:getMass()
	body:applyLinearImpulse(mass * (vx1-vx0), mass * (vy1-vy0))
end

function ShmupCam:endMove(dt)
	local cx, cy = self.object.body:getWorldCenter()
	levity.camera:set(cx, cy)
end

return ShmupCam
