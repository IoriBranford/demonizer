local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
require "class"

local ShmupNPC = class(function(self, id)
	self.object = levity.map.objects[id]
	self.object.body:setFixedRotation(true)
	self:setActive(false)
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_NPC)
		fixture:setMask(
			ShmupCollision.Category_CameraEdge,
			ShmupCollision.Category_NPC,
			ShmupCollision.Category_NPCShot)
	end
end)

function ShmupNPC:activate()
	self.ready = true
end

function ShmupNPC:setActive(active)
	self.object.visible = active
	self.object.body:setActive(active)
	self.ready = false
end

function ShmupNPC:beginMove(dt)
	if self.ready == true then
		self:setActive(true)
	end
end

return ShmupNPC
