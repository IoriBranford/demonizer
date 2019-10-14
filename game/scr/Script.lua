local levity = require("levity")
local scripts = levity.scripts
local send = levity.scripts.send
local call = levity.scripts.call
local broadcast = levity.scripts.broadcast

local Script = class()

function Script:send(id, event, ...)
	send(scripts, id, event, ...)
end

function Script:call(id, event, ...)
	return call(scripts, id, event, ...)
end

function Script:broadcast(event, ...)
	broadcast(scripts, event, ...)
end

return Script
