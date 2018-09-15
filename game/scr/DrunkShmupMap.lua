local levity = require "levity"
local ShmupMap = require "ShmupMap"

local DrunkShmupMap = class(ShmupMap)
function DrunkShmupMap:_init(map)
	self:super(map)
end

function DrunkShmupMap:endMove(dt)
	--local player = levity.scripts:call(self.map.name, "getPlayer")
	--local dirx, diry = player.body:getLinearVelocity()
	local playerid = self.properties.playerid
	local blur = 8 * levity.scripts:call(playerid, "getBAC")

	local sint = math.sin(love.timer.getTime()*math.pi)
	self.properties.blurdirx = sint*blur/levity.camera.w
	self.properties.blurradius = math.floor((sint*sint + 1)*blur)
end

function DrunkShmupMap:keypressed_f2()
	levity:setNextMap(levity.map.name)
end

function DrunkShmupMap:beginDraw()
	ShmupMap.beginDraw(self)
end

function DrunkShmupMap:endDraw()
end

return DrunkShmupMap
