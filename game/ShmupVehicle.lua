local levity = require "levity"
local ShmupCollision = require "ShmupCollision"

local Sounds = {
	Hit = "hit.wav",
	KO = "knockout.wav",
	Boom2 = "boom2.wav"
}
levity.bank:load(Sounds)

local ShmupVehicle = class(function(self, id)
	self.object = levity.map.objects[id]
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self:setActive(false)

	self.health = 64

	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_NPCTeam)
		fixture:setMask(ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_NPCTeam,
			ShmupCollision.Category_NPCShot)
	end

	self.pathwalker = nil

	self.oncamera = false

--	TODO strtocall module
--	local onActivate = self.properties.onActivate
--	if onActivate then
--		self.onActivate = parseMemberFunctionCall(self, onActivate)
--	end
--	local onRemove = self.properties.onRemove
--	if onRemove then
--		self.onRemove = parseMemberFunctionCall(self, onRemove)
--	end
end)

function ShmupVehicle:activate()
	self.ready = true
end

function ShmupVehicle:setActive(active)
	if self.object.gid then
		self.object.visible = active
	else
		self.object.visible = false
	end
	self.object.body:setActive(active)
	if active then
		self.object.anitimescale = 1
	else
		self.object.anitimescale = 0
	end
	self.ready = false
end

function ShmupVehicle:canBeLockTarget()
	return self.oncamera
		and self.object.visible
		and self.health > 0
end

function ShmupVehicle:explode()
	levity.bank:play(Sounds.KO)
	levity.bank:play(Sounds.Boom2)
	levity.machine:broadcast("vehicleDestroyed", self.object.id)
	levity.machine:broadcast("pointsScored",
				self.properties.killpoints or 1000)
	self:remove()
end

function ShmupVehicle:beginContact_PlayerShot(myfixture, otherfixture, contact)
	if self.health >= 1 then
		local bulletproperties = otherfixture:getBody():getUserData().properties
		local damage = bulletproperties.damage or 1

		self.health = self.health - damage
		if self.health < 1 then
			self:explode()
		else
			levity.bank:play(Sounds.Hit)
		end
	end
end

function ShmupVehicle:beginContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_PlayerShot then
		self:beginContact_PlayerShot(myfixture, otherfixture, contact)
	elseif category == ShmupCollision.Category_Camera then
		self.oncamera = true
	end
end

function ShmupVehicle:endContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_Camera then
		self.oncamera = false
	end
end

function ShmupVehicle:remove()
	levity:discardObject(self.object.id)
--	if self.onRemove then
--		self.onRemove()
--	end
end

function ShmupVehicle:beginMove(dt)
	if self.ready == true then
		self:setActive(true)
--		if self.onActivate then
--			self.onActivate()
--		end
	end

	if not self.object.body:isActive() then
		return
	end

	local body = self.object.body
	local vx0, vy0 = body:getLinearVelocity()
	local vx1, vy1 = 0, 0

	if not self.pathwalker then
		local pathid = self.properties.pathid
		self.pathwalker = levity.machine:call(pathid, "newWalker",
						self.properties.pathtime)
	end

	if self.pathwalker then
		vx1, vy1 = self.pathwalker:walk(dt, body:getX(), body:getY())
	end

	body:setLinearVelocity(vx1, vy1)
end

return ShmupVehicle
