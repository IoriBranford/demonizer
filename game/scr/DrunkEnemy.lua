local levity = require "levity"
local NPC = require "NPC"

local DrunkEnemy = class(NPC)
function DrunkEnemy:_init(object)
	self:super(object)
	if self.mover then
		levity.scripts:destroyScript(self.mover, self.id)
		self.mover = levity.scripts:newScript(self.id, "DrunkMover", object)
	end
end

function DrunkEnemy:getBAC()
	local healthpct = self.health and self.health:getHealthPercent()
	local drunkresist = self.properties.drunkresist or 0
	return healthpct and 1 - healthpct - drunkresist
end

function DrunkEnemy:beginContact(myfixture, otherfixture, contact)
	NPC.beginContact(self, myfixture, otherfixture, contact)

	if not myfixture:isSensor() and not otherfixture:isSensor() then
		local bac = self:getBAC() or 0
		contact:setRestitution(bac)
		if bac > 0 then
			self.mover:reverseDest()
		end
		local vx, vy = self.body:getLinearVelocity()
		local nx, ny = contact:getNormal()
		local damage = math.abs(math.dot(vx, vy, nx, ny)) * bac / 16
		if self.health and damage >= 1 then
			self.health:addDamage(damage)
			local hx, hy = contact:getPositions()
			if hx and hy and self:isOnCamera() then
				self.health:createContactHitFX(contact, myfixture, "SparkDamageBlunt")
			end
		end
	end
end

function DrunkEnemy:preSolve(myfixture, otherfixture, contact)
	NPC.beginContact(self, myfixture, otherfixture, contact)
	if not myfixture:isSensor() and not otherfixture:isSensor() then
		local bac = self:getBAC() or 0
		if bac <= 0 then
			contact:setEnabled(false)
		end
	end
end

function DrunkEnemy:endTrigger()
	local bac = self:getBAC() or 0
	if self:isOnCamera() and bac > 0 then
		self.properties.defeatspark = ""
		self:defeat()
		return true
	end
	return NPC.endTrigger(self)
end

function DrunkEnemy:endMove(dt)
	NPC.endMove(self, dt)
	local bac = self:getBAC() or 0
	if bac > 0 then
		self.object.anitimescale = 1 - bac
		if self.emote then
			self.emote:setEmote("emotes", "drunk")
		end
		local shearx = bac*math.sin(love.timer.getTime()*math.pi)
		self.object.shearx = shearx/2
		self.object.sheary = -shearx/4
	end
end

return DrunkEnemy
