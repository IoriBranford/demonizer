--
--------------------------------------------------------------------------------
--         File:  gentsx.lua
--
--        Usage:  lua gentsx.lua <image_dir> <template_tsx>
--
--  Description:  Generate uniform tileset info for a set of tileset images
--
--      Options:  ---
-- Requirements:  ---
--         Bugs:  ---
--        Notes:  ---
--       Author:  IoriBranford
-- Organization:  
--      Version:  1.0.1
--      Created:  05/26/2017
--     Revision:  06/06/2017
--------------------------------------------------------------------------------
--

require "lfs"
local arg = {...}
local dir = arg[1]
local templatefile = arg[2]
if not dir or not templatefile then
	print("Usage: lua gentsx.lua <image_dir> <template_tsx>")
	return
end

local template = io.open(templatefile):read("*a")
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
