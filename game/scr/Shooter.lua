--- @table Shooter properties
--@field firearc May fire only within this arc
--@field firebullet Name of bullet type
--@field firetime Seconds between shots
--@field firefan Number of bullets to fire in a fan
--@field firefanslice Arc between two bullets in the fan

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
	local hascover = levity.scripts:call(self.object.id, "hasCover")

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

	if not hascover and dot >= self.mindot * math.hypot(dx, dy) then
		if self.timer < dt then
			local fansize = math.max(1,self.properties.firefan or 1)
			local fanslice = math.rad(self.properties.firefanslice or 0)
			local angle = math.atan2(dy, dx)
			angle = angle - fanslice*(fansize-1)/2

			local timer
			for i = 1, fansize do
				timer = ShmupBullet.fireOverTime(bullet, cx, cy,
					angle, "npcshots", self.timer,
					self.properties.firetime)
				angle = angle + fanslice
			end
			self.timer = timer
		end
	end
	self.timer = math.max(0, self.timer - dt)
end

return Shooter
