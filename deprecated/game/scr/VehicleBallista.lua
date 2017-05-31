local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local ShmupVehicle = require("ShmupVehicle")
local ShmupBullet = require("ShmupBullet")

local VehicleBallista
VehicleBallista = class(ShmupVehicle, function(self, object)
	ShmupVehicle.init(self, object)
	self.health = 64

	local row = levity.map:getTileColumnName(self.object.gid)
	local angle = string.match(row, "angle(%d+)")
	self.angle = math.rad(tonumber(angle))
end)

VehicleBallista.BulletParams = {
	tileset = "humanshots",
	tileid = "ballista",
	speed = 8*60,
	category = ShmupCollision.Category_NPCShot
}

function VehicleBallista:loopedAnimation()
	local cx, cy = self.object.body:getWorldCenter()

	local params = VehicleBallista.BulletParams
	local x = cx
	local y = cy
	local angle = self.angle

	ShmupBullet.create(params, x, y, angle, "npcshots")

	levity.bank:play("snd/ballista.wav")
end

function VehicleBallista:beginMove(dt)
	ShmupVehicle.beginMove(self, dt)
	if not self.object.body:isActive() then
		return
	end
	if self.health < 1 then
		return
	end

	if self.oncamera then
		self.object.anitimescale = 1
	else
		self.object.anitimescale = 0
	end
end

levity.bank:load("snd/ballista.wav")

return VehicleBallista
