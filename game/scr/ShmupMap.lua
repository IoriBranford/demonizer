local levity = require "levity"
local Object = require "levity.object"
local Layer = require "levity.layer"
local pl_tablex = require "pl.tablex"

local ShmupPlayer = require "ShmupPlayer"
local ShmupCollision = require "ShmupCollision"

local InitialRank = .25

local ShmupMap = class(require("Script"))

local function setFilterFromProperties(body)
	for _, fixture in ipairs(body:getFixtures()) do
		local userdata = fixture:getUserData()
		if userdata then
			local properties = userdata.properties
			local category = properties.category
			local mask = properties.mask

			if category then
				category = ShmupCollision["Category_"..category]
			end
			if category then
				fixture:setCategory(category)
			end

			if mask then
				local maskcategories = {}
				for categoryname in (mask..','):gmatch("(.-)"..',') do
					local category =
						ShmupCollision["Category_"..categoryname]
					if category then
						table.insert(maskcategories, category)
					end
				end
				if #maskcategories > 0 then
					fixture:setMask(maskcategories)
				end
			end
		end
	end
end

local function loadBulletSounds(properties)
	if not properties then
		return
	end
	for name, value in pairs(properties) do
		if type(value) == "string" then
			if name:find("bullet") or name:find("spark") then
				levity.map:loadObjectTypeSounds(value, levity.bank)
			end
		end
	end
	local basetype = properties._basetype
	basetype = basetype and levity.map.objecttypes[basetype]
	if basetype then
		loadBulletSounds(basetype)
	end
end

local loadSoundsInObjectTypeChain_visitedtypes = {}
local function loadSoundsInObjectTypeChain(inittype)
	if not inittype then return end
	local visitedtypes = loadSoundsInObjectTypeChain_visitedtypes
	local objecttypes = levity.map.objecttypes
	local typ = inittype
	repeat
		visitedtypes[typ] = true
		levity.map:loadObjectTypeSounds(typ, levity.bank)
		local objecttype = objecttypes[typ]
		loadBulletSounds(objecttype, levity.bank)
		typ = objecttype and objecttype.nexttype or inittype
	until typ == inittype or visitedtypes[typ]
	pl_tablex.clear(visitedtypes)
end

function ShmupMap:_init(map)
	self.map = map
	self.properties = self.map.properties
	assert(self.properties.delayinitobjects == true,
		"This game requires map property delayinitobjects=true.")

	local npcshotslayer = levity.map.layers["npcshots"] or
				Layer(self.map, "npcshots")
	local sparklayer = self.map.layers["sparks"] or
				Layer(self.map, "sparks")
	npcshotslayer.draworder = "manual"
	sparklayer.draworder = "manual"
--[[
	for _, layer in ipairs(self.map.layers) do
		if layer.type == "dynamiclayer" or layer.type == "objectgroup" then
			for _, object in ipairs(layer.objects) do
				if not Object.isDrawable(object) then
					object.visible = false
				end
				--if object.body then
				--	setFilterFromProperties(object.body)
				--end
			end
		end
	end
]]
	--setFilterFromProperties(self.map.box2d_collision)

	self:replaceJoystickWithKeyboard()

	self.rank = InitialRank

	love.mouse.setVisible(false)
	love.mouse.setRelativeMode(true)

	local nextmapdata = levity.nextmapdata or {}

	local playerid = self.properties.playerid
	self.properties.attractmode = nextmapdata.attractmode
	if self.properties.attractmode then
		self.map.objects[playerid].properties.script = "ShmupPlayerAI"
	end

	local csv = "id,type,tileset,defeatscore,capturescore"
	local totalcapturescore = 0
	for _, layer in ipairs(self.map.layers) do
		if layer.type == "dynamiclayer" then
			local istrigger = nil
			for _, object in ipairs(layer.objects) do
				if object.type == "Trigger" then
					Object.init(object, layer, map)
					istrigger = true
					layer.visible = false
				end
			end

			if not istrigger then
				for _, object in ipairs(layer.objects) do
					Object.init(object, layer, map)
				end
				for _, object in ipairs(layer.objects) do
					self:send(object.id, "initQuery")
				end
			end
		end
		if layer.objects then
			for _, object in ipairs(layer.objects) do
				loadBulletSounds(object.properties)
				loadSoundsInObjectTypeChain(object.properties.nexttype)

				local objecttype = map.objecttypes[object.type]
				if objecttype then
					loadBulletSounds(objecttype)
				end

				local typ = object.type
				local tilesetname
				if object.tile then
					tilesetname = map.tilesets[object.tile.tileset].name
					if not objecttype then
						typ = object.tile.type
					end
					objecttype = map.objecttypes[object.tile.type]
					if objecttype then
						loadBulletSounds(objecttype)
					end

					loadBulletSounds(object.tile.properties)

					local objectgroup = object.tile.objectGroup
					if objectgroup then
						for _, object in pairs(objectgroup.objects) do
							loadBulletSounds(object.properties)
						end
					end
				end

				local score = object.properties.score or 0
				local capturescore = 0
				score = score + (object.properties.defeatenemiesbonus or 0)
				score = score + (object.properties.savefriendsbonus or 0)
				score = score + (object.properties.mazegoalbonus or 0)
				local kotile
				if object.properties.defeatdroptileset == "ko" then
					local kotileid = object.properties.defeatdroptileid or tilesetname
					kotile = map:getTile("ko", kotileid)
				end
				if typ == "ItemScore"
				or kotile and kotile.type == "ItemScore" then
					if totalcapturescore < 10000 then
						totalcapturescore = totalcapturescore + 100
					end
					capturescore = totalcapturescore
				end
				if map.objecttypes[typ] or tilesetname or score > 0 or capturescore > 0 then
					csv = csv .. string.format("\n%d,%s,%s,%d,%d",
						object.id, typ, tilesetname, score, capturescore)
				end
			end
		end
	end
	--love.filesystem.write(levity.mapfile .. ".csv", csv)
	self.map:loadObjectTypeSounds("PlayerWingman", levity.bank)

	local music = self.map.properties.music
	if music then
		levity.bank:play(music)
	end

	for t, properties in pairs(self.map.objecttypes) do
		local category = properties.category
		if category and type(category) == "string" then
			properties.category =
				ShmupCollision["Category_"..category]
				or category
		end
	end

	self.properties.blurradius = 0
	self.properties.blurdirx = 0
	self.properties.blurdiry = 0
	self.screeneffect = levity.scripts:newScript(self.map.name, "ScreenEffectDrunk", map)

	local checkpointid = nextmapdata.checkpointid
	if checkpointid then
		self:send(playerid, "moveToAndActivate", checkpointid)
		self.properties.checkpointid = checkpointid
	end

	local attractlayer = self.map.layers["attract"]
	attractlayer.visible = self.properties.attractmode
