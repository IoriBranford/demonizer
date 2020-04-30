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

local print = print
local pairs = pairs
local assert = assert
local io_open = io.open
local xml = require "pl.xml"
local xml_parse = xml.parse
local xml_walk = xml.walk

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
	[".vgz"] = true,
	[".vgm"] = true
}

local function checkAsset(filename)
	local ext = filename:sub(-4, -1)
	if AssetTypes[ext] then
		local file = io_open(filename)
		if file then
			file:close()
			return true
		end
	end
	return false
end

local function findAssetsInTable(assets, properties)
	for _, filename in pairs(properties) do
		if type(filename)=="string" then
			if checkAsset(filename) then
				assets[filename] = filename
			end
		elseif type(filename)=="table" then
			findAssetsInTable(assets, filename)
		end
	end
end

local assets = {
	"main.lua",
	"conf.lua"
}

local function findAssetsInXML(tag, node)
	if tag == "property" then
		local attr = node.attr
		if attr.type == "file" then
			local filename = attr.default
			if checkAsset(filename) then
				assets[filename] = filename
			end
		end
	end
end

love = {}
local conf = { window = {}, modules = {} }
require "conf"
love.conf(conf)
findAssetsInTable(assets, conf)

for _, gamefilename in pairs(gamefilelist) do
	local extension = gamefilename:sub(-4, -1)
	if extension == ".lua" then
		assets[gamefilename] = gamefilename
		local map = dofile(gamefilename)
		if map then
			findAssetsInTable(assets, map.properties)

			for _, tileset in pairs(map.tilesets) do
				assets[tileset.image] = tileset.image
			end
			for _, layer in pairs(map.layers) do
				findAssetsInTable(assets, layer)
				findAssetsInTable(assets, layer.properties)
				local objects = layer.objects
				if objects then
					for _, object in pairs(objects) do
						findAssetsInTable(assets, object.properties)
					end
				end
			end
		end
	elseif extension == ".xml" then
		assets[gamefilename] = gamefilename

		local doc, err = xml_parse(gamefilename, true)
		assert(doc, err)
		xml_walk(doc, false, findAssetsInXML)
	end
end

local os_execute = os.execute
local zipcommand = string.format("zip %s ", gamezipfilename)
for _, asset in pairs(assets) do
	local zipassetcommand = zipcommand..'"'..asset..'"'
	os_execute(zipassetcommand)
end

os_execute('find scr -name "*.lua" | '..zipcommand..'-@')
os_execute('find fnt -name "*.png" -o -name "*.fnt" -o -name "*.ttf" | '..zipcommand..'-@')
os_execute('find levity -name "examples" -prune -o -name "tests" -prune -o -name "*.lua" -o -name "gamecontrollerdb.txt" | '..zipcommand..'-@')
os_execute('git describe --tags --always > version')
os_execute(zipcommand..'version')

return assets
