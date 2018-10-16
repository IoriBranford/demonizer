#!/usr/bin/lua
--
--------------------------------------------------------------------------------
--         File:  gencomic.lua
--
--        Usage:  ./gencomic.lua <comic_dir>
--
--  Description:  Generate comic map from directory of comic pages
--
--      Options:  ---
-- Requirements:  ---
--         Bugs:  ---
--        Notes:  ---
--       Author:  Iori Branford <ioribranford@gmail.com>
-- Organization:  
--      Version:  1.0
--      Created:  09/20/2018
--     Revision:  ---
--------------------------------------------------------------------------------
--
local xml = require "pl.xml"
local lfs = require "lfs"

local io_write = io.write
local string_sub = string.sub
local string_format = string.format

local args = {...}
local arg_dir = args[1]
if not arg_dir then
	print("Usage: gencomic.lua <imgdir>")
	return
end

local imagenames = {}
for filename in lfs.dir(arg_dir) do
	if string_sub(filename, -4, -1) == ".png" then
		imagenames[#imagenames+1] = string_sub(filename, 1, -5)
	end
end
table.sort(imagenames)

local MapAttr = [[<?xml version="1.0" encoding="UTF-8"?>
<map version="1.2" tiledversion="1.2.0" orientation="orthogonal" renderorder="right-down" width="15" height="20" tilewidth="16" tileheight="16" infinite="0" nextobjectid="2">
 <properties>
  <property name="script" value="ComicMap"/>
  <property name="nextmap" type="file" value=""/>
 </properties>
]]

local MapEnd = [[
 <objectgroup name="curtain">
  <object id="1" type="Camera" x="0" y="0" width="240" height="320"/>
  <properties>
   <property name="script" value="Curtain"/>
  </properties>
 </objectgroup>
</map>
]]

local PageImage = [[
 <imagelayer name="%s">
  <image source="%s" width="320" height="240"/>
 </imagelayer>
]]
local PageCovers = [[
 <objectgroup name="%scovers">
  <properties>
   <property name="script" value="ComicPanelCovers"/>
   <property name="waittime" type="float" value="0.5"/>
  </properties>
 </objectgroup>
]]

local mapfilename = string.gsub(arg_dir, '/', '_')..".tmx"
local file = io.open(mapfilename, 'w')

file:write(MapAttr)

local ImagePath = "%s/%s.png"

for i = 1, #imagenames do
	local imagename = imagenames[i]
	local imagepath = string_format(ImagePath, arg_dir, imagename)
	file:write(string_format(PageImage, imagename, imagepath))
	file:write(string_format(PageCovers, imagename))
end

file:write(MapEnd)
file:close()
