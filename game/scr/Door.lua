local levity = require "levity"
local Tiles = require "levity.tiles"
local ShmupCollision = require "ShmupCollision"

local Door = class()
Door.Mask = {
	ShmupCollision.Category_Default,
	ShmupCollision.Category_Camera,
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_PlayerBomb,
	ShmupCollision.Category_EnemyShot,
	ShmupCollision.Category_EnemyCover,
	ShmupCollision.Category_EnemyBounds
}

function Door:_init(object)
	self.contacts = 0
	self.object = object
	self.properties = object.properties
	for _, fixture in pairs(self.object.body:getFixtureList()) do
		fixture:setMask(Door.Mask)
	end
end

function Door:open()
	self.object:setTileId(self.properties.opentile)
	local opensound = self.properties.opensound
	if opensound then
		levity.bank:play(opensound)
	end
end

function Door:close()
	self.object:setTileId(self.properties.closedtile)
	local closedsound = self.properties.closedsound
	if closedsound then
		levity.bank:play(closedsound)
	end
end

function Door:beginContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()
	local otherlayer = otherfixture:getBody():getUserData().object.layer
	if otherlayer == self.object.layer then
		if self.contacts == 0 then
			self:open()
		end
		self.contacts = self.contacts + 1
	end
end

function Door:endContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()
	local otherlayer = otherfixture:getBody():getUserData().object.layer
	if otherlayer == self.object.layer then
		self.contacts = self.contacts - 1
		if self.contacts == 0 then
			self:close()
		end
	end
end

return Door
