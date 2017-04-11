local levity = require "levity"

local TitleMap = class(function(self, map)
	self.map = map
	self.properties = self.map.properties

	local music = self.map.properties.music
	if music then
		levity.bank:load(music, "emu")
		levity.bank:play(music)
	end

	love.mouse.setVisible(true)
	love.mouse.setRelativeMode(false)
end)

function TitleMap:touchpressed(touch, x, y, dx, dy)
	self:joystickpressed(nil, 1)
end

function TitleMap:mousepressed(x, y, button)
	self:joystickpressed(nil, button)
end

function TitleMap:keypressed_z()
	self:joystickpressed(nil, 1)
end

function TitleMap:keypressed_escape()
	love.event.quit()
end

local function endMove(self, dt)
	local uimap = self.map.overlaymap or self.map
	if uimap.scripts:call("curtain", "finishedClosing") then
		levity:setNextMap(self.properties.nextmap)
	end
end

function TitleMap:joystickpressed(joystick, button)
	if button == 1 then
		local uimap = self.map.overlaymap or self.map
		uimap.scripts:call("curtain", "beginClose")
		if levity.bank.currentmusic then
			levity.bank.currentmusic:fade()
		end
		self.map.scripts:scriptRemoveEventFunc(self, self.map.name, "joystickpressed")
		self.map.scripts:scriptAddEventFunc(self, self.map.name, "endMove", endMove)
	end
end

return TitleMap
