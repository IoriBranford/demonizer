local levity = require "levity"

local Ride = class()
function Ride:_init(object)
	self.object = object
	self.id = object.id
	self.body = object.body
	self.properties = object.properties
	self.riderids = nil

	local tileset = object.tile and levity.map.tilesets[object.tile.tileset]
	if tileset then
		for tid = tileset.firstgid, tileset.firstgid+tileset.tilecount do
			local tile = levity.map.tiles[tid]
			local tileobjects = tile and tile.objectGroup and tile.objectGroup.objects
			local seats = tile.properties.rideseats
			if tileobjects and not seats then
				for _, seat in pairs(tileobjects) do
					if seat.properties.faceangle
					or seat.properties.strafearc
					then
						seats = seats or {}
						tile.properties.rideseats = seats
						seats[seat.name] = seat
					end
				end
			end
		end
	end
end

function Ride:updateRidersVelocity(dt, newvx, newvy)
	if not self.riderids then
		return
	end
	for _, riderid in pairs(self.riderids) do
		local rider = levity.map.objects[riderid]
		if rider and rider.body then
			local riderx, ridery = rider.body:getPosition()
			local ridervx, ridervy = newvx, newvy
			local seat = rider.properties.rideseat
			local seatx, seaty
			local seatorbit = seat == "orbit"
			local tilegid

			if seat then
				seat, tilegid = self:getRideSeat(seat)
			end

			if seat then
				seatx, seaty = levity.map:getTileShapePosition(tilegid, seat)
				seatx, seaty = self.body:getWorldPoint(seatx, seaty)
			elseif seatorbit then
				seatx, seaty = levity.scripts:call(riderid, "getOrbitUnitVector")

				local radius = rider.properties.rideorbitradius or 64
				local radsq = radius*radius
				local distsq = math.hypotsq(
					self.body:getX() - riderx,
					self.body:getY() - ridery)
				if distsq < radsq then
					radius = math.sqrt(distsq) + (60*dt)
				end
				seatx = seatx*radius
				seaty = seaty*radius
				seatx, seaty = self.body:getWorldPoint(seatx, seaty)
			end

			if seatx and seaty and dt > 0 then
				ridervx = ridervx + ((seatx - riderx) / dt)
				ridervy = ridervy + ((seaty - ridery) / dt)
			end
			rider.body:setLinearVelocity(ridervx, ridervy)
			levity.scripts:send(riderid, "updateRidersVelocity", dt, ridervx, ridervy)
		end
	end
end

function Ride:getRideSeat(seatname, dt)
	local tile = self.object.tile
	local tileset = tile and levity.map.tilesets[tile.tileset]
	local gid = tileset.firstgid
	if dt then
		local nextframetile = tile and self.object:getAnimationUpdate(dt)
		gid = gid + nextframetile
		tile = nextframetile and tileset and
			levity.map.tiles[gid]
			or tile
	else
		gid = gid + tile.id
	end
	local seats = tile and tile.properties.rideseats
	if seats then
		return seats[seatname], gid
	end
end

function Ride:addRider(riderid)
	if not self.riderids then
		self.riderids = {}
	end
	self.riderids[riderid] = riderid
	local rider = levity.map.objects[riderid]
	if rider.properties.rideseat == "orbit" then
		levity.scripts:send(riderid, "initOrbit", self.id)
	end
end

function Ride:hasRiders()
	return self.riderids and next(self.riderids) ~= nil
end

function Ride:isRider(riderid)
	return self.riderids and self.riderids[riderid]
end

function Ride:removeRider(riderid)
	if self.riderids then
		self.riderids[riderid] = nil
	end

	if not self:hasRiders() then
		levity.scripts:send(self.id, "allRidersDestroyed")
	end
end

function Ride:releaseRiders()
	self.riderids = nil
end

return Ride
