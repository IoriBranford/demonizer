local levity = require "levity"

local UIButton = class(require("Script"))
function UIButton:_init(object)
	self.object = object
	self.pressed = false
	self.properties = object.properties

	local action = self.properties.action
	local initLock = action and self["initLock_"..action]
	if initLock then
		initLock(self)
	end
end

function UIButton:isVisible()
	return self.object.visible and self.object.layer.visible
end

function UIButton:isPressable()
	return self:isVisible() and not self.locked
end

function UIButton:mousepressed(x, y, button)
	if button == 1 then
		self:touchpressed(nil, x, y)
	end
end

function UIButton:mousemoved(x, y, dx, dy)
	if love.mouse.isDown(1) then
		self:touchmoved(nil, x, y, dx, dy)
	end
end

function UIButton:mousereleased(x, y, button)
	if button == 1 then
		self:touchreleased(nil, x, y)
	end
end

function UIButton:playPressSound()
	local presssound = self.properties.presssound
	if presssound then
		levity.bank:play(presssound)
	end
end

function UIButton:touchpressed(touch, x, y, dx, dy, pressure)
	if self:isPressable() then
		x, y = levity:screenToCamera(x, y)
		if math.rectsisect(x, y, 0, 0, self.object.x, self.object.y,
			self.object.width, self.object.height)
		then
			self:playPressSound()
			self:press()
			self:call(self.object.layer.name,
				"setCursorButton", self.object.id)
		else
			self:unpress()
		end
	end
end

function UIButton:touchmoved(touch, x, y, dx, dy, pressure)
	if self:isPressable() then
		x, y = levity:screenToCamera(x, y)
		self.pressed = math.rectsisect(x, y, 0, 0,
			self.object.x, self.object.y,
			self.object.width, self.object.height)
	end
end

function UIButton:touchreleased(touch, x, y, dx, dy, pressure)
	if self:isPressable() then
		x, y = levity:screenToCamera(x, y)
		if math.rectsisect(x, y, 0, 0, self.object.x, self.object.y,
			self.object.width, self.object.height)
		then
			self.pressed = false
			self:activate()
		end
	end
end

function UIButton:setLock(locked)
	self.locked = locked
end

function UIButton:press()
	self.pressed = true
end

function UIButton:unpress()
	self.pressed = false
end

function UIButton:activate()
	local action = self.properties.action
	action = action and self[action]
	if action then
		action(self)
	end
end

function UIButton:beginDraw()
	local x, y, w, h = self.object.x, self.object.y,
				self.object.width, self.object.height
	local fillwidth = self.properties.fillwidth or w

	if self.locked then
		for i = 1, 4 do
			self.object.color[i] = 0x80
		end
		levity.setColorARGB(self.properties.lockedfillcolor or "#80202020")
		love.graphics.rectangle("fill", x, y, w, h)
	else
		for i = 1, 4 do
			self.object.color[i] = 0xff
		end
		if self.pressed then
			levity.setColorARGB(self.properties.pressfillcolor or "#807359a5")
			love.graphics.rectangle("fill", x, y, fillwidth, h)
		else
			levity.setColorARGB(self.properties.fillcolor or "#80292042")
			love.graphics.rectangle("fill", x, y, fillwidth, h)
			levity.setColorARGB(self.properties.linecolor or "#ff523c84")
			love.graphics.rectangle("line", x, y, w, h)
		end
	end

	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

function UIButton:drawPressedOutline()
	local x, y, w, h = self.object.x, self.object.y,
				self.object.width, self.object.height
	levity.setColorARGB(self.properties.presslinecolor or "#ffa478ff")
	love.graphics.rectangle("line", x, y, w, h)
	love.graphics.setColor(0xff, 0xff, 0xff, 0xff)
end

function UIButton:initLock_startGame()
	self:setLock(not love.filesystem.exists(self.properties.nextmap))
end

function UIButton:initLock_changeMenu()
	if self.properties.nextmenu == "options_controller" then
		self:setLock(love.joystick:getJoystickCount() < 1)
	end
end

UIButton.joystickadded = UIButton.initLock_changeMenu
UIButton.joystickremoved = UIButton.initLock_changeMenu

function UIButton:playerExit()
	self:send(levity.map.properties.playerid, "startExit")

	local menu = self.object.layer
	if menu then
		for _, object in pairs(menu.objects) do
			levity:discardObject(object.id)
		end
	end
end

function UIButton:startGame()
	self:send(levity.mapfile, "startGame", self.properties.nextmap)

	local menu = self.object.layer
	if menu then
		for _, object in pairs(menu.objects) do
			levity:discardObject(object.id)
		end
	end
end

function UIButton:goBack()
	self:send(levity.mapfile, "goBack")
end

function UIButton:changeMap()
	levity:setNextMap(self.properties.nextmap)
end

function UIButton:restartMap()
	levity:setNextMap(levity.map.name, {})
end

function UIButton:togglePause()
	self:send(self.object.layer.name, "togglePause")
end

function UIButton:changeMenu()
	self:send(levity.mapfile, "changeMenu", self.properties.nextmenu)
end

function UIButton:resetPrefs()
	levity.prefs.reset()
	self:broadcast("prefsReset")
end

function UIButton:quitToWebsite()
	love.system.openURL("https://ioribranford.itch.io/demonizer")
	love.event.quit()
end

return UIButton
