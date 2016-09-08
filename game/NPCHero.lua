local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = levity.machine:requireScript("ShmupNPC")
local ShmupBullet = levity.machine:requireScript("ShmupBullet")

local NPCHero = class(ShmupNPC, function(self, id)
	ShmupNPC.init(self, id)
	self.fireco = nil
	self.health = 256
end)

NPCHero.BulletParams = {
	speed = 180,
	gid = levity:getTileGid("humanshots", "sword", 0),
	category = ShmupCollision.Category_NPCShot
}

function NPCHero:fireCoroutine()
	local params = NPCHero.BulletParams
	local body = self.object.body

	while true do
		local cx, cy = body:getWorldCenter()
		local playerdx = 0
		local playerdy = 1

		local playerid = levity.map.properties.playerid
		if playerid then
			local player = levity.map.objects[playerid]
			local playercx, playercy = player.body:getWorldCenter()
			playerdx = playercx - cx
			playerdy = playercy - cy
		end

		local spread = math.pi * .25

		for i = 1, 3 do
			local angle = math.atan2(playerdy, playerdx)
			angle = angle - spread*(i - 1)*.5

			for j = 1, i do
				params.x = cx
				params.y = cy
				params.angle = angle

				ShmupBullet.create(params, ShmupNPC.ShotLayer)
				angle = angle + spread
			end

			levity.bank:play("sword.wav")

			coroutine.wait(.125)
		end

		coroutine.wait(.125)
	end
end

function NPCHero:updateFiring(dt)
	if not self.fireco or coroutine.status(self.fireco) == "dead" then
		self.fireco = coroutine.create(NPCHero.fireCoroutine)
		local ok, err = coroutine.resume(self.fireco, self)
		if not ok then print(err) end
	end

	coroutine.updateWait(self.fireco, dt)
end

function NPCHero:beginMove(dt)
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

return NPCHero
