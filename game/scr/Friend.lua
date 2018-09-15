local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupBullet = require "ShmupBullet"

require "Health"
require "Facing"
require "Mover"
require "Emote"

local Friend = class()
function Friend:_init(object)
        self.id = object.id
	self.object = object
	self.body = object.body
	self.properties = object.properties
	self.object.body:setFixedRotation(true)
	self:refreshFixtures({
		ShmupCollision.Category_CameraEdge,
		--ShmupCollision.Category_PlayerTeam,
		ShmupCollision.Category_PlayerShot,
		ShmupCollision.Category_PlayerBomb,
		ShmupCollision.Category_EnemyTeam
	})

	self.oncamera = nil

        self.facing = levity.scripts:newScript(self.id, "Facing", self.object)
        self.mover = levity.scripts:newScript(self.id, "Mover", self.object)
	self.health = levity.scripts:newScript(self.id, "Health", self.object)
	self.emote = levity.scripts:newScript(self.id, "Emote", self.object)
end

function Friend:initQuery()
	local triggerid = self.properties.triggerid
	if triggerid then
		levity.scripts:send(triggerid, "addFriend", self.id)
	end
	local rideid = self.properties.rideid
	if rideid then
		levity.scripts:send(rideid, "addRider", self.id)
	end
end

function Friend:refreshFixtures(mask)
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		--fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_PlayerTeam)
		fixture:setMask(mask)
	end
end

function Friend:beginContact_EnemyShot(myfixture, otherfixture, contact)
	local bulletproperties = otherfixture:getBody():getUserData().properties
	self.health:addDamage(bulletproperties.damage or 1)

	local hx, hy = contact:getPositions()
	if hx and hy then
		self.health:createContactHitFX(contact)
	else
		self.health:createHitFX()
	end
end

function Friend:beginContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_EnemyShot then
			self:beginContact_EnemyShot(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_Camera then
			self.oncamera = true
		end
	end
end

function Friend:endContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_Camera then
			self.oncamera = false
		end
	end
end

function Friend:endMove(dt)
	local vx, vy = self.body:getLinearVelocity()
	self.facing:faceAngle(math.atan2(vy, vx))
	if self.properties.fleeing and self.oncamera == false then
		local allenemiesdefeated = levity.scripts:call(
			self.properties.triggerid, "areAllEnemiesDefeated")

		if self.properties.fleeingkills and not allenemiesdefeated then
			self:defeat()
		else
			levity.scripts:broadcast("friendSaved", self.id)
			levity.scripts:send(self.id, "discard")
		end
	end
end

function Friend:allFriendsSaved()
	self.emote:setEmote("emotes", "heart")
end

function Friend:defeat()
	local x, y = self.object.body:getWorldCenter()
	levity.scripts:send("deathparticles", "emit", 32, x, y, 0, 2*math.pi)
	ShmupBullet.create("FriendlyDeath", x, y, 0, 0, "sparks")
	levity.scripts:broadcast("friendKilled", self.id)
	levity.scripts:send(self.id, "discard")
end

function Friend:discard()
	levity.scripts:send(self.properties.triggerid, "someoneDiscarded", self.id)
	levity:discardObject(self.id)
end

function Friend:beginDraw()
	local healthpercent = self.health:getHealthPercent()
	local wound = 0xff*healthpercent
	local color = self.object.color
	if not color then
		color = {}
		self.object.color = color
	end
	color[1] = 0xff
	color[2] = wound
	color[3] = wound
	color[4] = 0xff
end

return Friend
