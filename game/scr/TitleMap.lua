local levity = require "levity"

local TitleBobAmp = 16
local TitleMap = class()
function TitleMap:_init(map)
	self.map = map
	self.properties = self.map.properties

	local music = self.map.properties.music
	if music then
		levity.bank:load(music, "emu")
		levity.bank:play(music)
	end

	love.mouse.setVisible(false)
	love.mouse.setRelativeMode(true)
	self.title = map.layers["title"]
end

function TitleMap:keypressed_escape()
	love.event.quit()
end

--[[
function TitleMap:touchpressed(touch, x, y, dx, dy)
	self:startGame()
end

function TitleMap:mousepressed(x, y, button)
	if button == 1 then
		self:startGame()
	end
end

function TitleMap:keypressed_z()
	self:startGame()
end

function TitleMap:joystickpressed(joystick, button)
	if button == 1 then
		self:startGame()
	end
end
]]
function TitleMap:endMove(dt)
	if self.title then
		self.title.offsety = self.title.offsety + 
			math.cos(math.pi*love.timer.getTime())/4
	end
	if levity.scripts:call("curtain", "finishedClosing") then
		levity:setNextMap(self.properties.nextmap)
	end
end

function TitleMap:startGame(firstmap)
	if levity.scripts:call("curtain", "isClosing") then
		return
	end
	self.properties.nextmap = firstmap
	levity.scripts:send("curtain", "beginClose")
	if levity.bank.currentmusic then
		levity.bank.currentmusic:fade()
	end
end

return TitleMap
