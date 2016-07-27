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

	self.pathwalker = nil
	self.pathpaused = false
end)

function ShmupCam:beginContact_activategroup(myfixture, otherfixture, contact)
	local triggerobject = otherfixture:getUserData().object
	local triggerlayer = triggerobject.layer
	for _, object in ipairs(triggerlayer.objects) do
		levity.machine:call(object.id, "activate")
	end

	local music = triggerlayer.properties.activatemusic
	if music then
		levity.bank:changeMusic(music, "emu", 4)
	end

	local sound = triggerlayer.properties.activatesound
	if sound then
		levity.bank:load(sound, "static")
		levity.bank:play(sound)
	end
end

function ShmupCam:beginContact_pausecamera(myfixture, otherfixture, contact)
	local triggerobject = otherfixture:getUserData().object
	triggerobject.dead = true
	self:pausePath(true)
end

function ShmupCam:endContact_activategroup(myfixture, otherfixture, contact)
	local triggerobject = otherfixture:getUserData().object
	local triggerlayer = triggerobject.layer
	for _, object in ipairs(triggerlayer.objects) do
		object.dead = true
	end
end

function ShmupCam:beginContact(myfixture, otherfixture, contact)
	local otherproperties = otherfixture:getUserData().properties

	local triggertype = otherproperties.triggertype
	if triggertype then
		local f = self["beginContact_"..triggertype]
		if f then
			f(self, myfixture, otherfixture, contact)
		end
	end
end

function ShmupCam:endContact(myfixture, otherfixture, contact)
	local otherproperties = otherfixture:getUserData().properties

	local triggertype = otherproperties.triggertype
	if triggertype then
		local f = self["endContact_"..triggertype]
		if f then
			f(self, myfixture, otherfixture, contact)
		end
	end
end

function ShmupCam:beginMove(dt)
	local body = self.object.body
	local mass = 0x40000000 -- don't let others push it around
	body:setMass(mass)
	local vx0, vy0 = body:getLinearVelocity()
	local vx1, vy1 = 0, 0

	if not self.pathwalker then
		local pathid = self.properties.pathid
		self.pathwalker = levity.machine:call(pathid, "newWalker",
						self.properties.pathtime)
	end

	if self.pathwalker and not self.pathpaused then
		_, vy1 = self.pathwalker:walk(dt, self.x0, body:getY())
		vx1 = vx0
	end

	body:setLinearVelocity(vx1, vy1)
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

function ShmupCam:pausePath(pause)
	self.pathpaused = pause
end

return ShmupCam
