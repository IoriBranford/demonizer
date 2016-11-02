local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupVehicle = levity.machine:requireScript("ShmupVehicle")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")

local VehicleLavaSpray = class(ShmupVehicle, function(self, id)
	ShmupVehicle.init(self, id)
	self.health = 128
	self.coroutine = nil

	local body = self.object.body
	for _, fixture in ipairs(body:getFixtureList()) do
		fixture:setSensor(true)
	end
end)

VehicleLavaSpray.BulletParams = {
	speed = 60,
	gid = levity:getTileGid("humanshots", "fire", 0),
	category = ShmupCollision.Category_NPCShot
}

local Sounds = {
	Spray = "dragonfire.wav"
}
levity.bank:load(Sounds)

function VehicleLavaSpray:mainCoroutine()
	local params = VehicleLavaSpray.BulletParams
	local body = self.object.body

	while true do
		coroutine.wait(6)

		local x, y = body:getWorldCenter()
		local accelx = 0
		local accely = 4*60

		levity.bank:play(Sounds.Spray)
		for i = 1, 24 do
			local angle = math.pi * (.5 + (love.math.random()/2) - (1/4))
			params.x = x
			params.y = y - i*8
			params.angle = angle
			params.accelx = accelx
			params.accely = accely
			ShmupBullet.create(params, ShmupNPC.ShotLayer)
			coroutine.wait(1/16)
		end
	end
end

function VehicleLavaSpray:beginMove(dt)
	ShmupVehicle.beginMove(self, dt)
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

function VehicleLavaSpray:npcKnockedOut(npcid)
	if self.properties.operatorid == npcid then
		self:explode()
	end
end

return VehicleLavaSpray