end

function ShmupMap:replaceJoystickWithKeyboard()
	if love.joystick.getJoystickCount() > 0 then
		return
	end
	for _, layer in ipairs(self.map.layers) do
		if layer.objects then
			for _, object in ipairs(layer.objects) do
				local text = object.text
				if text then
					text = text:gsub("${joy_x}", "${key_up} ${key_down} ${key_left} ${key_right}")
					text = text:gsub("${joy_", "${key_")
					text = text:gsub("controller", "keyboard")
					object.text = text
				end
			end
		end
	end
end

function ShmupMap:replaceKeyboardWithJoystick()
	if love.joystick.getJoystickCount() == 0 then
		return
	end
	for _, layer in ipairs(self.map.layers) do
		if layer.objects then
			for _, object in ipairs(layer.objects) do
				local text = object.text
				if text then
					text = text:gsub("${key_up} ${key_down} ${key_left} ${key_right}", "${joy_x}")
					text = text:gsub("${key_", "${joy_")
					text = text:gsub("keyboard", "controller")
					object.text = text
				end
			end
		end
	end
end

ShmupMap.joystickadded = ShmupMap.replaceKeyboardWithJoystick
ShmupMap.joystickremoved = ShmupMap.replaceJoystickWithKeyboard

function ShmupMap:endMove(dt)
	local playerid = self.properties.playerid
	--self.rank = self:call(playerid, "rankFactor")
	local playerstuntime = self:call(playerid, "getStunTime") or 0
	local blur = playerstuntime * playerstuntime
	blur = 16*blur*blur
	self.properties.blurdirx = blur/levity.camera.w
	self.properties.blurradius = blur > 0 and 1 or 0
end

function ShmupMap.isTutorial()
	return levity.map.name:find("tutorial")
end

local DumbUILayers = {
	"tutorialtext",
	"talk",
	"attract"
}

function ShmupMap:beginDraw()
	for _, layername in pairs(DumbUILayers) do
		local layer = self.map.layers[layername]
		if layer then
			layer.offsetx = levity.camera.x
			layer.offsety = levity.camera.y
		end
	end
end

function ShmupMap:getRank()
	return self.rank
end

local function captureScreenshot(screenshotdata)
	local filename = os.date("shot_%Y-%m-%d_%H-%M-%S")
	if love.filesystem.getInfo(filename) then
		for i = 1, 999 do
			local newfilename = filename..'_'..i
			if not love.filesystem.getInfo(newfilename) then
				filename = newfilename
				break
			end
		end
	end

	screenshotdata:encode("png", filename..".png")
end

function ShmupMap:keypressed_f12()
	love.graphics.captureScreenshot(captureScreenshot)
end

function ShmupMap:playerWon()
	self.playerwon = true
	local winmusic = self.properties.winmusic or "none"
	if love.filesystem.getInfo(winmusic) then
		levity.bank:changeMusic(winmusic, "emu")
	end
end

function ShmupMap:hasPlayerWon()
	return self.playerwon
end

function ShmupMap:hasPlayerLost()
	local playerkilled = self:call(self.properties.playerid, "isKilled")
	local lives = self:call("status", "getNumLives")
	return playerkilled and lives == 0
end

function ShmupMap:playerLost()
	levity.bank:changeMusic(self.properties.losemusic, "emu")
end

function ShmupMap:getPlayer()
	return self.map.objects[self.properties.playerid]
end

function ShmupMap:nextMap(nextmapfile, nextmapdata)
	if nextmapdata then
		if nextmapdata.playerwon then
			nextmapdata.checkpointid = nil
		else
			nextmapdata.checkpointid = self.properties.checkpointid
		end
	end
end

return ShmupMap
