local levity = require "levity"
local maputil = require "levity.maputil"
local ShmupCollision = require "ShmupCollision"

local Trigger = class()

function Trigger:_init(object)
	self.id = object.id
	self.object = object
	self.properties = object.properties
	self.activated = nil
	self.activatedids = {}
	self.playerentered = false
	self.waittriggertimer = nil
	object.layer.visible = false
end

function Trigger:activateObjects(num)
	local n = 0
	local objects = self.object.layer.objects
	for i = #objects, 1, -1 do
		local object = objects[i]
		if object.properties.script ~= "Trigger" then
			self:activateObject(object)
			table.remove(objects, i)

			n = n + 1
			if type(num) == "number" and n >= num then
				break
			end
		end
	end
end

function Trigger:addNewObject(object)
	maputil.setObjectDefaultProperties(object, levity.map.objecttypes)
	object.layer = self.object.layer
	object.id = object.id or levity.map:newObjectId()
	self:activateObject(object)
end

function Trigger:activateObject(object)
	local layer = object.properties.initiallayer
	if not levity.map.layers[layer] then
		layer = self.properties.activateobjectslayer
	end
	object.properties.originallayer = object.layer.name
	object.properties.triggerid = self.id
	layer = levity.map.layers[layer] or self.object.layer
	layer.visible = true
	layer:addObject(object)
	self.activatedids[object.id] = object.id
end

function Trigger:addFriend(friendid)
	self.friendstates = self.friendstates or {}
	self.friendstates[friendid] = "active"
end

function Trigger:addEnemy(enemyid)
	self.enemyidsdefeated = self.enemyidsdefeated or {}
	self.enemyidsdefeated[enemyid] = false
end

function Trigger:deactivate()
	for _, id in pairs(self.activatedids) do
		if not levity.scripts:call(id, "endTrigger") then
			levity:discardObject(id)
		end
	end
	levity:discardObject(self.id)
end

function Trigger:beginMove(dt)
	if self.waittriggertimer then
		self.waittriggertimer = self.waittriggertimer + dt
		if self.waittriggertimer >= self.properties.waittriggertime then
			local waittriggerid = self.properties.waittriggerid
			levity.scripts:send(waittriggerid, "activate")
			self.waittriggertimer = nil
		end
	end
end

function Trigger:applyCameraSpeed()
	local cameraspeed = tonumber(self.properties.cameraspeed)
	if cameraspeed then
		local cameraid = levity.map.properties.cameraid
		local camera = levity.map.objects[cameraid]

		camera.properties.pathspeed = cameraspeed

		local cameraspeedmin = tonumber(self.properties.cameraspeedmin)
		camera.properties.pathspeedmin = cameraspeedmin

		local cameraspeedfunction = self.properties.cameraspeedfunction
		camera.properties.pathspeedfunction = cameraspeedfunction
	end
end

