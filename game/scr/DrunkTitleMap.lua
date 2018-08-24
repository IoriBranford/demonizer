local levity = require "levity"
local MenuMap = require "MenuMap"

local DrunkTitleMap = class(MenuMap)
function DrunkTitleMap:_init(map)
	self:super(map)
	self.properties = map.properties
	self.properties.blurradius = 0
	self.properties.blurdirx = 0
	self.properties.blurdiry = 0
	self.screeneffect = levity.scripts:newScript(self.map.name, "ScreenEffectDrunk", map)
end

function DrunkTitleMap:keypressed_escape()
	levity:setNextMap("title.lua")
end

function DrunkTitleMap:beginMove(dt)
	self.properties.blurradius = 1
end

function DrunkTitleMap:endMove(dt)
	local blur = 1
	local sint = math.sin(love.timer.getTime()*math.pi)
	self.properties.blurdirx = sint*blur/levity.camera.w
	self.properties.blurradius = math.floor((sint*sint + 1)*blur)

	MenuMap.endMove(self, dt)

	if self.title then
		local cost = math.cos(math.pi*love.timer.getTime())
		self.title.offsetx = self.title.offsetx + cost*love.math.random()
		self.title.offsety = self.title.offsety + sint*love.math.random()
	end
end

return DrunkTitleMap
