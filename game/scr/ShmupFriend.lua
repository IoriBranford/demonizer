local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local Targeting = require "Targeting"
local ShmupBullet = require("ShmupBullet")
local PathGraph = require "PathGraph"

local MaxHealth = 32

local ShmupFriend
ShmupFriend = class(function(self, object)
	ShmupFriend.BulletParams.gid =
		levity.map:getTileGid("demonshots", "wingman", 0)
	self.object = object
	self.properties = self.object.properties
	self.object.body:setFixedRotation(true)
	self:setActive(levity.map.properties.delayinitobjects == true)
	self:refreshFixtures({
		ShmupCollision.Category_CameraEdge,
		--ShmupCollision.Category_PlayerTeam,
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
	self.electrocutiontimer = 0
	self.catchupwithcam = false
end)

ShmupFriend.LockSearchWidth = 120
ShmupFriend.LockSearchHeight = 160
ShmupFriend.BulletParams = {
	speed = 8*60,
	category = ShmupCollision.Category_PlayerShot
}
ShmupFriend.BulletInterval = .0625
ShmupFriend.ElectrocutionTime = 1
ShmupFriend.PlayerTouchHealRate = 4
ShmupFriend.HealDistSq = 48*48
ShmupFriend.CatchupDistY = 80
ShmupFriend.CatchupTime = 3
ShmupFriend.CatchupTimeScale = 4

local Sounds = {
	Lock = "snd/targetlock.wav",
	--HelpMe = "snd/hyaa.wav",
	Death = "snd/shriek.wav"
}
levity.bank:load(Sounds)

function ShmupFriend:refreshFixtures(mask)
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		--fixture:setSensor(true)
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
	levity.map:discardObject(self.object.id)
	levity.bank:play(Sounds.Death)
	levity.map:broadcast("friendKilled", self.object.id)
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
	if self.firetimer < dt and locktargetid then
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

	return Targeting.queryRectangle(levity.map,
					canbetargetfunc, x0, y0, x1, y1)
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

	if self.electrocutiontimer > 0 then
		self.electrocutiontimer = self.electrocutiontimer - dt
	end

	local vx, vy = 0, 0

	if self.properties.cageid then
		local vehicle = levity.map.objects[self.properties.cageid]
		if vehicle then
			vx, vy = vehicle.body:getLinearVelocity()
		end
	elseif self.electrocutiontimer > 0 then
		vx = 32*math.cos((ShmupFriend.ElectrocutionTime - self.electrocutiontimer)*30*math.pi)
	else
		self:updateFiring(dt)

		local pathid = self.properties.pathid

		if pathid and not self.pathwalker then
			local pickNextPath = self.properties.pathpicker or "linearUp"
			pickNextPath = PathGraph["pickNextPath_"..pickNextPath]

			self.pathwalker = levity.map.scripts:call(pathid, "newWalker",
						pickNextPath, body:getX(), body:getY(),
						self.properties.pathmode, self)

			local pathtime = self.properties.pathtime
			if not self.properties.pathspeed and pathtime then
				local pathlength = levity.map.scripts:call(
						pathid, "findTripLength",
						pickNextPath,
						body:getX(), body:getY())

				self.properties.pathspeed = pathlength / pathtime
			end
		end

		local fromccx, fromccy = levity.map.scripts:call(
						levity.map.properties.cameraid,
						"getVectorFromCenter",
						body:getWorldCenter())

		local vx0, vy0 = self.object.body:getLinearVelocity()
		if vy0 < 0 then
			if self.catchupwithcam then
				if fromccy < -ShmupFriend.CatchupDistY then
					self.catchupwithcam = false
				end
			else
				if fromccy > ShmupFriend.CatchupDistY then
					self.catchupwithcam = true
				end
			end
		end

		local timescale = 1
		if self.catchupwithcam then
			timescale = ShmupFriend.CatchupTimeScale
		end

		vx, vy = self.pathwalker:getVelocity(dt,
			timescale * (self.properties.pathspeed or 60),
			body:getX(), body:getY())
	end

	body:setLinearVelocity(vx, vy)
end

function ShmupFriend:endMove(dt)
	local cx, cy = self.object.body:getWorldCenter()
	local playerid = levity.map.properties.playerid
	local distsq = levity.map.scripts:call(playerid, "getDistanceSq", cx, cy)

	if distsq <= ShmupFriend.HealDistSq then
		self:heal(dt*ShmupFriend.PlayerTouchHealRate)
	end
end

function ShmupFriend:electrocuted()
	if not self.object.body:isActive() then
		return
	end

	--levity.bank:play(Sounds.HelpMe)
	self:damage(1)
	self.electrocutiontimer = ShmupFriend.ElectrocutionTime
end

function ShmupFriend:vehicleDestroyed(vehicleid)
	if vehicleid == self.properties.cageid then
		self.properties.cageid = nil
		self.object:setLayer(levity.map.layers["friends"])
	end
end

function ShmupFriend:beginDraw()
	local healthpercent = self.health / MaxHealth

	if healthpercent < 1 then
		local cx, cy = self.object.body:getWorldCenter()
		local playerid = levity.map.properties.playerid
		local distsq = levity.map.scripts:call(playerid, "getDistanceSq",
							cx, cy)

		local wound = 0xff * healthpercent
		if distsq <= ShmupFriend.HealDistSq then
			love.graphics.setColor(wound, 0xff, wound)
		else
			love.graphics.setColor(0xff, wound, wound)
		end
	end

	--if self.pathwalker then
	--	local i = self.pathwalker.desti
	--	self.properties.text = i
	--	love.graphics.line(
	--			self.object.body:getX(),
	--			self.object.body:getY(),
	--			self.pathwalker.path.points[i].x,
	--			self.pathwalker.path.points[i].y)
	--end
end

function ShmupFriend:endDraw()
	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

return ShmupFriend
