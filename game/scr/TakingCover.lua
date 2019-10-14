local levity = require "levity"
local ShmupCollision = require "ShmupCollision"

local TakingCover = class(require("Script"))
function TakingCover:_init(object)
	self.object = object
	self.body = object.body
	self.totalcover = 0
	self.deltacover = 0
end

function TakingCover:hasCover()
	for i, fixture in pairs(self.body:getFixtureList()) do
		if self:fixtureHasCover(fixture) then
			return true
		end
	end
end

function TakingCover:fixtureHasCover(fixture)
	local fixdata = fixture:getUserData()
	local fixcover = fixdata and fixdata.numcover or 0
	return fixcover > 0
end

function TakingCover:beginContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_EnemyCover then
			if self.object.properties.takescover
			or self.totalcover > 0	--if stopped taking cover,
						--but still has cover,
						--wait until no more cover
						--before refusing new cover
			then
				local fixdata = myfixture:getUserData()
				fixdata.numcover = fixdata.numcover or 0
				fixdata.numcover = fixdata.numcover + 1
				self.deltacover = self.deltacover + 1
			end
		end
	end
end

function TakingCover:endContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_EnemyCover then
			local fixdata = myfixture:getUserData()
			if fixdata and fixdata.numcover then
				fixdata.numcover = fixdata.numcover - 1
				self.deltacover = self.deltacover - 1
			end
		end
	end
end

function TakingCover:endMove(dt)
	if self.deltacover ~= 0 then
		local cover = self.totalcover + self.deltacover
		self.totalcover = cover
		self.deltacover = 0
		self:send(self.object.id, "coverUpdated", cover)
	end
end
TakingCover.beginMove = TakingCover.endMove

return TakingCover
