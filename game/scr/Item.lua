--@module Item

--- Item properties
--@field itemtype "score" or "wingman" or "extend"
--@field rideid Other moving object to ride on
--@field rideshield Does ride block capture?
--@field launched into the air (if not, then stationary)
--@field velx defaults to 0
--@field vely defaults to Item.LaunchVelY
--@field capturesound
--@field lostsound
--@table Properties

local levity = require "levity"
local ShmupBullet = require "ShmupBullet"
local ShmupCollision = require "ShmupCollision"
local ShmupWingman = require "ShmupWingman"
local NPC = require "NPC"

local NumItems = 0

local Item = class(require("Script"))
function Item:_init(object)
	self.object = object
	self.id = object.id
	self.body = object.body
	self.body:setFixedRotation(true)
	self.properties = object.properties

	local friendly = self.properties.friendly
	local category = friendly and ShmupCollision.Category_PlayerTeam
		or ShmupCollision.Category_EnemyTeam
	local mask = friendly and Item.FriendlyMask or Item.Mask

	local pathid = self.properties.pathid

	for _, fixture in ipairs(self.object.body:getFixtures()) do
		fixture:setCategory(category)
		fixture:setMask(mask)
		fixture:setSensor(pathid ~= "player")
	end

	self.discarded = false
	self.shields = 0

	if self.properties.launched then
		self:launch()
	else
		self.body:setLinearVelocity(0, 0)
		self.accely = 0
	end

	if self.properties.health and self.properties.health >= 1 then
		self.health = levity.scripts:newScript(self.id, "Health", self.object)
		self.facing = levity.scripts:newScript(self.id, "Facing", self.object)
	end

	local pathfinder = self.properties.pathfinder
	if pathid and pathfinder then
		self.mover = levity.scripts:newScript(self.id, "Mover",
							self.object)
	end

	local emotetileset = self.properties.emotetileset
	local emotetileid = self.properties.emotetileid
	if emotetileset or emotetileid then
		self.emote = levity.scripts:newScript(self.id, "Emote", object)
	end

	self:pullTo(self.properties.pulledbyid)

	NumItems = NumItems + 1
end

Item.Gravity = 180
Item.LaunchVelY = -180
Item.CapturePullSpeed = 4*60
Item.CapturePullDistSq = 30*30
Item.EnhancedCapturePullDistSq = 120*120
Item.MaxReleasedCaptives = 10
Item.ReleaseLaunchVelY = -240

Item.Mask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_EnemyShot,
	ShmupCollision.Category_EnemyCover,
	ShmupCollision.Category_EnemyBounds,
	ShmupCollision.Category_BonusMaze
}

Item.FriendlyMask = {
	ShmupCollision.Category_CameraEdge,
	ShmupCollision.Category_PlayerShot,
	ShmupCollision.Category_EnemyTeam,
	ShmupCollision.Category_EnemyCover,
	ShmupCollision.Category_BonusMaze
}

function Item.getNumItems()
	return NumItems
end

function Item:initQuery()
	local rideid = self.properties.rideid
	if rideid then
		self:send(rideid, "addRider", self.id)
	end
	local itemtype = self.properties.itemtype
	if itemtype == "score" or itemtype == "wingman" then
		self:broadcast("humanKnockedOut", self.id)
	end
end

function Item:canBeCaptured()
	return not self.discarded
		and self.shields < 1
		and not (self.properties.rideid and self.properties.rideshield)
		and not self:isPulledByRescuer()
end

function Item:canBeBombMeleeTarget()
	return self:canBeCaptured()
end

function Item:beginMove(dt)
	local playerid = levity.map.properties.playerid
	local player = levity.map.objects[playerid]

	local cx, cy = self.body:getWorldCenter()
	local playercx, playercy = player.body:getWorldCenter()
	local playerdx = playercx - cx
	local playerdy = playercy - cy
	local playerdsq = math.hypotsq(playerdx, playerdy)

	if self.pulledbyid then
		if self:call(self.pulledbyid, "isKilled") then
			self:cancelPull()
		end
	else
		local capturepulldistsq

		if self:call("status", "isPlayerPullingAllItems") then
			capturepulldistsq = math.huge
		else
			capturepulldistsq = Item.CapturePullDistSq
		end

		if self:canBeCaptured()
		and playerdsq < capturepulldistsq
		and not self:call(playerid, "isKilled") then
			self:pullTo(levity.map.properties.playerid)
		end
	end

	local puller = levity.map.objects[self.pulledbyid]
	if puller then
		local pullerdx = playerdx
		local pullerdy = playerdy
		local dist
		if self.pulledbyid == playerid then
			dist = math.sqrt(playerdsq)
		else
			local pullercx, pullercy = puller.body:getWorldCenter()
			pullerdx = pullercx - cx
			pullerdy = pullercy - cy
			dist = math.hypot(pullerdx, pullerdy)
		end
		local pull = (dist == 0 and 0) or Item.CapturePullSpeed / dist
		self.body:setLinearVelocity(pullerdx * pull, pullerdy * pull)
	else
		local vx, vy = self.body:getLinearVelocity()
		self.body:applyForce(-vx/64, self.body:getMass()*self.accely)
	end
