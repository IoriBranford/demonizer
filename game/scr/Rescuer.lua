--@module Rescuer

--- Rescuer properties
--@field rescuehumans
--@field rescuedist
--@table Properties

local levity = require "levity"
local Targeting = require "Targeting"
local ShmupBullet = require "ShmupBullet"

local Rescuer = class()
function Rescuer:_init(object)
	self.id = object.id
	self.body = object.body
	self.properties = object.properties
	self.numrescued = 0
end

function Rescuer:canMoveToRescue()
	local pathid = self.properties.pathid
	return self:canRescue() and (not pathid or pathid == self.originalrideid)
end

function Rescuer:canRescue()
	return not levity.scripts:call(self.id, "canBeCaptured")
	and self.numrescued < (self.properties.rescuehumans or 5)
end

function Rescuer:isRescuing()
	return self.numrescued > 0
end

--[[
function Rescuer:createShield(x, y)
	local shield = {
		id = levity.map:newObjectId(),
		x = x,
		y = y,
		type = "HolyShield",
		gid = levity.map:getTileGid("holyshield", "active")
	}

	levity.map.layers["playerteam"]:addObject(shield)
	levity.bank:play("snd/forcefield.wav")
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
	end
end

function Rescuer:reachedDest(destx, desty)
	local pathid = self.properties.pathid
	-- rescuing someone
	if levity.scripts:call(pathid, "isBeingRescuedBy", self.id) then
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
		levity.scripts:send(self.properties.rideid, "removeRider", self.id)
		self.originalrideid = self.properties.rideid
		self.properties.rideid = nil
	end
	self.properties.pathid = id
	self.properties.afterimage = true
	levity.scripts:broadcast("rescueStarted", id, self.id)
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

function Rescuer:rescue(id)
	self.numrescued = self.numrescued + 1
	levity.scripts:send(id, "pullTo", self.id)
	self:returnFromRescue()
	--levity.scripts:broadcast("humanRescued", id, self.id)
end

function Rescuer:finishReturn()
	levity.scripts:send(self.originalrideid, "addRider", self.id)
	self.properties.rideid = self.originalrideid
	self.originalrideid = nil
	self.properties.pathid = nil
end

function Rescuer:stopPulling()
	self.numrescued = self.numrescued - 1
end

function Rescuer:enemyDefeated(enemyid)
	if self.id == enemyid then
		return
	end
	if enemyid == self.originalrideid
	or enemyid == self.properties.pathid
	then
		levity.scripts:send(self.id, "defeat")
	end
end

return Rescuer
