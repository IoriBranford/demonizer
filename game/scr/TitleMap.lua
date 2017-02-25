local levity = require "levity"

local TitleMap = class(function(self, id)
	self.map = levity.map
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

function TitleMap:joystickpressed(joystick, button)
	if button == 1 then
		levity:setNextMap(self.properties.nextmap)
	end
end

return TitleMap