end

function Item:beginContact_PlayerBomb(myfixture, otherfixture, contact)
	if self:call(levity.map.name, "isTutorial") then
		return
	end
	local bulletproperties = otherfixture:getBody():getUserData().properties
	local damage = bulletproperties.damage or 1
	if damage > 0 then
		self:pullTo(levity.map.properties.playerid)
	end
end

function Item:beginContact_PlayerTeam(myfixture, otherfixture, contact)
	if not self:canBeCaptured() then
		return
	end

	local otherdata = otherfixture:getBody():getUserData()
	local otherproperties = otherdata.properties
	if otherproperties and not otherproperties.picksupitems then
		return
	end

	local captorid = otherdata.id
	--if captorid ~= levity.map.properties.playerid then
	--	local targetcaptiveid = self:call(captorid, "getTargetCaptiveId") or self.id
	--	if targetcaptiveid == self.id then
	--		self:pullTo(captorid)
	--		self:send(captorid, "setTargetCaptiveId", self.id)
	--	end
	--	return
	--end

	local itemtype = self.properties.itemtype

	if self:call(levity.map.name, "isTutorial")
	or itemtype == "wingman" then
		captorid = levity.map.properties.playerid
	end

	if itemtype == "wingman" then
		local cx, cy = self.body:getWorldCenter()
		local convertingtileset = self.properties.convertingtileset
			or self.object.tile.tileset
		local convertingtileid = self.properties.convertingtileid
			or self.object.tile.properties.name
			or levity.map.tilesets[self.object.tile.tileset].name

		local gid = levity.map:getTileGid(convertingtileset, convertingtileid)
		local newwingmanid = ShmupWingman.create(levity.map, gid,
			cx, cy, captorid, self.id)

		levity.bank:play(self.properties.newwingmansound)
		self:broadcast("humanConverted", self.id, captorid)
	elseif itemtype == "score" then
		self:broadcast("humanCaptured", self.id, captorid)
	elseif itemtype == "extend" then
		self:broadcast("extendEarned")
	end

	local capturesound = self.properties.capturesound
	if capturesound then
		levity.bank:play(capturesound)
	end

	self:send(self.id, "discard")
end

function Item:beginContact_EnemyTeam(myfixture, otherfixture, contact)
	local otherproperties = otherfixture:getBody():getUserData().properties
	if otherproperties.isshield then
		self.shields = self.shields + 1
	end
end

