local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")
local ShmupBullet = require("ShmupBullet")

--- Foot soldiers fighting in groups to overwhelm with numbers
local NPCPikeman
NPCPikeman = class(ShmupNPC, function(self, object)
	ShmupNPC.init(self, object)
	self.firetimer = .5--love.math.random()
	self.health = 8
	self.properties.pathspeed = self.properties.pathspeed or 90
	self.properties.killpoints = 150
	self.faceangle = 0
end)

NPCPikeman.BulletMinDot = math.cos(math.pi/4)
-- dot(facedir, firedir) >= this value

NPCPikeman.BulletInterval = 1
NPCPikeman.BulletParams = {
	tileset = "humanshots",
	tileid = "pike",
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

		local volleyleader
		local volleyleaderid = self.properties.volleyleaderid
		if volleyleaderid then
			volleyleader = levity.map.objects[volleyleaderid]
		end

		if volleyleader then
			local volleyleadercx, volleyleadercy =
				volleyleader.body:getWorldCenter()

			playerdx = playercx - volleyleadercx
			playerdy = playercy - volleyleadercy
		else
			playerdx = playercx - cx
			playerdy = playercy - cy
		end
	end

	local dot = math.dot(playerdx, playerdy, math.cos(self.faceangle),
					math.sin(self.faceangle))

	if self.firetimer < dt
	and dot >= NPCPikeman.BulletMinDot * math.hypot(playerdx, playerdy) then
		local params = NPCPikeman.BulletParams
		local x = cx
		local y = cy
		local angle = math.atan2(playerdy, playerdx)

		self.firetimer = ShmupBullet.fireOverTime(params, x, y, angle,
			"npcshots", self.firetimer, NPCPikeman.BulletInterval)

		levity.bank:play("snd/pike.wav")
	end
	self.firetimer = math.max(0, self.firetimer - dt)
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

	local pathid = self.properties.pathid
	local vx, vy = self.object.body:getLinearVelocity()
	if pathid and (vx ~= 0 or vy ~= 0) then
		self.faceangle = self:faceAngle(math.atan2(vy, vx))
	else
		local playerid = levity.map.properties.playerid
		local player = levity.map.objects[playerid]
		local playercx, playercy = player.body:getWorldCenter()
		local cx, cy = self.object.body:getWorldCenter()
		local playerdx, playerdy = playercx - cx, playercy - cy
		self.faceangle = self:faceAngle(math.atan2(playerdy, playerdx))
	end

	local volleyleader = self.properties.volleyleaderid
	if volleyleader then
		volleyleader = levity.map.objects[volleyleader]
	end

	if (volleyleader or self.oncamera) then
		self:updateFiring(dt)
	end
end

levity.bank:load("snd/pike.wav")

return NPCPikeman
