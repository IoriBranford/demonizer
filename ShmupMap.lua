local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
require "class"

local function setFilterFromProperties(body)
	for _, fixture in ipairs(body:getFixtureList()) do
		local properties = fixture:getUserData().properties
		local category = properties.category
		local mask = properties.mask

		if category then
			category = ShmupCollision["Category_"..category]
		end
		if category then
			fixture:setCategory(category)
		end

		if mask then
			local maskcategories = {}
			for categoryname in (mask..','):gmatch("(.-)"..',') do
				local category =
					ShmupCollision["Category_"..categoryname]
				if category then
					table.insert(maskcategories, category)
				end
			end
			if #maskcategories > 0 then
				fixture:setMask(unpack(maskcategories))
			end
		end
	end
end

local ShmupMap = class(function(self, id)
	self.map = levity.map
	ShmupNPC.ShotLayer = levity:addDynamicLayer("npcshots")
 
	for _, layer in ipairs(self.map.layers) do
		if layer.type == "dynamiclayer"
		or layer.type == "objectgroup"
			then
			for _, object in ipairs(layer.objects) do
				if not object.gid then
					object.visible = false
				end
				--setFilterFromProperties(object.body)
			end
		end
	end
 
	--setFilterFromProperties(self.map.box2d_collision)
end)


function ShmupMap:keypressed_escape()
	levity:setNextMap("test.lua")
end

return ShmupMap
