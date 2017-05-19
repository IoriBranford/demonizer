local levity = require "levity"
local ShmupBullet = require "ShmupBullet"
local ShmupCollision = require "ShmupCollision"

local Shooter
Shooter = class(function(self, object)
	self.object = object
	self.properties = object.properties

	self.timer = self.properties.firetime or 2

	local arc = self.properties.firearc or 90
	self.mindot = math.cos(math.rad(arc) * .5)

	local bullet = levity.map.objecttypes[self.properties.firebullet]
	if bullet then
		if type(bullet.category) ~= "number" then
			bullet.category = ShmupCollision["Category_"..bullet.category]
		end
		if bullet.sound then
			levity.bank:load(bullet.sound)
		end
	end
end)

function Shooter:beginMove(dt)
	local oncamera = levity.scripts:call(self.object.id, "isOnCamera")
	local faceangle = levity.scripts:call(self.object.id, "getFaceAngle")
	local bullet = levity.map.objecttypes[self.properties.firebullet]

	if oncamera == false or not faceangle or not bullet then
		self.timer = self.properties.firetime
		return
	end

	local targetid = levity.map.properties.playerid
	local target = levity.map.objects[targetid]
	local tx, ty = target.body:getWorldCenter()
	local cx, cy = self.object.body:getWorldCenter()
	local dx, dy = tx - cx, ty - cy

	local dot = math.dot(dx, dy, math.cos(faceangle), math.sin(faceangle))

	if dot >= self.mindot * math.hypot(dx, dy) then
		if self.timer < dt then
			self.timer = ShmupBullet.fireOverTime(bullet, cx, cy,
				math.atan2(dy, dx), "npcshots", self.timer,
				self.properties.firetime)
		end
	end
	self.timer = math.max(0, self.timer - dt)
end

return Shooter
