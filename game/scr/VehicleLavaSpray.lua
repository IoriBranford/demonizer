local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local ShmupVehicle = require("ShmupVehicle")
local ShmupBullet = require("ShmupBullet")

local VehicleLavaSpray = class(ShmupVehicle, function(self, id)
	ShmupVehicle.init(self, id)
	self.health = 128
	self.coroutine = nil
	self.flash = nil

	local body = self.object.body
	for _, fixture in ipairs(body:getFixtureList()) do
		fixture:setSensor(false)
		fixture:setRestitution(.25)
	end
end)

VehicleLavaSpray.BulletParams = {
	speed = 60,
	accelx = 0,
	accely = 4*60,
	gid = levity.map:getTileGid("humanshots", "fire", 0),
	category = ShmupCollision.Category_NPCShot
}

local Sounds = {
	Spray = "snd/dragonfire.wav"
}
levity.bank:load(Sounds)

function VehicleLavaSpray:mainCoroutine()
	local params = VehicleLavaSpray.BulletParams
	local body = self.object.body
	local mass = body:getMass()

	while true do
		local playerid = levity.map.properties.playerid
		local player = levity.map.objects[playerid]
		local x, y = body:getWorldCenter()
		local plx, ply = player.body:getWorldCenter()

		local t = 0
		while t < 4 or math.abs(plx - x) > 4 do
			if x - plx < 0 then
				body:applyForce(240*mass, 0)
			else
				body:applyForce(-240*mass, 0)
			end

			x, y = body:getWorldCenter()
			plx, ply = player.body:getWorldCenter()

			local dt = coroutine.yield()
			t = t + dt

			if t >= 4 then
				self.flash = 0xff*(1 + math.sin(30*math.pi*t))
			end
		end
		self.flash = nil

		body:setLinearVelocity(0, 0)

		x, y = body:getWorldCenter()

		levity.bank:play(Sounds.Spray)
		for i = 1, 24 do
			local angle = math.pi * (.5 + (love.math.random()/2) - (1/4))
			params.x = x
			params.y = y - i*8
			params.angle = angle
			ShmupBullet.create(params, ShmupNPC.ShotLayer)
			coroutine.wait(1/32)
		end
	end
end

function VehicleLavaSpray:beginMove(dt)
	if self.ready == true then
		self:setActive(true)
	end

	if not self.object.body:isActive() then
		return
	end

	if not self.coroutine or coroutine.status(self.coroutine) == "dead" then
		self.coroutine = coroutine.create(VehicleLavaSpray.mainCoroutine)
		local ok, err = coroutine.resume(self.coroutine, self)
		if not ok then print(err) end
	end

	coroutine.updateWait(self.coroutine, dt)
end

function VehicleLavaSpray:beginDraw()
	local flash = self.flash
	if flash then
		love.graphics.setColor(flash, flash, flash, 0xff)
	end
end

function VehicleLavaSpray:endDraw()
	local flash = self.flash
	if flash then
		love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
	end
end

function VehicleLavaSpray:npcKnockedOut(npcid)
	if self.properties.operatorid == npcid then
		self:explode()
	end
end

return VehicleLavaSpray
