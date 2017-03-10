
local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local ShmupBullet = require("ShmupBullet")

local NPCFireMage
NPCFireMage = class(ShmupNPC, function(self, object)
	NPCFireMage.BulletParams.gid =
		levity.map:getTileGid("humanshots", "fire", 0)

	ShmupNPC.init(self, object)
	self.health = 128

	self.fireco = nil
	self.leftbullets = 5
	self.rightbullets = 5

	if levity.map.properties.delayinitobjects == true then
		levity.map:broadcast("ascentStarted")
	end
end)

NPCFireMage.BulletInterval = 0.125
NPCFireMage.BulletParams = {
	category = ShmupCollision.Category_NPCShot
}

function NPCFireMage:activate()
	ShmupNPC.activate(self)
	levity.map:broadcast("ascentStarted")
end

function NPCFireMage:fireCoroutine()
	local params = NPCFireMage.BulletParams
	local body = self.object.body

	while true do
		coroutine.wait(3/4)

		local x, y = body:getWorldCenter()

		local playerid = levity.map.properties.playerid
		local player = levity.map.objects[playerid]
		local plx, ply = player.body:getWorldCenter()
		local pldx = plx - x
		local pldy = ply - y
		local angle = math.atan2(pldy, pldx) - math.pi/6

		params.x = x
		params.y = y
		params.accelx = 0
		params.accely = 0
		params.angle = angle
		params.speed = 60

		for i = 1, 4 do
			ShmupBullet.create(params, levity.map.layers["npcshots"])
			params.angle = params.angle + math.pi/3/3
		end

		-- p - e = (a*t^2)/2 + v*t
		--
		-- (p - e)/t = a*t/2 + v
		-- (p - e)/t - a*t/2 = v
		--
		local t = .5
		for i = 1, 8 do
			params.accelx = 0
			params.accely = 4*60

			x, y = body:getWorldCenter()
			plx, ply = player.body:getWorldCenter()
			pldx = plx - x
			pldy = ply - y
			local vx = pldx/t - t*params.accelx*.5
			local vy = pldy/t - t*params.accely*.5
			params.angle = math.atan2(vy, vx)
			params.speed = math.hypot(vx, vy)

			ShmupBullet.create(params, levity.map.layers["npcshots"])
			coroutine.wait(1/32)
		end
	end
end

function NPCFireMage:updateFiring(dt)
	if not self.fireco or coroutine.status(self.fireco) == "dead" then
		self.fireco = coroutine.create(NPCFireMage.fireCoroutine)
		local ok, err = coroutine.resume(self.fireco, self)
		if not ok then print(err) end
	end

	coroutine.updateWait(self.fireco, dt)
end

function NPCFireMage:beginMove(dt)
	ShmupNPC.beginMove(self, dt)
	if not self.object.body:isActive() then
		return
	end
	if self.health < 1 then
		return
	end

	if self.oncamera then
		self:updateFiring(dt)
	end
end

function NPCFireMage:vehicleDestroyed(vehicleid)
	if vehicleid == self.properties.firepointid_tl
	or vehicleid == self.properties.firepointid_cl
	or vehicleid == self.properties.firepointid_c
	or vehicleid == self.properties.firepointid_bl then
		self.leftbullets = self.leftbullets + 2
	end

	if vehicleid == self.properties.firepointid_tr
	or vehicleid == self.properties.firepointid_cr
	or vehicleid == self.properties.firepointid_c
	or vehicleid == self.properties.firepointid_br then
		self.rightbullets = self.rightbullets + 2
	end
end

return NPCFireMage
