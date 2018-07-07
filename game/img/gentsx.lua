--
--------------------------------------------------------------------------------
--         File:  gentsx.lua
--
--        Usage:  lua gentsx.lua <template_tsx> <image_dir> [<image_dir>...]
--
--  Description:  Generate uniform tileset info for a set of tileset images
--
--      Options:  ---
-- Requirements:  ---
--         Bugs:  ---
--        Notes:  ---
--       Author:  IoriBranford
-- Organization:  
--      Version:  1.0.2
--      Created:  05/26/2017
--     Revision:  10/09/2017
--------------------------------------------------------------------------------
--

require "lfs"
local arg = {...}
local templatefile = arg[1]
local dir = arg[2]
if not dir or not templatefile then
	print("Usage: lua gentsx.lua <template_tsx> <image_dir>")
	return
end

local template = io.open(templatefile):read("*a")
for i = 2, #arg do
	local dir = arg[i]
	for filename in lfs.dir(dir) do
		local i, j = filename:find(".png")
		if i then
			local name = filename:sub(1, i-1)
			local tsx = template:gsub("NAME", name)
			local tsxpath = dir..'/'..name..".tsx"
			local tsxfile = io.open(tsxpath, "r")
			if tsxfile then
				print(tsxpath.." exists, not overwriting")
			else
				print(tsxpath.." written")
				tsxfile = assert(io.open(tsxpath, "w"))
				tsxfile:write(tsx)
				tsxfile:close()
			end
		end
	end
end
