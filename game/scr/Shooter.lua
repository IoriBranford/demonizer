--- Shooting functionality.
-- Shoots bullets at regular time intervals.
-- The time interval can be either a set time or the animation time.
-- Enemies can have restrictions on their shooting;
-- to ramp up challenge properly, put fewer restrictions on later enemies.
--@module Shooter

--- Shooter properties.
--@field firetargetid or "player" for the player character
--@field firearc Must be facing target within this arc to fire
--@field firebullet Name of bullet type
--@field firetime Seconds between shots or "animation" for the time of the current animation
--@field firefan Number of bullets to fire in a fan
--@field firefanslice Arc between two bullets in the fan
--@table Properties

local levity = require "levity"
local ShmupBullet = require "ShmupBullet"
local ShmupCollision = require "ShmupCollision"

local Shooter = class()
function Shooter:_init(object)
	self.object = object
	self.properties = object.properties

	local targetid = self.properties.firetargetid

	if targetid == "player" then
		self.properties.firetargetid = levity.map.properties.playerid
	else
		self.properties.firetargetid = tonumber(targetid)
	end

	self.timer = self.properties.firetime or 2

	local bullet = levity.map.objecttypes[self.properties.firebullet]
	if bullet then
		if type(bullet.category) ~= "number" then
			bullet.category = ShmupCollision["Category_"..bullet.category]
		end
		if bullet.sound then
			levity.bank:load(bullet.sound)
		end
	end
end

function Shooter:fire()
	local bullet = levity.map.objecttypes[self.properties.firebullet]
	local hascover = levity.scripts:call(self.object.id, "hasCover")
	local faceangle = levity.scripts:call(self.object.id, "getFaceAngle")
	if hascover or not bullet or not faceangle then
		return
	end

	local oncamera = levity.scripts:call(self.object.id, "isOnCamera")
	if not oncamera then
		self.timer = self.properties.firetime
		return
	end

	local cx, cy = self.object.body:getWorldCenter()
	local fireangle
	local targetid = self.properties.firetargetid
	local facingtarget = true

	if targetid and targetid > 0 then
		local target = levity.map.objects[targetid]
		local tx, ty = target.body:getWorldCenter()
		local dx, dy = tx - cx, ty - cy
		fireangle = math.atan2(dy, dx)

		local arc = math.rad(self.properties.firearc or 90)
		local mindot = math.cos(arc)

		facingtarget = mindot * math.hypot(dx, dy)
			<= math.dot(dx, dy, math.cos(faceangle), math.sin(faceangle))
	else
		fireangle = faceangle
	end

	if facingtarget then
		local fansize = math.max(1,self.properties.firefan or 1)
		local fanslice = math.rad(self.properties.firefanslice or 0)
		fireangle = fireangle - fanslice*(fansize-1)/2

		if type(self.timer) == "number" then
			local timer
			for i = 1, fansize do
				timer = ShmupBullet.fireOverTime(bullet, cx, cy,
					fireangle, "npcshots", self.timer,
					self.properties.firetime)
				fireangle = fireangle + fanslice
			end
			self.timer = timer
		else
			for i = 1, fansize do
				ShmupBullet.create(bullet, cx, cy, fireangle, "npcshots")
				fireangle = fireangle + fanslice
			end
		end
	end
end

function Shooter:loopedAnimation()
	if self.properties.firetime == "animation" then
		self:fire()
	end
end

function Shooter:endMove(dt)
	if type(self.timer) == "number" then
		if self.timer <= dt then
			self:fire()
		end
		self.timer = math.max(0, self.timer - dt)
	end
end

return Shooter
