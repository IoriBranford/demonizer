local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")

local NPCMage = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.health = 512

	self.fireco = nil
end)

NPCMage.BulletInterval = 0.125
NPCMage.BulletParams = {
	speed = 2*60,
	gid = levity:getTileGid("humanshots", "magic", 0),
	category = ShmupCollision.Category_NPCShot
}

function NPCMage:fireCoroutine()
	local firepoints = {
		tl = levity.map.objects[self.properties.firepointid_tl],
		tr = levity.map.objects[self.properties.firepointid_tr],
		bl = levity.map.objects[self.properties.firepointid_bl],
		br = levity.map.objects[self.properties.firepointid_br],
		cl = levity.map.objects[self.properties.firepointid_cl],
		c = levity.map.objects[self.properties.firepointid_c],
		cr = levity.map.objects[self.properties.firepointid_cr]
	}

	for k, object in pairs(firepoints) do
		firepoints[k] = {
			x = object.x + object.width * .5,
			y = object.y + object.height * .5
		}
	end

	local centerfirepoints = {
		cl = firepoints.cl,
		c = firepoints.c,
		cr = firepoints.cr
	}

	local cornerfirepoints = {
		tl = firepoints.tl,
		tr = firepoints.tr,
		bl = firepoints.bl,
		br = firepoints.br,
	}
	
	local t = .5
	local playerid = levity.map.properties.playerid
	local player = levity.map.objects[playerid]
	local params = NPCMage.BulletParams

	while true do
		coroutine.wait(t)
		local playercx, playercy = player.body:getWorldCenter()
		for _, point in pairs(cornerfirepoints) do
			local playerdx = playercx - point.x
			local playerdy = playercy - point.y

			params.x, params.y = point.x, point.y
			params.angle = math.atan2(playerdy, playerdx)
			ShmupBullet.create(params, ShmupNPC.ShotLayer)
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

return NPCMage