function Item:beginContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_PlayerTeam then
			self:beginContact_PlayerTeam(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_PlayerBomb then
			self:beginContact_PlayerBomb(myfixture, otherfixture, contact)
		--elseif category == ShmupCollision.Category_EnemyTeam then
		--	self:beginContact_EnemyTeam(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_EnemyShot then
			NPC.beginContact_EnemyShot(self, myfixture, otherfixture, contact)
		end
	end
end
function Item:endContact_EnemyTeam(myfixture, otherfixture, contact)
	local otherproperties = otherfixture:getBody():getUserData().properties
	if otherproperties.isshield then
		self.shields = self.shields - 1
	end
end

--function Item:endContact(myfixture, otherfixture, contact)
--	for i = 1, select("#", otherfixture:getCategory()) do
--		local category = select(i, otherfixture:getCategory())
--		if category == ShmupCollision.Category_EnemyTeam then
--			self:endContact_EnemyTeam(myfixture, otherfixture, contact)
--		end
--	end
--end

function Item:endMove(dt)
	local x, y = self.body:getWorldCenter()

	local mapleft = 0
	local mapright = levity.map.width * levity.map.tilewidth

	local camleft, camtop, camright, cambottom = self:call(levity.map.properties.cameraid, "getBoundingBox")

	local px, py = self.object.body:getPosition()
	px = math.max(camleft, math.min(px, camright))
	py = math.max(camtop, py)

	local itemtype = self.properties.itemtype

	if self:canBeCaptured() then
		local itemtile = self.properties.itemtileid or itemtype

		if not self.itemsprite then
			self.itemsprite = self:call(self.properties.itemslayer or "items", "add",
				itemtile, px, py)
		end

		if self.itemsprite then
			self:send(self.properties.itemslayer or "items", "set", self.itemsprite,
				itemtile, px, py)
		end
	else
		if self.itemsprite then
			self:send(self.properties.itemslayer or "items", "remove", self.itemsprite)
			self.itemsprite = nil
		end
	end

	if self.mover and self.facing then
		local vx, vy = self.body:getLinearVelocity()
		if vx ~= 0 or vy ~= 0 then
			self:send(self.id, "faceAngle", math.atan2(vy, vx))
		end
	end

	if self.rescuerid then
		if not levity.map.objects[self.rescuerid]
		or levity.discardedobjects[self.rescuerid] then
			self.rescuerid = nil
		end
	end

	local offbottom = y > cambottom
	local offleft = x < mapleft
	local offright = x > mapright

	local bloodangle
	if offleft then
		bloodangle = 0
	elseif offright then
		bloodangle = math.pi
	end

	if offbottom or offleft or offright then
		if (itemtype == "score" or itemtype == "wingman")
		and not self.properties.friendly then
			if not self:canBeCaptured() then
				self:broadcast("humanFled", self.id)
			else
				self:defeat("fall", nil, bloodangle)
			end
			self:send(self.id, "discard")
		end
	end
end

function Item:rescueStarted(itemid, rescuerid)
	if self.id == itemid then
		self.rescuerid = rescuerid
	end
end

function Item:npcDefeated(id)
	if self.rescuerid == id then
		self.rescuerid = nil
	end
	if self.pulledbyid == id then
		self:cancelPull()
	end
	if self.properties.rideid == id then
		self.properties.rideid = nil
		self:send(self.id, "rideDestroyed")
	end
end

function Item:launch()
	local vx = self.properties.velx or 0
	local vy = self.properties.vely or Item.LaunchVelY
	self.body:setLinearVelocity(vx, vy)
	self.object:setLayer(levity.map.layers["playerteam"])
	self.accely = Item.Gravity
end

function Item:canBeRescued()
	return self:canBeCaptured() and not self:isBeingRescued()
end

function Item:isBeingRescued()
	return self.rescuerid ~= nil or self:isPulledByRescuer()
end

function Item:isPulledBy(id)
	return self.pulledbyid == id
end

function Item:isPulledByRescuer()
	return self.pulledbyid
		and not self:call("playerteam", "getMemberIndex", self.pulledbyid)
end

function Item:isBeingRescuedBy(rescuerid)
	return self.rescuerid == rescuerid
end

function Item:pullTo(pullerid)
	local puller = levity.map.objects[pullerid]
	if puller then
		self.object:setLayer(puller.layer)
		for _, fixture in ipairs(self.object.body:getFixtures()) do
			fixture:setSensor(true)
		end
	end
	self.pulledbyid = pullerid
end

function Item:cancelPull()
	self:send(self.pulledbyid, "stopPulling")
	self.pulledbyid = nil
	self.properties.velx = love.math.random(-16, 16)
	self.properties.vely = love.math.random(Item.ReleaseLaunchVelY,
					Item.ReleaseLaunchVelY - 64)
	self:launch()
end

function Item:playerKilled()
	if levity.map.properties.playerid == self.pulledbyid then
		self:cancelPull()
	end
end

function Item:defeat(cause, giveitemtoid, bloodangle)
	if cause ~= "fall" and cause ~= "hit" then
		return
	end
	if self.health then
		self.health:createDefeatFX()
		local defeatspark = self.properties.defeatspark
		if levity.map.objecttypes[defeatspark] then
			local sparkx, sparky = self.body:getWorldCenter()
			ShmupBullet.create(defeatspark, sparkx, sparky, 0, 0, "sparks")
		end
	else
		local x, y = self.object.body:getWorldCenter()
		self:send(self.properties.defeatparticles or "deathparticles",
			"emit", 16, x, y, bloodangle or math.pi*1.5)
	end

	local lostsound = self.properties.lostsound
	if lostsound then
		levity.bank:play(lostsound)
	end

	self:send(self.id, "discard")
	self:broadcast("humanDied", self.id)
end

function Item:endTrigger()
	--self:send(self.id, "discard")
	return true
end

function Item:discard()
	if self.discarded then
		return
	end
	self.discarded = true

	self:send(self.pulledbyid, "stopPulling")

	if self.itemsprite then
		self:send(self.properties.itemslayer or "items", "remove", self.itemsprite)
		self.itemsprite = nil
	end

	local rideid = self.properties.rideid
	if rideid then
		self:send(rideid, "removeRider", self.id)
	end
	local triggerid = self.properties.triggerid
	if triggerid then
		self:send(triggerid, "objectDiscarded", self.id)
	end
	self:send(levity.map.properties.playerid, "objectDiscarded", self.id)
	levity:discardObject(self.id)
	NumItems = NumItems - 1
	if NumItems < 1 then
		self:broadcast("allItemsCleared")
	end
end

function Item:allItemsPulled()
	if self:canBeCaptured() then
		self:pullTo(levity.map.properties.playerid)
	end
end

function Item:playerEntering(entranceid)
	self:allItemsPulled()
end

Item.beginDraw = NPC.beginDraw

function Item.releaseCaptives(captivegids, captives, x, y, layer)
	captives = captives or Item.MaxReleasedCaptives
	captives = math.min(captives, #captivegids)
	local i0 = 1 + #captivegids - captives

	for i = #captivegids, i0, -1 do
		local velx = love.math.random(-16, 16)
		local vely = love.math.random(Item.ReleaseLaunchVelY,
						Item.ReleaseLaunchVelY - 64)
		local item = levity.map:newObject(layer)
		item.type = "ItemScore"
		item.gid = captivegids[i]
		item.x = x
		item.y = y
		item.properties.launched = true
		item.properties.velx = velx
		item.properties.vely = vely
		item.properties.capturepoints = 0
		captivegids[i] = nil
	end
end

return Item
