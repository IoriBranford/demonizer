local levity = require "levity"
local NPC = require "NPC"

local EnemyHighPriest = class(NPC)

function EnemyHighPriest:_init(object)
	self:super(object)
end

function EnemyHighPriest:spawnOrbsOnPlayer(dt)
	local layer = levity.map.layers["bossorbs"]
	assert(layer)
	local triggerid
	for _, object in pairs(layer.objects) do
		if object.properties.script == "Trigger" then
			triggerid = object.id
			break
		end
	end
	assert(triggerid)

	local orbgid = levity.map:getTileGid("Orb", 0)
	local x, y = self.body:getPosition()
	for i = 1, 4 do
		local orb = {
			type = "Orb_Surround",
			gid = orbgid,
			x = x,
			y = y,
			properties = {
				rideorbitspeed = 180 * (-1)^i
			}
		}
		levity.scripts:send(triggerid, "addNewObject", orb)
		levity.bank:play(self.properties.spawnorbsound)
		self.coroutine:waitTime(.25)
	end
end

function EnemyHighPriest:reachedDest(destx, desty)
	if self.object.type == "HighPriest_Flee" then
		local point = levity.map.properties.exitid
		point = levity.map.objects[point]
		local pointcx, pointcy = point and point.body
			and point.body:getWorldCenter()
		if not pointcx or not pointcy
		or (destx == pointcx and desty == pointcy)
		then
			self:discard()
		end
	elseif not self.health or self.health:isDefeated() then
		local point = self.properties.fleestartpointid
		point = levity.map.objects[point]
		if not point
		or (destx == point.x and desty == point.y)
		then
			self.typechanger:setType("HighPriest")
			self.reachedfleestartpoint = true
		end
	end
end

function EnemyHighPriest:defeatCoroutine(dt)
	self.health:createDefeatFX()

	for _, fixture in ipairs(self.body:getFixtureList()) do
		fixture:setMask(NPC.InvulnerableMask)
	end

	while not self.reachedfleestartpoint do
		self:explosionClusterCoroutine("SparkDefeatHuge", 1, 0,
					"sparks", "defeatparticles", 16, .25)
	end

	local openexittriggerid = self.properties.openexittriggerid
	levity.scripts:send(openexittriggerid, "activate")
	local covertriggerid = self.properties.covertriggerid
	levity.scripts:send(covertriggerid, "deactivate")
	self.coroutine:waitTime(self.properties.exitopenedwaittime or 2)

	self.typechanger:setType("HighPriest_Flee")
end

return EnemyHighPriest
