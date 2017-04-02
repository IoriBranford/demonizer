local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local ShmupBullet = require("ShmupBullet")

local NPCSwordsman
NPCSwordsman = class(ShmupNPC, function(self, object)
	NPCSwordsman.BulletParams.gid =
		levity.map:getTileGid("humanshots", "sword", 0)
	ShmupNPC.init(self, object)
	self.fireco = nil
	self.health = 16
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(false)
	end
end)

NPCSwordsman.BulletInterval = 1
NPCSwordsman.BulletParams = {
	speed = 240,
	lifetime = .5,
	category = ShmupCollision.Category_NPCShot
}

function NPCSwordsman:fireCoroutine()
	local params = NPCSwordsman.BulletParams
	local body = self.object.body

	while true do
		coroutine.wait(NPCSwordsman.BulletInterval*5/8)

		for i = 1, 3 do
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

			params.x = cx
			params.y = cy
			params.angle = math.atan2(playerdy, playerdx)

			ShmupBullet.create(params, levity.map.layers["npcshots"])
			levity.bank:play("snd/sword.wav")

			coroutine.wait(NPCSwordsman.BulletInterval / 8)
		end
	end
end

function NPCSwordsman:updateFiring(dt)
	if not self.fireco or coroutine.status(self.fireco) == "dead" then
		self.fireco = coroutine.create(NPCSwordsman.fireCoroutine)
		local ok, err = coroutine.resume(self.fireco, self)
		if not ok then print(err) end
	end

	coroutine.updateWait(self.fireco, dt)
end

function NPCSwordsman:beginMove(dt)
	ShmupNPC.beginMove(self, dt)
	if not self.object.body:isActive() then
		return
	end
	if self.health < 1 then
		return
	end

	local x, y = self.object.body:getPosition()

	local player = levity.map.scripts:call(levity.map.name, "getPlayer")
	local playerx, playery
	if player then
		playerx, playery = player.body:getWorldCenter()
	end

	if not self.properties.pathid then
		--local massdt = self.object.body:getMass()*dt*64

		self.object.body:setLinearVelocity((playerx - x), (playery - y))
	end

	if self.oncamera then
		local dist = math.hypot(playerx - x, playery - y)
		if dist <= NPCSwordsman.BulletParams.speed
			* NPCSwordsman.BulletParams.lifetime
		then
			self:updateFiring(dt)
		end
	end
end

levity.bank:load("snd/sword.wav")

return NPCSwordsman
