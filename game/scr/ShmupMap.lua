local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local ShmupNPC = require("ShmupNPC")

local InitialRank = .25

local function setFilterFromProperties(body)
	for _, fixture in ipairs(body:getFixtureList()) do
		local properties = fixture:getUserData().properties
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

local ShmupMap = class(function(self, id)
	self.map = levity.map
	self.properties = self.map.properties

	ShmupNPC.ShotLayer = self.map.layers["npcshots"] or
				levity:addDynamicLayer("npcshots")
	local sparklayer = self.map.layers["sparks"] or
				levity:addDynamicLayer("sparks")
 
	for _, layer in ipairs(self.map.layers) do
		if layer.type == "dynamiclayer"
		or layer.type == "objectgroup"
			then
			for _, object in ipairs(layer.objects) do
				if not object.gid
				and not object.properties.text then
					object.visible = false
				end
				--setFilterFromProperties(object.body)
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

	if levity.map.properties.delayinitobjects == true then
		for _, layer in ipairs(self.map.layers) do
			if layer.type == "dynamiclayer" then
				local istrigger = nil
				for _, object in ipairs(layer.objects) do
					if object.properties.triggertype then
						levity:initObject(object, layer)
						istrigger = true
					end
				end

				if not istrigger
				and layer.properties.static ~= true then
					for _, object in ipairs(layer.objects) do
						levity:initObject(object, layer)
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
	self.rank = levity.machine:call(playerid, "rankFactor")

	if self.resulttimer then
		if self.resulttimer < self.resulttime - 1
		and self.resulttimer + dt >= self.resulttime - 1 then
			levity.machine:call("curtain", "beginFall")
		end
		self.resulttimer = self.resulttimer + dt
		if self.resulttimer >= self.resulttime then
			levity:setNextMap(self.properties.nextmap
						or "title.lua")
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

function ShmupMap:playerVictorious()
	levity.bank:changeMusic("mus/07 - Great Job!.vgm", "emu")
	self.resulttimer = 0
	self.resulttime = ShmupMap.VictoryTime
end

function ShmupMap:playerDefeated()
	levity.bank:changeMusic("mus/33 - All Over Tonight.vgm", "emu")
	self.resulttimer = 0
	self.resulttime = ShmupMap.DefeatTime
	self.properties.nextmap = "title.lua"
end

return ShmupMap