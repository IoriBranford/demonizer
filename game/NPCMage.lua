local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")

local NPCMage = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.health = 128

	self.fireco = nil
	self.leftbullets = 1
	self.rightbullets = 1
end)

NPCMage.BulletInterval = 0.125
NPCMage.BulletParams = {
	speed = 4*60,
	gid = levity:getTileGid("humanshots", "magic", 0),
	category = ShmupCollision.Category_NPCShot
}

function NPCMage:fireCoroutine()
	local t = 1
	local params = NPCMage.BulletParams
	local body = self.object.body

	while true do
		coroutine.wait(t)

		local x, y = body:getWorldCenter()

		local playerid = levity.map.properties.playerid
		local player = levity.map.objects[playerid]
		local plx, ply = player.body:getWorldCenter()
		local pldx = plx - x
		local pldy = ply - y

		params.x, params.y = x, y

		params.angle = math.pi
		params.accelx = 2*(pldx - params.speed*math.cos(params.angle))
		params.accely = 2*(pldy - params.speed*math.sin(params.angle))
		--params.angle = params.angle - math.pi*.125

		for i = 1, self.leftbullets do
			ShmupBullet.create(params, ShmupNPC.ShotLayer)
			params.angle = params.angle + math.pi*.0625
		end

		params.angle = 0
		params.accelx = 2*(pldx - params.speed*math.cos(params.angle))
		params.accely = 2*(pldy - params.speed*math.sin(params.angle))
		--params.angle = params.angle + math.pi*.125

		for i = 1, self.rightbullets do
			ShmupBullet.create(params, ShmupNPC.ShotLayer)
			params.angle = params.angle - math.pi*.0625
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
	if not self.object.visible then
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
