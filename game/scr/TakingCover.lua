local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
--TODO "NPC" --> "Enemy"

local TakingCover
TakingCover = class(function(self, object)
	self.object = object
	self.numcover = 0
	self.deltacover = 0
end)

function TakingCover:hasCover()
	return self.numcover > 0
end

function TakingCover:beginContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()
	if category == ShmupCollision.Category_NPCCover then
		self.deltacover = self.deltacover + 1
	end
end

function TakingCover:endContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()
	if category == ShmupCollision.Category_NPCCover then
		self.deltacover = self.deltacover - 1
	end
end

function TakingCover:endMove(dt)
	if self.deltacover ~= 0 then
		local cover = self.numcover + self.deltacover
		local category
		if cover > 0 then
			category = ShmupCollision.Category_NPCInCover
		else
			category = ShmupCollision.Category_NPCTeam
		end
		local fixtures = self.object.body:getFixtureList()
		for _, fixture in ipairs(fixtures) do
			fixture:setCategory(category)
		end
		self.numcover = cover
		self.deltacover = 0
	end
end

return TakingCover
