--
--------------------------------------------------------------------------------
--         File:  find-unused-tilesets.lua
--
--        Usage:  ./find-unused-tilesets.lua
--
--  Description:  List tileset files that are not used in any of the game maps
--
--      Options:  ---
-- Requirements:  ---
--         Bugs:  ---
--        Notes:  ---
--       Author:  IoriBranford
-- Organization:  
--      Version:  1.1
--      Created:  09/08/2017
--     Revision:  05/15/2018
--------------------------------------------------------------------------------
--

require "lfs"

local function findAssets(dir, exts, files)
	for filename in lfs.dir(dir or '.') do
		local filepath = dir and dir..'/'..filename or filename
		local mode = lfs.attributes(filepath, "mode")
		if mode == "directory" then
			if filename ~= "." and filename ~= ".." then
				files = findAssets(filepath, exts, files)
			end
		else
			for _, ext in pairs(exts) do
				local i, j = filepath:find(ext)
				if i and j == filepath:len() then
					files = files or {}
					files[filepath] = filepath
				end
			end
		end
	end
	return files
end

local NonMapFiles = {
	["conf.lua"] = true,
	["main.lua"] = true,
	["gencomic.lua"] = true,
	["make-game.lua"] = true,
	["find-unused-assets.lua"] = true,
	["fix-collision-offsets.lua"] = true
}

local tilesetfiles = findAssets("img", {".png", ".tsx"}) or {}
local musicfiles = findAssets("mus", {".vgz"}) or {}

for filename in lfs.dir(lfs.currentdir()) do
	local i, j = filename:find(".lua")
	if i and j == filename:len() and not NonMapFiles[filename] then
		local map = dofile(filename)

		local music = map.properties.music
		if music then musicfiles[music] = nil end
		music = map.properties.winmusic
		if music then musicfiles[music] = nil end
		music = map.properties.losemusic
		if music then musicfiles[music] = nil end

		for _, tileset in pairs(map.tilesets) do
			tilesetfiles[tileset.filename] = nil
			tilesetfiles[tileset.image] = nil
		end
		for _, layer in pairs(map.layers) do
			local objects = layer.objects
			if objects then
				for _, object in pairs(objects) do
					music = object.properties.musicfile
					if music then musicfiles[music] = nil end
				end
			end
			local image = layer.image
			if image then
				tilesetfiles[image] = nil
			end
		end
	end
end

for name, _ in pairs(tilesetfiles) do io.write('"', name, '" ') end
for name, _ in pairs(musicfiles) do io.write('"', name, '" ') end
io.write('\n')
