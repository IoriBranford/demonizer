local pl_pretty = require("pl.pretty")

local progress = {
	["tutorial.lua"]	= true,
	["demonrealm.lua"]	= true,
	["village.lua"]		= true, --TODO lock in v1.0
	["chapel.lua"]		= true, --TODO lock in v1.0
	["cave.lua"]		= true, --TODO lock in v1.0
	["highway.lua"]		= true, --TODO lock in v1.0
	["capital.lua"]		= true, --TODO lock in v1.0
	["castle.lua"]		= true, --TODO lock in v1.0
	["caravan.lua"]		= true, --TODO lock in v1.0
	["drunktitle.lua"]	= true, --TODO lock in v1.0
	["winetasting.lua"]	= true, --TODO lock in v1.0
	["options.lua"]		= true
}

local Progress = {}
function Progress.load()
	local f, err = love.filesystem.load("progress")
	if not f then
		Progress.save()
		return
	end
	local tbl = f()
	for map, _ in pairs(tbl) do
		progress[map] = true
	end
end

function Progress.unlock(...)
	for i = 1, select("#", ...) do
		local mapfile = select(i, ...)
		progress[mapfile] = true
	end
	Progress.save()
end

function Progress.save()
	local f = load("return "..pl_pretty.write(progress))
	love.filesystem.write("progress", string.dump(f, true))
end

function Progress.isUnlocked(mapfile)
	return progress[mapfile]
end

Progress.load()
return Progress
