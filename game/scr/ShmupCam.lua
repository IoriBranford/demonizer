local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local Mover = require "Mover"

local ShmupCam = class(function(self, object)
	self.object = object
	self.properties = self.object.properties

	self.originalspeed = self.properties.pathspeed or 60
	self.x0 = self.object.x
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

	self.camera = levity.map.camera
	local cx, cy = self.object.body:getWorldCenter()
	self.camera:set(cx, cy, self.object.width, self.object.height)
	if levity.map then
		levity.map.camera:set(
				self.object.width/2, self.object.height/2,
				self.object.width, self.object.height)
	end

	local mapwidth = (levity.map.width * levity.map.tilewidth)
	self.mapwidthratio = 1 - (self.object.width / mapwidth)

	self.mover = nil

	self.activatedgrouptriggerids = {}
end)

function ShmupCam:beginContact_activategroup(myfixture, otherfixture, contact)
	local triggerobject = otherfixture:getUserData().object
	local triggerlayer = triggerobject.layer
	self.activatedgrouptriggerids[triggerobject.id] = triggerobject.id

	local music = triggerlayer.properties.activatemusic
	if music then
		levity.bank:changeMusic(music, "emu")
	elseif triggerlayer.properties.fademusic then
		if levity.bank.currentmusic then
			levity.bank.currentmusic:fade()
		end
	end

	local sound = triggerlayer.properties.activatesound
	if sound then
		levity.bank:load(sound, "static")
		levity.bank:play(sound)
	end
end

function ShmupCam:beginContact_pausecamera(myfixture, otherfixture, contact)
	local triggerobject = otherfixture:getUserData().object
	levity.map:discardObject(triggerobject.id)
	self:pausePath(true)
end

function ShmupCam:endContact_activategroup(myfixture, otherfixture, contact)
	local triggerobject = otherfixture:getBody():getUserData().object
	local activatedobjectids = triggerobject.properties.activatedobjectids
	for _, id in ipairs(activatedobjectids) do
		if levity.map.scripts:call(id, "staysAfterTriggerEnd") then
			levity.map.scripts:call(id, "endTrigger")
		else
			levity.map:discardObject(id)
		end
	end
	levity.map:discardObject(triggerobject.id)
end

function ShmupCam:beginContact(myfixture, otherfixture, contact)
	local otherdata = otherfixture:getUserData()
	local otherproperties
	local triggertype
	if otherdata then
		otherproperties = otherdata.properties
		triggertype = otherproperties.triggertype
	else
		print(otherfixture:getBoundingBox())
	end
	if triggertype then
		local f = self["beginContact_"..triggertype]
		if f then
			f(self, myfixture, otherfixture, contact)
		end
	end
end

function ShmupCam:endContact(myfixture, otherfixture, contact)
	local otherdata = otherfixture:getUserData()
	local otherproperties
	local triggertype
	if otherdata then
		otherproperties = otherdata.properties
		triggertype = otherproperties.triggertype
	end
	if triggertype then
		local f = self["endContact_"..triggertype]
		if f then
			f(self, myfixture, otherfixture, contact)
		end
	end
end

ShmupCam.pathfind = Mover.pathfind_linear1way

function ShmupCam:beginMove(dt)
	local body = self.object.body
	local mass = 0x40000000 -- don't let others push it around
	body:setMass(mass)

	if not self.mover and self.properties.pathid then
		self.mover = levity.map.scripts:newScript(self.object.id, "Mover",
							self.object)
	end

	if self.mover then
		self.mover:setOffsetX(body:getX() - self.x0)
		if self.pathpaused then
			self.properties.pathspeed = 0
		else
			self.properties.pathspeed = self.originalspeed
		end
	end
end

function ShmupCam:endMove(dt)
	local cx, cy = self.object.body:getWorldCenter()
	self.camera:set(cx, cy)

	for k, triggerid in pairs(self.activatedgrouptriggerids) do
		local trigger = levity.map.objects[triggerid]

		local initiallayer = trigger.properties.objectsinitiallayer
		if initiallayer then
			initiallayer = levity.map.layers[initiallayer]
		end

		local activatedobjectids = {}
		for _, object in ipairs(trigger.layer.objects) do
			if object.id ~= triggerid then
				activatedobjectids[#activatedobjectids + 1] = object.id
			end
		end
		trigger.properties.activatedobjectids = activatedobjectids

		if levity.map.properties.delayinitobjects == true then
			if not initiallayer then
				initiallayer = trigger.layer
			end
			for _, id in ipairs(activatedobjectids) do
				local object = levity.map.objects[id]
				initiallayer:addObject(object)
			end
		else
			for _, id in ipairs(activatedobjectids) do
				local object = levity.map.objects[id]
				levity.map.scripts:call(id, "activate")
				if initiallayer then
					object:setLayer(initiallayer)
				end
			end
		end

		self.activatedgrouptriggerids[k] = nil
	end
end

function ShmupCam:swayWithPlayer(playerx)
	local x = (playerx * self.mapwidthratio)
	self.object.body:setX(x)
	local cx, cy = self.object.body:getWorldCenter()
	self.camera:set(cx, cy)
end

function ShmupCam:pausePath(pause)
	self.pathpaused = pause
end

function ShmupCam:getVectorFromCenter(x, y)
	local cx, cy = self.object.body:getWorldCenter()
	return x - cx, y - cy
end

function ShmupCam:getVelocity()
	return self.object.body:getLinearVelocity()
end

function ShmupCam:playerLost()
	if self.mover then
		levity.map.scripts:destroyScript(self.mover, self.object.id)
		self.mover = nil
	end
end

return ShmupCam
