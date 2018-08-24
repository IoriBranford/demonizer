--
--------------------------------------------------------------------------------
--         File:  fix-collision-offsets.lua
--
--        Usage:  ./fix-collision-offsets.lua <image dir>
--
--  Description:  Update tileset collision positions for Tiled 1.1.6+
--
--      Options:  ---
-- Requirements:  ---
--         Bugs:  ---
--        Notes:  ---
--       Author:  IoriBranford
-- Organization:  
--      Version:  1.0
--      Created:  2018/07/21
--     Revision:  
--------------------------------------------------------------------------------
--

local assert = assert
local tonumber = tonumber
local tostring = tostring
local string_sub = string.sub
local lfs = require "lfs"
local lfs_dir = lfs.dir
local lfs_attributes = lfs.attributes
local xml = require "pl.xml"
local xml_parse = xml.parse
local xml_clone = xml.clone
local xml_tostring = xml.tostring

local function fixCollisionOffsets_doc(doc)
	--print(doc.attr.name)
	local tileoffset = doc:child_with_name("tileoffset")
	local offsetx = tileoffset and tonumber(tileoffset.attr.x) or 0
	local offsety = tileoffset and tonumber(tileoffset.attr.y) or 0

	local tiles = doc:get_elements_with_name("tile")
	for _, tile in pairs(tiles) do
		--print('', tile.attr.id)
		local objectgroup = tile:child_with_name("objectgroup")
		if objectgroup then
			local objects = objectgroup:get_elements_with_name("object")
			for _, object in pairs(objects) do
				local x = tonumber(object.attr.x)
				local y = tonumber(object.attr.y)
				--print('', '', object.attr.x, object.attr.y, '=>', x - offsetx, y - offsety)
				object.attr.x = tostring(x - offsetx)
				object.attr.y = tostring(y - offsety)
			end
		end
	end
end

local FileAttr = {}
local function fixCollisionOffsets_path(path)
	lfs_attributes(path, FileAttr)
	if FileAttr.mode == "directory" then
		for f in lfs_dir(path) do
			if f ~= '.' and f ~= '..' then
				fixCollisionOffsets_path(path..'/'..f)
			end
		end
		return
	end

	if string_sub(path, -4, -1) ~= ".tsx" then
		return
	end

	local doc, err = xml_parse(path, true)
	assert(doc, err)

	fixCollisionOffsets_doc(doc)

	local xml = xml_tostring(doc, nil, nil, nil, '<?xml version="1.0" encoding="UTF-8"?>\n')
	local file = io.open(path, "w+")
	file:write(xml)
	file:close()
end

local args = {...}
local root = args[1]
assert(root, "Usage: ./fix-collision-offsets.lua <image dir>")

fixCollisionOffsets_path(root)