function Trigger:activate()
	if self.activated then
		return
	end
	self.activated = true
	local activateobjects = self.properties.activateobjects
	if activateobjects then
		self:activateObjects(activateobjects)
	end

	local music = self.properties.musicfile or ""
	if music ~= "" then
		levity.bank:changeMusic(music, "emu")
	elseif self.properties.musicfade then
		if levity.bank.currentmusic then
			levity.bank.currentmusic:fade()
		end
	end

	local sound = self.properties.soundfile or ""
	if sound ~= "" then
		levity.bank:play(sound)
	end

	local LayerPattern = "([^\n]+)\n"
	local maplayers = levity.map.layers
	local showlayers = self.properties.showlayers
		and self.properties.showlayers..'\n'
	local hidelayers = self.properties.hidelayers
		and self.properties.hidelayers..'\n'
	local startinfinitescrolllayers = self.properties.startinfinitescrolllayers
		and self.properties.startinfinitescrolllayers..'\n'
	local stopinfinitescrolllayers = self.properties.stopinfinitescrolllayers
		and self.properties.stopinfinitescrolllayers..'\n'

	if showlayers then
		for layer in showlayers:gmatch(LayerPattern) do
			if maplayers[layer] then
				maplayers[layer].visible = true
			end
		end
	end
	if hidelayers then
		for layer in hidelayers:gmatch(LayerPattern) do
			if maplayers[layer] then
				maplayers[layer].visible = false
			end
		end
	end
	if startinfinitescrolllayers then
		for layer in startinfinitescrolllayers:gmatch(LayerPattern) do
			if maplayers[layer] then
				levity.scripts:call(maplayers[layer].name,
					"setScrolling", true)
			end
		end
	end
	local numstopinfinitescrolllayers = 0
	if stopinfinitescrolllayers then
		local stoptriggerid = self.id
		for layername in stopinfinitescrolllayers:gmatch(LayerPattern) do
			local layer = maplayers[layername]
			if layer then
				numstopinfinitescrolllayers = numstopinfinitescrolllayers + 1
				levity.scripts:send(layername, "setScrolling", false, stoptriggerid)
				stoptriggerid = nil
			end
		end
	end

	local waittriggerid = self.properties.waittriggerid
	local waittriggertime = self.properties.waittriggertime
	if waittriggerid then
		self.properties.waittriggerid = tonumber(waittriggerid) or waittriggerid
		if waittriggertime then
			self.waittriggertimer = 0
		end
	end

	local clearobjectlayer = self.properties.clearobjectlayer
	clearobjectlayer = levity.map.layers[clearobjectlayer]
	if clearobjectlayer and clearobjectlayer.objects then
		for i, object in pairs(clearobjectlayer.objects) do
			levity:discardObject(object.id)
		end
	end

	if numstopinfinitescrolllayers == 0 then
		self:applyCameraSpeed()
	end

	local sequencetriggerids = self.properties.sequencetriggerids
	if sequencetriggerids then
		local sequence = {}
		for line in sequencetriggerids:gmatch("%d+") do
			sequence[#sequence+1] = tonumber(line)
		end

		local allobjects = levity.map.objects
		for i = 1, #sequence-1 do
			local triggerid = sequence[i]
			local trigger = allobjects[triggerid]
			if trigger and trigger.properties.script=="Trigger" then
				local properties = trigger.properties
				properties.cleartriggerid = sequence[i+1]
			end
		end

		levity.scripts:send(sequence[1], "activate")
	end

	local playerid = levity.map.properties.playerid
	local playerrestrictmove = self.properties.playerrestrictmove
	levity.scripts:call(playerid, "restrictMove", playerrestrictmove)
	local playerrestrictfire = self.properties.playerrestrictfire
	levity.scripts:call(playerid, "restrictFire", playerrestrictfire)

	levity.scripts:broadcast("triggerActivated", self.id)
end

function Trigger:isPlayerIn()
	return self.playerentered
end

function Trigger:beginContact_PlayerTeam(myfixture, otherfixture, contact)
	local playerid = otherfixture:getBody():getUserData().id
	if playerid == levity.map.properties.playerid then
		self.playerentered = true
		levity.scripts:broadcast("playerEnteredTrigger", self.id)
	end
end

function Trigger:endContact_PlayerTeam(myfixture, otherfixture, contact)
	local playerid = otherfixture:getBody():getUserData().id
	if playerid == levity.map.properties.playerid then
		self.playerentered = false
		levity.scripts:broadcast("playerExitedTrigger", self.id)
	end
end

function Trigger:beginContact_Camera(myfixture, otherfixture, contact)
	--local triggerleft, triggertop, triggerright, triggerbottom
	--	= myfixture:getBoundingBox()
	--local cameraleft, cameratop, cameraright, camerabottom
	--	= otherfixture:getBoundingBox()
	--if cameratop >= triggertop
	--and triggerbottom - cameratop <= levity.map.tileheight
	--then
		self:activate()
	--end
end

function Trigger:beginContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_PlayerTeam then
			self:beginContact_PlayerTeam(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_Camera then
			self:beginContact_Camera(myfixture, otherfixture, contact)
		end
	end
end

function Trigger:endContact(myfixture, otherfixture, contact)
	for i = 1, select("#", otherfixture:getCategory()) do
		local category = select(i, otherfixture:getCategory())
		if category == ShmupCollision.Category_PlayerTeam then
			self:endContact_PlayerTeam(myfixture, otherfixture, contact)
		elseif category == ShmupCollision.Category_Camera then
			self:deactivate()
		end
	end
end

function Trigger:areAllEnemiesDefeated()
	if not self.enemyidsdefeated then
		return false
	end
	for _, defeated in pairs(self.enemyidsdefeated) do
		if not defeated then
			return false
		end
	end
	return true
end

function Trigger:areAllFriendsSaved()
	if not self.friendstates then
		return false
	end
	for _, state in pairs(self.friendstates) do
		if state ~= "saved" then
			return false
		end
	end
	return true
end

function Trigger:isAnyFriendDefeated()
	if not self.friendstates then
		return false
	end
	for _, state in pairs(self.friendstates) do
		if state == "dead" then
			return true
		end
	end
	return false
end

function Trigger:isCleared()
	if not self.activated then
		return false
	end
	for _, id in pairs(self.activatedids) do
		local object = levity:getObject(id)
		if object and object.properties.script then
			return false
		end
	end
	return true
end

function Trigger:debugPrintIds(ids, name)
	io.write(self.id..(name or "")..':\t')
	for id, val in pairs(ids) do
		io.write(id..'\t')
	end
	io.write('\n')
end

function Trigger:enemyDefeated(enemyid)
	local cancelondefeatedid = self.properties.cancelondefeatedid
	if cancelondefeatedid == enemyid then
		self:deactivate()
	end

	if not self.enemyidsdefeated then
		return
	end

	local defeated = self.enemyidsdefeated[enemyid]
	if defeated == nil then
		return
	end
	if defeated == false then
		self.enemyidsdefeated[enemyid] = true
		self.firstdefeattime = self.firstdefeattime or love.timer.getTime()
	end

	if not self:areAllEnemiesDefeated() then
		return
	end

	levity.scripts:broadcast("triggerEnemiesCleared", self.id)

	local cleartowin = self.properties.cleartowin
	if cleartowin then
		levity.scripts:broadcast("beginPlayerWin")
	end

	if self:isAnyFriendDefeated() then
		return
	end

	if self.friendstates then
		for id, _ in pairs(self.friendstates) do
			levity.scripts:send(id, "allFriendsSaved")
		end
	end

	local bonus = self.properties.defeatenemiesbonus or 0
	if bonus > 0 then
		local defeatenemiesbonustimewindow = self.properties.defeatenemiesbonustimewindow or math.huge
		local cleartime = love.timer.getTime() - self.firstdefeattime
		if cleartime <= defeatenemiesbonustimewindow then
			levity.scripts:broadcast("givePlayerBonus", bonus,
						self.properties.bonussound)
			self.properties.defeatenemiesbonus = 0
		end
	end
end

function Trigger:friendSaved(friendid)
	if not self.friendstates then
		return
	end

	if self:areAllFriendsSaved() then
		return
	end

	local state = self.friendstates[friendid]
	if state == "active" then
		self.friendstates[friendid] = "saved"
	end

	if not self:areAllFriendsSaved() then
		return
	end

	if self.friendstates then
		for id, _ in pairs(self.friendstates) do
			levity.scripts:send(id, "allFriendsSaved")
		end
	end

	local bonus = self.properties.savefriendsbonus or 0
	if bonus > 0 then
		self:giveBonus(bonus)
		self.properties.savefriendsbonus = 0
	end
end

function Trigger:giveBonus(bonus)
	local player = levity.map.objects[levity.map.properties.playerid]
	levity.scripts:broadcast("pointsScored", bonus,
		player.x, player.y, "BONUS\n%d")
	levity.bank:play(self.properties.bonussound)
end

function Trigger:friendKilled(friendid)
	if not self.friendstates then
		return
	end

	local state = self.friendstates[friendid]
	if state and state ~= "dead" then
		self.friendstates[friendid] = "dead"
	end
end

function Trigger:someoneDiscarded(id)
	if not self.activatedids[id] then
		return
	end

	self.activatedids[id] = nil

	if not self:isCleared() then
		return
	end

	local cleartriggerid = self.properties.cleartriggerid
	if levity:getObject(cleartriggerid) then
		levity.scripts:send(cleartriggerid, "activate")
	end

	local cleartowin = self.properties.cleartowin
	if cleartowin then
		if not levity.scripts:call(levity.map.name, "hasPlayerLost") then
			levity.scripts:broadcast("playerWon")
		end
	end

	local cleartoenterid = self.properties.cleartoenterid
	if cleartoenterid then
		local playerid = levity.map.properties.playerid
		levity.scripts:send(playerid, "startEntrance", cleartoenterid)
	end
end

function Trigger:allItemsCleared()
	if not self:isCleared() then
		return
	end

	local clearitemstriggerid = self.properties.clearitemstriggerid
	if levity:getObject(clearitemstriggerid) then
		levity.scripts:send(clearitemstriggerid, "activate")
	end

	local clearitemstowin = self.properties.clearitemstowin
	if clearitemstowin then
		if not levity.scripts:call(levity.map.name, "hasPlayerLost") then
			levity.scripts:broadcast("playerWon")
		end
	end
end

return Trigger
