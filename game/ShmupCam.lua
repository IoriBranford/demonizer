local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
require "class"

local ShmupCam = class(function(self, id)
	self.object = levity.map.objects[id]
	self.x0 = self.object.x
	self.properties = self.object.properties
	self.object.visible = false
	self.object.body:setFixedRotation(true)

	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setFriction(0)
		fixture:setCategory(ShmupCollision.Category_Camera)
	end

	local edgefixture = love.physics.newFixture(self.object.body,
		love.physics.newChainShape(true,
			0, 0,
			0, self.object.height,
			self.object.width, self.object.height,
			self.object.width, 0))
	edgefixture:setCategory(ShmupCollision.Category_CameraEdge)
	edgefixture:setMask(ShmupCollision.Category_Default)

	self.camera = levity.camera
	local cx, cy = self.object.body:getWorldCenter()
	self.camera:set(cx, cy, self.object.width, self.object.height)

	local mapwidth = (levity.map.width * levity.map.tilewidth)
	self.mapwidthratio = 1 - (self.object.width / mapwidth)

	self.pathtimer = 0
	self.pathpoint = 1
end)

function ShmupCam:beginContact_activategroup(myfixture, otherfixture, contact)
	local triggerobject = otherfixture:getUserData().object
	local triggerlayer = triggerobject.layer
	for _, object in ipairs(triggerlayer.objects) do
		levity.machine:call(object.id, "activate")
	end
end

function ShmupCam:endContact_activategroup(myfixture, otherfixture, contact)
	local triggerobject = otherfixture:getUserData().object
	local triggerlayer = triggerobject.layer
	for _, object in ipairs(triggerlayer.objects) do
		object.destroy = true
	end
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
	local mass = 0x40000000 -- don't let others push it around
	body:setMass(mass)
	local vx0, vy0 = body:getLinearVelocity()

	local pathid = self.properties.pathid
	if pathid then
		self.pathpoint = levity.machine:call(pathid, "updatePoint",
			self.pathpoint, self.x0, body:getY(), vx0, vy0)

		self.pathtimer = self.pathtimer + dt

		if levity.machine:call(pathid, "finished", self.pathpoint)
		or self.pathtimer >= self.properties.pathtime then
			self.properties.pathid = nil
		else
			local vx, vy = levity.machine:call(pathid, "getVelocityTo",
			self.pathpoint, self.x0, body:getY(),
			self.properties.pathtime)

			body:setLinearVelocity(vx0, vy)
		end
	else
		body:setLinearVelocity(0, 0)
	end
end

function ShmupCam:endMove(dt)
	local cx, cy = self.object.body:getWorldCenter()
	self.camera:set(cx, cy)
end

function ShmupCam:swayWithPlayer(playerx)
	self.object.body:setX(playerx * self.mapwidthratio)
	local cx, cy = self.object.body:getWorldCenter()
	self.camera:set(cx, cy)
end

return ShmupCam
