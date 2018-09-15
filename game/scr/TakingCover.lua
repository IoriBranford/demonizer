local levity = require "levity"
local ShmupCollision = require "ShmupCollision"

local TakingCover = class()
function TakingCover:_init(object)
	self.object = object
	self.numcover = 0
	self.deltacover = 0
end

function TakingCover:hasCover()
	return self.numcover > 0
end

function TakingCover:willHaveCover()
	return self.numcover + self.deltacover > 0
end

function TakingCover:beginContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_EnemyCover then
			self.deltacover = self.deltacover + 1
		end
	end
end

function TakingCover:endContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_EnemyCover then
			self.deltacover = self.deltacover - 1
		end
	end
end

function TakingCover:endMove(dt)
	if self.deltacover ~= 0 then
		local cover = self.numcover + self.deltacover
		self.numcover = cover
		self.deltacover = 0
		levity.scripts:send(self.object.id, "coverUpdated", cover)
	end
end

return TakingCover
