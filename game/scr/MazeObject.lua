local levity = require "levity"
local ShmupCollision = require "ShmupCollision"

local MazeObject = class()
function MazeObject:_init(object)
	self.object = object
	self.id = object.id
	self.properties = object.properties
end

function MazeObject:isContactWithPlayer(myfixture, otherfixture, contact)
	local playerid = levity.map.properties.playerid
	local otherdata = otherfixture:getBody():getUserData()
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())

		if category == ShmupCollision.Category_PlayerTeam
		and otherdata and otherdata.id == playerid
		then
			return true
		end
	end
	return false
end

function MazeObject:beginContact(myfixture, otherfixture, contact)
	if self:isContactWithPlayer(myfixture, otherfixture, contact) then
		self.properties.playercontact = true
	end
end

function MazeObject:endContact(myfixture, otherfixture, contact)
	if self:isContactWithPlayer(myfixture, otherfixture, contact) then
		self.properties.playercontact = false
	end
end

return MazeObject
