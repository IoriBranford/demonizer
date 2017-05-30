--
--------------------------------------------------------------------------------
--         File:  gentsx.lua
--
--        Usage:  lua gentsx.lua [image_dir]
--
--  Description:  Generate tileset files for all images in a directory
--                according to a template
--
--      Options:  ---
-- Requirements:  ---
--         Bugs:  ---
--        Notes:  ---
--       Author:  IoriBranford
-- Organization:  
--      Version:  1.0
--      Created:  05/26/2017
--     Revision:  ---
--------------------------------------------------------------------------------
--

require "lfs"
local arg = {...}
local dir = arg[1] or lfs.currentdir()
local template = io.open("template.tsx"):read("*a")
for filename in lfs.dir(dir) do
	local i, j = filename:find(".png")
	if i then
		local name = filename:sub(1, i-1)
		local tsx = template:gsub("NAME", name)
		local tsxfile = io.open(dir..'/'..name..".tsx", "w")
		tsxfile:write(tsx)
		tsxfile:close()
	end
end
