local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local NPCPikeman = require("NPCPikeman")
local NPCSwordsman = require("NPCSwordsman")
local NPCArcher = require("NPCArcher")
local ShmupBullet = require("ShmupBullet")

local NPCHero
NPCHero = class(ShmupNPC, function(self, object)
	NPCHero.BulletParams.gid = 
		object.layer.map:getTileGid("humanshots", "sword", 0)
	ShmupNPC.init(self, object)
	self.fireco = nil
	self.health = 256
end)

NPCHero.JumpGravity = 480
NPCHero.BulletParams = {
	speed = 180,
	category = ShmupCollision.Category_NPCShot
}

function NPCHero:jump(destx, desty, t)
	local body = self.object.body
	local accely = 480
	local x, y = body:getWorldCenter()
	local vx = (destx - x)/t
	local vy = (desty - y)/t - accely*.5*t
	body:setLinearVelocity(vx, vy)
	while t > 0 do
		body:applyForce(0, accely * body:getMass())
		local dt = coroutine.yield()

		t = t - dt
		x, y = body:getWorldCenter()
		vx, vy = body:getLinearVelocity()
	end
	body:setPosition(destx, desty)
	body:setLinearVelocity(0, 0)
end

function NPCHero:fireCoroutine()
	local body = self.object.body

	local cx, cy = body:getWorldCenter()
	self:jump(cx, cy, 1)

	while true do
		for i = 1, 4 do
			cx, cy = body:getWorldCenter()
			local playerdx = 0
			local playerdy = 1

			local playerid = self.object.layer.map.properties.playerid
			if playerid then
				local player = self.object.layer.map.objects[playerid]
				local playercx, playercy = player.body:getWorldCenter()
				playerdx = playercx - cx
				playerdy = playercy - cy
			end

			local spread = math.pi * .25

			local angle = math.atan2(playerdy, playerdx)
			angle = angle - spread*(i - 1)*.5

			for j = 1, i do
				local params
				if j == (i+1)*.5 then
					params = NPCArcher.BulletParams
				else
					params = NPCSwordsman.BulletParams
				end
				params.x = cx
				params.y = cy
				params.angle = angle

				ShmupBullet.create(params, ShmupNPC.ShotLayer)
				angle = angle + spread
			end

			levity.bank:play("snd/sword.wav")

			coroutine.wait(.125)
		end

		self:jump(love.math.random(112, 176),
				love.math.random(104, 192),
				.25)
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
