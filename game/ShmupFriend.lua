local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local Targeting = require "Targeting"
local ShmupBullet = levity.machine:requireScript("ShmupBullet")

local MaxHealth = 32

local ShmupFriend = class(function(self, id)
	self.object = levity.map.objects[id]
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self:setActive(false)
	self:refreshFixtures({
		ShmupCollision.Category_CameraEdge,
		ShmupCollision.Category_PlayerTeam,
		ShmupCollision.Category_PlayerShot,
		ShmupCollision.Category_PlayerBomb,
		ShmupCollision.Category_NPCTeam,
		ShmupCollision.Category_NPCInCover
	})

	self.ready = false
	self.oncamera = false

	self.pathwalker = nil
	self.locktargetid = nil
	self.firetimer = 0
	self.health = MaxHealth
end)

ShmupFriend.LockSearchWidth = 120
ShmupFriend.LockSearchHeight = 160
ShmupFriend.BulletParams = {
	speed = 4*60,
	gid = levity:getTileGid("demonshots", "wingman", 0),
	category = ShmupCollision.Category_PlayerShot
}
ShmupFriend.BulletInterval = .5

local Sounds = {
	Lock = "targetlock.wav",
	HelpMe = "hyaa.wav",
	Death = "shriek.wav"
}
levity.bank:load(Sounds)

function ShmupFriend:refreshFixtures(mask)
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(true)
		fixture:setCategory(ShmupCollision.Category_PlayerTeam)
		fixture:setMask(unpack(mask))
	end
end

function ShmupFriend:activate()
	self.ready = true
end

function ShmupFriend:setActive(active)
	if self.object.gid then
		self.object.visible = active
	else
		self.object.visible = false
	end
	self.object.body:setActive(active)
	if active then
		self.object.anitimescale = 1
	else
		self.object.anitimescale = 0
	end
	self.ready = false
end

function ShmupFriend:kill()
	levity:discardObject(self.object.id)
	levity.bank:play(Sounds.Death)
	levity.machine:broadcast("friendKilled", self.object.id)
end

function ShmupFriend:damage(damage)
	if self.health >= 1 then
		self.health = self.health - damage
		if self.health < 1 then
			self:kill()
		end
	end
end

function ShmupFriend:heal(healing)
	self.health = math.min(self.health + healing, MaxHealth)
end

function ShmupFriend:beginContact(myfixture, otherfixture, contact)
	local otherdata = otherfixture:getBody():getUserData()
	local otherproperties = otherdata.properties
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_NPCShot then
		self:damage(otherproperties.damage or 1)
	elseif category == ShmupCollision.Category_Camera then
		self.oncamera = true
	end
end

function ShmupFriend:endContact(myfixture, otherfixture, contact)
	local category = otherfixture:getCategory()

	if category == ShmupCollision.Category_Camera then
		self.oncamera = false
	end
end

function ShmupFriend:updateFiring(dt)
	local locktargetid = self:findTarget("canBeLockTarget")
	if self.firetimer <= 0 and locktargetid then
		local angle = math.pi*1.5
		local cx, cy = self.object.body:getWorldCenter()

		if self.locktargetid ~= locktargetid then
			levity.bank:play(Sounds.Lock)
		end
		self.locktargetid = locktargetid
		local targetbody = levity.map.objects[locktargetid].body
		local tx, ty = targetbody:getWorldCenter()
		angle = math.atan2(ty-cy, tx-cx)

		local params = ShmupFriend.BulletParams
		params.x = cx + 8*math.cos(angle)
		params.y = cy + 8*math.sin(angle)
		params.angle = angle
		self.firetimer = ShmupBullet.fireOverTime(params,
					self.object.layer, self.firetimer,
					ShmupFriend.BulletInterval)
	end
	self.firetimer = self.firetimer - dt
end

function ShmupFriend:findTarget(canbetargetfunc)
	local cx, cy = self.object.body:getWorldCenter()

	local x0 = cx - ShmupFriend.LockSearchWidth
	local x1 = cx + ShmupFriend.LockSearchWidth
	local y0 = cy - ShmupFriend.LockSearchHeight
	local y1 = cy + ShmupFriend.LockSearchHeight

	return Targeting.queryRectangle(canbetargetfunc, x0, y0, x1, y1)
end

function ShmupFriend:beginMove(dt)
	local body = self.object.body

	if self.ready == true then
		self:setActive(true)
		if self.onActivate then
			self.onActivate()
		end
	end

	if not body:isActive() then
		return
	end

	if not self.pathwalker then
		local pathid = self.properties.pathid
		self.pathwalker = levity.machine:call(pathid, "newWalker",
						self.properties.pathtime)
	end

	if self.properties.cageid then
		body:setLinearVelocity(0, 0)
	else
		self:updateFiring(dt)
		if self.pathwalker then
			body:setLinearVelocity(self.pathwalker:walk(dt,
						body:getX(), body:getY()))
		end
	end
end

function ShmupFriend:electrocuted()
	if not self.object.body:isActive() then
		return
	end

	levity.bank:play(Sounds.HelpMe)
	self:damage(1)
end

function ShmupFriend:vehicleDestroyed(vehicleid)
	if vehicleid == self.properties.cageid then
		self.properties.cageid = nil
		levity:setObjectLayer(self.object, levity.map.layers["friends"])
	end
end

return ShmupFriend
