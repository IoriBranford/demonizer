local levity = require "levity"
local Object = require "levity.object"
local ShmupPlayer = require("ShmupPlayer")

local ShmupTouchControls = class(require("Script"))
function ShmupTouchControls:_init(layer)
	self.layer = layer
	self.playerid = levity.map.properties.playerid

	--if levity.map.properties.delayinitobjects == true then
	--	for _, object in pairs(self.layer.objects) do
	--		Object.init(object, self.layer)
	--	end
	--end

	for i, object in ipairs(self.layer.objects) do
		if object.name == "move" then
			self.movemarker = object
			object.visible = false
		elseif object.name == "focus" then
			self.focusmarker = object
			object.visible = false
		end
	end

	self.numtouches = 0
	--self.movetouch = nil
	--self.focustouch = nil
	--self.bombtouch = nil
end

--function ShmupTouchControls:updateMarker(marker, x, y, dx, dy)
--	x, y = levity:screenToCamera(x, y)
--	marker.body:setPosition(x, y)
--	if dx and dy then
--		marker.body:setAngle(math.atan2(dy, dx))
--	end
--end

function ShmupTouchControls:touchpressed(touch, x, y, dx, dy)
--	if levity.map.paused then
--		return
--	end

	self.numtouches = self.numtouches + 1

	if self.numtouches == 1 then
--		self:call(self.playerid, "buttonchanged",
--					ShmupPlayer.Button_Fire, true)
		self:call(self.playerid, "buttonchanged",
					ShmupPlayer.Button_Focus, true)
	end

	if self.numtouches == 2 then
--		local focused = self:call(self.playerid, "isFocused")
--		self:call(self.playerid, "buttonchanged",
--					ShmupPlayer.Button_Focus, not focused)
--	end
--
--	if self.numtouches == 3 then
		self:call(self.playerid, "buttonchanged",
					ShmupPlayer.Button_Bomb, true)
	end

--	if not self.movetouch then
--		self.movetouch = touch
--		self:call(self.playerid, "buttonchanged",
--					ShmupPlayer.Button_Fire, true)
--		self.movemarker.visible = true
--		self:updateMarker(self.movemarker, x, y)
--	elseif not self.focustouch then
--		self.focustouch = touch
--		self:call(self.playerid, "buttonchanged",
--					ShmupPlayer.Button_Focus, true)
--		self.focusmarker.visible = true
--		self:updateMarker(self.focusmarker, x, y)
--	elseif not self.bombtouch then
--		self.bombtouch = touch
--		self:call(self.playerid, "buttonchanged",
--					ShmupPlayer.Button_Bomb, true)
--	end
end

function ShmupTouchControls:touchmoved(touch, x, y, dx, dy)
	self:call(self.playerid, "mousemoved", x, y, dx, dy)
--	if touch == self.movetouch then
--		self:call(self.playerid, "mousemoved", x, y, dx, dy)
--		self:updateMarker(self.movemarker, x, y, dx, dy)
--	elseif touch == self.focustouch then
--		self:updateMarker(self.focusmarker, x, y)
--	end
end

function ShmupTouchControls:touchreleased(touch, x, y, dx, dy)
	self.numtouches = self.numtouches - 1

	if self.numtouches == 0 then
--		self:call(self.playerid, "buttonchanged",
--					ShmupPlayer.Button_Fire, false)
		self:call(self.playerid, "buttonchanged",
					ShmupPlayer.Button_Focus, false)
	end

--	if touch == self.bombtouch then
--		self:call(self.playerid, "buttonchanged",
--					ShmupPlayer.Button_Bomb, false)
--		self.bombtouch = nil
--	elseif touch == self.focustouch then
--		self:call(self.playerid, "buttonchanged",
--					ShmupPlayer.Button_Focus, false)
--		self.focustouch = nil
--		self.focusmarker.visible = false
--	elseif touch == self.movetouch then
--		self:call(self.playerid, "buttonchanged",
--					ShmupPlayer.Button_Fire, false)
--		self:call(self.playerid, "mousemoved", x, y, dx, dy)
--		self.movetouch = nil
--		self.movemarker.visible = false
--	end
end

function ShmupTouchControls:beginDraw()
	self.layer.offsetx = levity.camera.x
	self.layer.offsety = levity.camera.y
end

return ShmupTouchControls
