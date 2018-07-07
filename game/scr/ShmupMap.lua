local levity = require "levity"
local Object = require "levity.object"
local Layer = require "levity.layer"

local ShmupPlayer = require "ShmupPlayer"
local ShmupCollision = require "ShmupCollision"

local InitialRank = .25

local function setFilterFromProperties(body)
	for _, fixture in ipairs(body:getFixtureList()) do
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

local ShmupMap = class()
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

	for _, layer in ipairs(self.map.layers) do
		if layer.type == "dynamiclayer"
		or layer.type == "objectgroup"
			then
			for _, object in ipairs(layer.objects) do
				if not object.gid
				and not object.text
				then
					object.visible = false
				end
				--if object.body then
				--	setFilterFromProperties(object.body)
				--end
			end
		end
	end

	--setFilterFromProperties(self.map.box2d_collision)

	local winmusic = self.map.properties.winmusic
	if winmusic then
		levity.bank:load(winmusic, "emu")
	end
	local losemusic = self.map.properties.losemusic
	if losemusic then
		levity.bank:load(losemusic, "emu")
	end
	local music = self.map.properties.music
	if music then
		levity.bank:load(music, "emu")
		levity.bank:play(music)
	end

	self.rank = InitialRank

	love.mouse.setVisible(false)
	love.mouse.setRelativeMode(true)

	for _, layer in ipairs(self.map.layers) do
		if layer.type == "dynamiclayer" then
			local istrigger = nil
			for _, object in ipairs(layer.objects) do
				if object.type == "Trigger" then
					Object.init(object, layer, map)
					istrigger = true
					layer.visible = false
					for name, value in pairs(object.properties) do
						if name:find("music")
						and type(value) == "string"
						and value:find(".vg") then
							levity.bank:load(value, "emu")
						end
					end
				end
			end

			if not istrigger then
				for _, object in ipairs(layer.objects) do
					Object.init(object, layer, map)
				end
				for _, object in ipairs(layer.objects) do
					levity.scripts:send(object.id, "initQuery")
				end
			end
		end
	end

	for t, properties in pairs(self.map.objecttypes) do
		local category = properties.category
		if category and type(category) == "string" then
			properties.category =
				ShmupCollision["Category_"..category]
				or category
		end
	end
end

--[[
function ShmupMap:endMove(dt)
	local playerid = self.properties.playerid
	self.rank = levity.scripts:call(playerid, "rankFactor")
end
]]
function ShmupMap.isTutorial()
	return levity.map.name:find("tutorial")
end

function ShmupMap:beginDraw()
	local tutoriallayer = self.map.layers["tutorialtext"]
	if self:isTutorial() and tutoriallayer then
		tutoriallayer.offsetx = levity.camera.x
		tutoriallayer.offsety = levity.camera.y
	end
end

function ShmupMap:getRank()
	return self.rank
end

function ShmupMap:keypressed_f12()
	local filename = os.date("shot_%Y-%m-%d_%H-%M-%S")
	if love.filesystem.exists(filename) then
		for i = 1, 999 do
			local newfilename = filename..'_'..i
			if not love.filesystem.exists(newfilename) then
				filename = newfilename
				break
			end
		end
	end

	local screenshotdata = love.graphics.newScreenshot()
	screenshotdata:encode("png", filename..".png")

	--print("Screenshot folder is full")
end

function ShmupMap:playerWon()
	if self:isTutorial() then
	else
		levity.bank:changeMusic(self.properties.winmusic, "emu")
	end
end

function ShmupMap:hasPlayerLost()
	local playerkilled = levity.scripts:call(self.properties.playerid, "isKilled")
	local lives = levity.scripts:call("status", "getNumLives")
	return playerkilled and lives == 0
end

function ShmupMap:playerLost()
	levity.bank:changeMusic(self.properties.losemusic, "emu")
end

function ShmupMap:getPlayer()
	return self.map.objects[self.properties.playerid]
end

return ShmupMap
