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

	self.timer = 0

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
		self.timer = 0
		return
	end

	local cx, cy = self.object.body:getWorldCenter()
	local fireangle
	local targetid = self.properties.firetargetid
	if targetid == "player" then
		targetid = levity.map.properties.playerid
	else
		targetid = tonumber(targetid)
	end
	local facingtarget = true

	if targetid and targetid > 0 then
		local target = levity.map.objects[targetid]
		local tx, ty = target.body:getWorldCenter()
		local dx, dy = tx - cx, ty - cy
		local dist = math.hypot(dx, dy)

		local arc = math.rad(self.properties.firearc or 90)
		local mindot = math.cos(arc)

		facingtarget = mindot * dist
			<= math.dot(dx, dy, math.cos(faceangle), math.sin(faceangle))

		fireangle = math.atan2(dy, dx)
		--if facingtarget then
		--	local ax, ay = bullet.accelx, bullet.accely
		--	if ax and ay then
		--		local speed = bullet.speed
		--		local t = dist/speed
		--		local vx0 = (dx/t) - (t*ax*.5)
		--		local vy0 = (dy/t) - (t*ay*.5)
		--		vx0 = vx0/speed
		--		vy0 = vy0/speed
		--		fireangle = math.atan2(vy0, vx0)
		--		print(vx0, vy0, math.hypot(vx0, vy0))
		--	else
		--		fireangle = math.atan2(dy, dx)
		--	end
		--end
	else
		fireangle = faceangle
	end

	if facingtarget then
		local fansize = math.max(1,self.properties.firefan or 1)
		local fanslice = math.rad(self.properties.firefanslice or 0)
		fireangle = fireangle - fanslice*(fansize-1)/2

		if type(self.properties.firetime) == "number" then
			local timer
			for i = 1, fansize do
				timer = ShmupBullet.fireOverTime(bullet, cx, cy,
					fireangle, "npcshots",
					self.properties.firetime - self.timer,
					self.properties.firetime)
				fireangle = fireangle + fanslice
			end
			self.timer = timer - self.properties.firetime
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
	local firetime = self.properties.firetime
	if type(firetime) == "number" then
		if firetime - self.timer <= dt then
			self:fire()
		end
		self.timer = math.min(firetime, self.timer + dt)
	else
		self.timer = 0
	end
end

return Shooter
