--@module Rescuer

--- Rescuer properties
--@field rescuehumans
--@field rescuedist
--@table Properties

local levity = require "levity"
local Targeting = require "Targeting"
local ShmupBullet = require "ShmupBullet"

local Rescuer = class(require("Script"))
function Rescuer:_init(object)
	self.id = object.id
	self.body = object.body
	self.properties = object.properties
	self.numrescued = 0
	self.sound = nil
end

function Rescuer:canMoveToRescue()
	local pathid = self.properties.pathid
	return self:canRescue() and (not pathid or pathid == self.originalrideid)
end

function Rescuer:canRescue()
	return not self:call(self.id, "canBeCaptured")
	and self.numrescued < (self.properties.rescuehumans or 5)
end

function Rescuer:isMovingOrReturning()
	return self.properties.pathid
end

function Rescuer:isRescuing()
	return self.numrescued > 0
end

--[[
function Rescuer:createShield(x, y)
	local shield = levity.map:newObject("playerteam")
	shield.x = x
	shield.y = y
	shield.type = "HolyShield"
	shield.gid = levity.map:getTileGid("holyshield", "active")
	levity.bank:play("snd/forcefield.ogg")
	return shield.id
end
]]

function Rescuer:beginMove(dt)
	if self:canMoveToRescue() then
		local nextrescueid = Targeting.queryRectangle("canBeRescued",
			levity.camera.x,
			levity.camera.y,
			levity.camera.x + levity.camera.w,
			levity.camera.y + levity.camera.h)

		if nextrescueid then
			self:startRescue(nextrescueid)
		end
	elseif self:isMovingOrReturning() then
		if self.sound and not self.sound:isPlaying() then
			self.sound:play()
		end
	end
end

function Rescuer:reachedDest(destx, desty)
	local pathid = self.properties.pathid
	-- rescuing someone
	if self:call(pathid, "isBeingRescuedBy", self.id) then
		self:rescue(pathid)
	-- returned to ride
	elseif self.originalrideid and pathid == self.originalrideid then
		self:finishReturn()
	else
		self:returnFromRescue()
	end
end

function Rescuer:startRescue(id)
	if not self.originalrideid then
		self:send(self.properties.rideid, "removeRider", self.id)
		self.originalrideid = self.properties.rideid
		self.properties.rideid = nil
	end
	self.properties.pathid = id
	self.properties.afterimage = true
	if not self.sound then
		local rescueloopsound = self.properties.rescueloopsound
		if rescueloopsound then
			self.sound = levity.bank:play(rescueloopsound, nil, true)
		end
	end
	if self.sound then
		self.sound:play()
	end
	self:broadcast("rescueStarted", id, self.id)
end

function Rescuer:rescueStarted(id, rescuerid)
	if self.id ~= rescuerid and self.properties.pathid == id then
		self:returnFromRescue()
	end
end

function Rescuer:returnFromRescue()
	self.properties.pathid = self.originalrideid
	self.properties.afterimage = false
end

function Rescuer:incProperty(property, sign)
	sign = sign or 1
	local value = self.properties[property]
	local rescueincvalue = self.properties["rescueinc"..property]
	if value and rescueincvalue then
		self.properties[property] = value + sign*rescueincvalue
	end
end

function Rescuer:rescue(id)
	self.numrescued = self.numrescued + 1
	self:send(id, "pullTo", self.id)
	self:returnFromRescue()

	self:incProperty("firetime")
	self:incProperty("firefan")
	self:incProperty("firefanslice")

	local firebullet = self.properties.firebullet
	local rescuefirebullet = self.properties.rescuefirebullet
	if rescuefirebullet and firebullet ~= rescuefirebullet then
		self.properties.firebullet = rescuefirebullet
		self.properties.originalfirebullet = firebullet
	end
	--self:broadcast("humanRescued", id, self.id)
end

function Rescuer:finishReturn()
	self:send(self.originalrideid, "addRider", self.id)
	self.properties.rideid = self.originalrideid
	self.originalrideid = nil
	self.properties.pathid = nil
end

function Rescuer:stopPulling()
	self.numrescued = self.numrescued - 1
	self:incProperty("firetime", -1)
	self:incProperty("firefan", -1)
	self:incProperty("firefanslice", -1)
	local rescuefirebullet = self.properties.rescuefirebullet
	if rescuefirebullet and self.numrescued == 0 then
		self.properties.firebullet = self.properties.originalfirebullet
	end
end

function Rescuer:npcDefeated(npcid)
	if self.id == npcid then
		return
	end
	if npcid == self.originalrideid
	or npcid == self.properties.pathid
	then
		self:send(self.id, "defeat", "npcDefeated")
	end
end

function Rescuer:humanGone(humanid, captorid)
	if self.properties.pathid == humanid then
		self:returnFromRescue()
	end
end
Rescuer.humanConverted = Rescuer.humanGone
Rescuer.humanCaptured = Rescuer.humanGone
Rescuer.humanFled = Rescuer.humanGone
Rescuer.humanDied = Rescuer.humanGone

return Rescuer
