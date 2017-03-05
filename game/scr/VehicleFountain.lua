local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local ShmupVehicle = require("ShmupVehicle")
local ShmupBullet = require("ShmupBullet")

local VehicleFountain
VehicleFountain = class(ShmupVehicle, function(self, object)
	VehicleFountain.BulletParams.gid =
		object.layer.map:getTileGid("humanshots", "water", 0)
	ShmupVehicle.init(self, object)
	self.health = 128
	self.fireco = nil

	local body = self.object.body
	body:setType("static")
	for _, fixture in ipairs(body:getFixtureList()) do
		fixture:setSensor(true)
	end
end)

VehicleFountain.BulletParams = {
	speed = 2*60,
	category = ShmupCollision.Category_NPCShot
}

function VehicleFountain:fireCoroutine()
	local t = self.properties.fireinterval or .5
	local params = VehicleFountain.BulletParams
	local body = self.object.body

	while true do
		coroutine.wait(t)
		local x, y = body:getWorldCenter()
		local angle = body:getAngle()
				+ math.pi*(love.math.random()*.0625 - 1/32)
		local accelx = 0
		local accely = 4*60

		if self.properties.aimatplayer then
			local playerid = self.object.layer.map.properties.playerid
			local player = self.object.layer.map.objects[playerid]
			local playerbody = player.body
			local plx, ply = playerbody:getWorldCenter()
			local pldistx, pldisty = plx - x, ply - y

			-- d = .5*a*t^2 + v*t
			-- d - v*t = .5*a*t^2
			-- 2*(d - v*t) = a*t^2
			-- 2*(d - v*t)/t^2 = a
			-- (2*d - 2*v*t)/t^2 = a
			-- 2*d/t^2 - 2*v/t = a
			-- 2*(d/t - v)/t = a
			local timetoplr = 2
			accelx = 2*(pldistx/timetoplr - params.speed*math.cos(angle))/timetoplr
			accely = 2*(pldisty/timetoplr - params.speed*math.sin(angle))/timetoplr
		end

		params.x = x
		params.y = y
		params.angle = angle
		params.accelx = accelx
		params.accely = accely
		ShmupBullet.create(params, ShmupNPC.ShotLayer)
	end
end

function VehicleFountain:beginMove(dt)
	ShmupVehicle.beginMove(self, dt)
	if not self.object.body:isActive() then
		return
	end

	if not self.fireco or coroutine.status(self.fireco) == "dead" then
		self.fireco = coroutine.create(VehicleFountain.fireCoroutine)
		local ok, err = coroutine.resume(self.fireco, self)
		if not ok then print(err) end
	end

	coroutine.updateWait(self.fireco, dt)
end

function VehicleFountain:npcKnockedOut(npcid)
	if self.properties.operatorid == npcid then
		self:explode()
	end
end

return VehicleFountain
