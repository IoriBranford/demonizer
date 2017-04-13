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
	self.health = 24
	self.properties.killpoints = 500
	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setSensor(false)
	end
	self.fleeing = false
end)

NPCSwordsman.Speed = 180
NPCSwordsman.BulletInterval = .5
NPCSwordsman.BulletParams = {
	speed = 240,
	lifetime = .5,
	category = ShmupCollision.Category_NPCShot
}
NPCSwordsman.FireDist = NPCSwordsman.BulletParams.speed
			* NPCSwordsman.BulletParams.lifetime

function NPCSwordsman:fireCoroutine()
	local params = NPCSwordsman.BulletParams
	local body = self.object.body

	while true do
		coroutine.wait(NPCSwordsman.BulletInterval)--*5/8)

		--for i = 1, 3 do
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

		--	coroutine.wait(NPCSwordsman.BulletInterval / 8)
		--end
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

	local x, y = self.object.body:getWorldCenter()
	local destx, desty = x, y
	if self.fleeing then
		self.object.body:setLinearVelocity(0, NPCSwordsman.Speed)
		if not self.oncamera then
			levity.map:discardObject(self.object.id)
		end
		return
	end

	local targetx, targety = math.huge, math.huge
	local distx, disty = 0, 0
	local vx, vy = 0, 0

	local player = levity.map.scripts:call(levity.map.name, "getPlayer")
	if player then
		local playercx, playercy = player.body:getWorldCenter()
		targetx, targety = playercx, playercy

		playercy = playercy - NPCSwordsman.FireDist * .375
		destx, desty = playercx, playercy
		distx = (destx - x)
		disty = (desty - y)
		local dist = math.hypot(distx, disty)

		local dirx, diry = distx/dist, disty/dist
		destx = playercx - dirx*NPCSwordsman.FireDist*.375
		desty = playercy - diry*NPCSwordsman.FireDist*.375
		distx = (destx - x)
		disty = (desty - y)
		dist = math.hypot(distx, disty)

		local speed = math.min(NPCSwordsman.Speed, 2*dist)

		dirx, diry = distx/dist, disty/dist
		vx = dirx*speed
		vy = diry*speed
	end

	if not self.properties.pathid then
		self.object.body:setLinearVelocity(vx, vy)
	end

	if self.oncamera then
		local targetdist = math.hypot(targetx - x, targety - y)
		if targetdist <= NPCSwordsman.FireDist then
			self:updateFiring(dt)
		end
	end
end

function NPCSwordsman:staysAfterTriggerEnd()
	return self.properties.pathid == nil
end

function NPCSwordsman:endTrigger()
	self.fleeing = true
end

levity.bank:load("snd/sword.wav")

return NPCSwordsman
