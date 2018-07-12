#!/usr/bin/lua
--
--------------------------------------------------------------------------------
--         File:  make-game.lua
--
--        Usage:  ./make-game.lua <gamefilelist> [gamepackage]
--
--  Description:  Make game asset package
--
--      Options:  ---
-- Requirements:  ---
--         Bugs:  ---
--        Notes:  ---
--       Author:  Iori Branford <ioribranford@gmail.com>
-- Organization:  
--      Version:  1.0
--      Created:  07/10/2018
--     Revision:  ---
--------------------------------------------------------------------------------
--

local pairs = pairs
local io_open = io.open
--local print = print
--local maputil = require "levity.maputil"

local args = {...}

local gamefilelistfilename = args[1]
local gamezipfilename = args[2] or "game.love"
assert(gamefilelistfilename, "Usage: make-game.lua <gamefilelist> [gamepackage]")
local gamefilelistfile = io_open(gamefilelistfilename)
assert(gamefilelistfile, "No gamefilelist file "..gamefilelistfilename)

local gamefilelist = {}
for mapfilename in gamefilelistfile:lines() do
	local mapfile = io_open(mapfilename)
	if mapfile then
		gamefilelist[mapfilename] = mapfilename
		mapfile:close()
	end
end
gamefilelistfile:close()

local AssetTypes = {
	[".ogg"] = true,
	[".png"] = true,
	[".fnt"] = true,
	[".vgz"] = true,
	[".vgm"] = true
}

local function findAssetsInProperties(assets, properties)
	for _, filename in pairs(properties) do
		if type(filename)=="string" then
			local ext = filename:sub(-4, -1)
			if AssetTypes[ext] then
				local file = io_open(filename)
				if file then
					assets[filename] = filename
					file:close()
				end
			end
		end
	end
end

local assets = {
	"main.lua",
	"conf.lua"
}

for _, gamefilename in pairs(gamefilelist) do
	local extension = gamefilename:sub(-4, -1)
	if extension == ".lua" then
		assets[gamefilename] = gamefilename
		local map = dofile(gamefilename)
		if map then
			findAssetsInProperties(assets, map.properties)
			
			for _, tileset in pairs(map.tilesets) do
				assets[tileset.image] = tileset.image
			end
			for _, layer in pairs(map.layers) do
				local objects = layer.objects
				if objects then
					for _, object in pairs(objects) do
						findAssetsInProperties(assets, object.properties)
					end
				end
			end
		end
	elseif extension == ".xml" then
		assets[gamefilename] = gamefilename
		--[[local objecttypes = maputil.loadObjectTypes(gamefilename)
		if objecttypes then
			for _, properties in pairs(objecttypes) do
				for _, value in pairs(properties) do
					if value.type == "file" then
						assets[value.value] = value.value
					end
				end
			end
		end]]
	end
end

local os_execute = os.execute
local zipcommand = string.format("zip %s ", gamezipfilename)
for _, asset in pairs(assets) do
	local zipassetcommand = zipcommand..'"'..asset..'"'
	os_execute(zipassetcommand)
end

os_execute('find -name "*.ogg" | '..zipcommand..'-@') -- TEMP until all sound filenames are purged from scripts
os_execute('find scr -name "*.lua" | '..zipcommand..'-@')
os_execute('find fnt -name "*.png" | '..zipcommand..'-@')
os_execute('find levity -name "examples" -prune -o -name "tests" -prune -o -name "*.lua" | '..zipcommand..'-@')
os_execute('find levity -name "*.txt" | '..zipcommand..'-@')
os_execute('git describe --tags --always > version')
os_execute(zipcommand..'version')

return assets
