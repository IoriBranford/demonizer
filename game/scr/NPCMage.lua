local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local ShmupBullet = require("ShmupBullet")

local NPCMage
NPCMage = class(ShmupNPC, function(self, object)
	NPCMage.BulletParams.gid = 
		object.layer.map:getTileGid("humanshots", "magic", 0)
	ShmupNPC.init(self, object)
	self.health = 128

	self.fireco = nil
	self.leftbullets = 1
	self.rightbullets = 1
end)

NPCMage.BulletInterval = 0.125
NPCMage.BulletParams = {
	speed = 4*60,
	category = ShmupCollision.Category_NPCShot
}

function NPCMage:fireCoroutine()
	local params = NPCMage.BulletParams
	local body = self.object.body

	while true do
		coroutine.wait(3/8)

		local x, y = body:getWorldCenter()

		local playerid = self.object.layer.map.properties.playerid
		local player = self.object.layer.map.objects[playerid]
		local plx, ply = player.body:getWorldCenter()
		local pldx = plx - x
		local pldy = ply - y

		params.x, params.y = x, y

		local langle = math.pi
		local laccelx = 2*(pldx - params.speed*math.cos(langle))
		local laccely = 2*(pldy - params.speed*math.sin(langle))

		local rangle = 0
		local raccelx = 2*(pldx - params.speed*math.cos(rangle))
		local raccely = 2*(pldy - params.speed*math.sin(rangle))

		for i = 1, 5 do
			if i <= self.leftbullets then
				params.angle = langle
				params.accelx = laccelx
				params.accely = laccely
				ShmupBullet.create(params, ShmupNPC.ShotLayer)
				langle = langle + math.pi*.0625
			end
			if i <= self.rightbullets then
				params.angle = rangle
				params.accelx = raccelx
				params.accely = raccely
				ShmupBullet.create(params, ShmupNPC.ShotLayer)
				rangle = rangle - math.pi*.0625
			end
			coroutine.wait(1/8)
		end
	end
end

function NPCMage:updateFiring(dt)
	if not self.fireco or coroutine.status(self.fireco) == "dead" then
		self.fireco = coroutine.create(NPCMage.fireCoroutine)
		local ok, err = coroutine.resume(self.fireco, self)
		if not ok then print(err) end
	end

	coroutine.updateWait(self.fireco, dt)
end

function NPCMage:beginMove(dt)
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

function NPCMage:vehicleDestroyed(vehicleid)
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

return NPCMage
