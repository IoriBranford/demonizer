local levity = require "levity"
local NPC = require "NPC"
local ShmupBullet = require "ShmupBullet"
local ShmupCollision = require "ShmupCollision"
local Item = require "Item"

local EnemyPrincess = class(NPC)
function EnemyPrincess:_init(object)
	self:super(object)
end

function EnemyPrincess:defeatCoroutine(dt)
	if self.health then
		self.health:createDefeatFX()
	end

	self.typechanger:setType("Princess")
	self.properties.pathspeed = 0
	local kogid = self:getDefeatDropGid(self.object)
	if kogid then
		self.object:setGid(kogid, true, "dynamic", false)
	end

	local defeatspark = self.properties.defeatspark or "SparkDefeatMed"
	for _, fixture in ipairs(self.body:getFixtures()) do
		local l, t, r, b = fixture:getBoundingBox()
		local x = l + (r-l)*.5
		local y = t + (b-t)*.5
		ShmupBullet.create(defeatspark, x, y, 0, 0, "sparks")
		fixture:setMask(NPC.InvulnerableMask)
	end

	self:explosionClusterCoroutine("SparkDefeatMed", 8, 16, nil, "defeatparticles", 16, .125)
	self.coroutine:waitTime(1)

	self.object:setGid(levity.map:getTileGid("Princess", 0),
		true, "dynamic", false)
	self.properties.faceangle = 90
	self.coroutine:waitTime(1)

	self.properties.faceangle = nil
	self.properties.pathspeed = nil
	self.typechanger:setType("PrincessFlee")
end

return EnemyPrincess
