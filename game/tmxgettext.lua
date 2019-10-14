--
--------------------------------------------------------------------------------
--         File:  tmxgettext.lua
--
--        Usage:  ./tmxgettext.lua
--
--  Description:  Extract strings from map files into translation template file
--
--      Options:  <gamefilelist> [template]
-- Requirements:  ---
--         Bugs:  ---
--        Notes:  ---
--       Author:  IoriBranford
-- Organization:  
--      Version:  1.0
--      Created:  04/15/2019
--     Revision:  ---
--------------------------------------------------------------------------------
--
local io_open = io.open
local xml = require "pl.xml"
local xml_parse = xml.parse
local xml_walk = xml.walk
local args = {...}

local gamefilelistfilename = args[1]
assert(gamefilelistfilename, "Usage: tmxgettext.lua <gamefilelist>")
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

local strings = {}

local potfilename = args[2] or "messages.pot"
local potfile, err = io_open(potfilename, "w")
if not potfile then
	print(err)
	return
end

local format = [[

#: %s:%d
msgid "%s"
msgstr ""
]]

local strings = {}

for _, gamefilename in pairs(gamefilelist) do
	local extension = gamefilename:sub(-4, -1)
	if extension == ".lua" then
		local srcmapfile = gamefilename:sub(1, -4).."tmx"
		local map = dofile(gamefilename)
		if map then
			for _, layer in pairs(map.layers) do
				local objects = layer.objects
				if objects then
					for i = 1, #objects do
						local object = objects[i]
						local s = object.text
						if s and not strings[s] then
							strings[s] = true
							s = s:gsub('\n', '\\n')
							potfile:write(
								string.format(
								format,
								srcmapfile,
								object.id,
								s))
						end
					end
				end
			end
		end
	end
end

potfile:close()
