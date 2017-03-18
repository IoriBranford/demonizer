local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local ShmupBullet = require("ShmupBullet")

--- Foot soldiers fighting in groups to overwhelm with numbers
local NPCPikeman
NPCPikeman = class(ShmupNPC, function(self, object)
	NPCPikeman.BulletParams.gid =
		levity.map:getTileGid("humanshots", "pike", 0)
	ShmupNPC.init(self, object)
	self.firetimer = .5--love.math.random()
	self.health = 8
end)

NPCPikeman.BulletInterval = 1
NPCPikeman.BulletParams = {
	speed = 120,
	category = ShmupCollision.Category_NPCShot
}

function NPCPikeman:updateFiring(dt)
	local aimer = self.object

	local cx, cy = self.object.body:getWorldCenter()
	local playerdx = 0
	local playerdy = 1

	local playerid = levity.map.properties.playerid
	if playerid then
		local player = levity.map.objects[playerid]
		local playercx, playercy = player.body:getWorldCenter()

		local leader
		local leaderid = self.properties.leaderid
		if leaderid then
			leader = levity.map.objects[leaderid]
		end

		if leader then
			local leadercx, leadercy = leader.body:getWorldCenter()
			playerdx = playercx - leadercx
			playerdy = playercy - leadercy
		else
			playerdx = playercx - cx
			playerdy = playercy - cy
		end
	end

	if self.firetimer <= 0 then
		local params = NPCPikeman.BulletParams
		params.x = cx
		params.y = cy
		params.angle = math.atan2(playerdy, playerdx)

		self.firetimer = ShmupBullet.fireOverTime(params,
				levity.map.layers["npcshots"], self.firetimer,
				NPCPikeman.BulletInterval)

		levity.bank:play("snd/pike.wav")
	end
	self.firetimer = self.firetimer - dt
end

function NPCPikeman:fireTimer()
	return self.firetimer
end

function NPCPikeman:beginMove(dt)
	ShmupNPC.beginMove(self, dt)
	if not self.object.body:isActive() then
		return
	end

	if self.health < 1 then
		return
	end

	local leader = self.properties.leaderid
	if leader then
		leader = levity.map.objects[leader]
	end
	if leader then
		self.object.body:setLinearVelocity(leader.body:getLinearVelocity())
	end

	if (leader and levity.map.scripts:call(leader.id, "isOnCamera"))
	or (not leader and self.oncamera) then
		self:updateFiring(dt)
	end
end

levity.bank:load("snd/pike.wav")

return NPCPikeman
