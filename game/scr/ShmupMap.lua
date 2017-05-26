local levity = require "levity"
local Object = require "levity.object"
local Layer = require "levity.layer"

local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")

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
					fixture:setMask(unpack(maskcategories))
				end
			end
		end
	end
end

local ShmupMap = class(function(self, map)
	self.map = map
	self.properties = self.map.properties

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
				and not object.properties.text then
					object.visible = false
				end
				--if object.body then
				--	setFilterFromProperties(object.body)
				--end
			end
		end
	end
 
	--setFilterFromProperties(self.map.box2d_collision)

	local music = self.map.properties.music
	if music then
		levity.bank:load(music, "emu")
		levity.bank:play(music)
	end

	self.rank = InitialRank

	love.mouse.setVisible(false)
	love.mouse.setRelativeMode(true)

	self.resulttimer = nil
	self.resulttime = nil

	if self.map.properties.delayinitobjects == true then
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

				if not istrigger
				and layer.properties.static ~= true then
					for _, object in ipairs(layer.objects) do
						Object.init(object, layer, map)
					end
					for _, object in ipairs(layer.objects) do
						levity.scripts:send(object.id, "start")
					end
				end
			end
		end
	end
end)

ShmupMap.VictoryTime = 10
ShmupMap.DefeatTime = 16

--function ShmupMap:keypressed_escape()
--	levity:setNextMap(levity.mapfile)
--end

function ShmupMap:endMove(dt)
	local playerid = self.properties.playerid
	self.rank = levity.scripts:call(playerid, "rankFactor")

	if self.resulttimer then
		if self.resulttimer < self.resulttime - 1
		and self.resulttimer + dt >= self.resulttime - 1 then
			levity.scripts:call("curtain", "beginClose")
		end
		self.resulttimer = self.resulttimer + dt
		if self.resulttimer >= self.resulttime then
			levity:setNextMap(self.properties.nextmap
						or "title.lua", {})
		end
	end
end

function ShmupMap:getRank()
	return self.rank
end

function ShmupMap:keypressed_f12()
	for i = 1, 99 do
		local filename = string.format("screenshot%02d.png", i)
		if not love.filesystem.exists(filename) then
			local screenshotdata = love.graphics.newScreenshot()
			screenshotdata:encode("png", filename)
			return
		end
	end
	print("Screenshot folder is full")
end

function ShmupMap:playerWon()
	levity.bank:changeMusic("mus/07 - Great Job!.vgm", "emu")
	self.resulttimer = 0
	self.resulttime = ShmupMap.VictoryTime
end

function ShmupMap:playerLost()
	levity.bank:changeMusic("mus/33 - All Over Tonight.vgm", "emu")
	self.resulttimer = 0
	self.resulttime = ShmupMap.DefeatTime
	self.properties.nextmap = "title.lua"
end

function ShmupMap:getPlayer()
	return self.map.objects[self.properties.playerid]
end

return ShmupMap
