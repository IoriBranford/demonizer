local levity = require "levity"

local ShmupTouchControls = class(function(self, id)
	self.layer = levity.map.layers[id]
	self.playerid = levity.map.properties.playerid

	for i, object in ipairs(self.layer.objects) do
		if object.name == "move" then
			self.movemarker = object
			object.visible = false
		elseif object.name == "focus" then
			self.focusmarker = object
			object.visible = false
		end
	end

	self.movetouch = nil
	self.focustouch = nil
end)

function ShmupTouchControls:updateMarker(marker, x, y, dx, dy)
	x, y = levity:screenToCamera(x, y)
	marker.body:setPosition(x, y)
	if dx and dy then
		marker.body:setAngle(math.atan2(dy, dx))
	end
end

function ShmupTouchControls:touchpressed(touch, x, y, dx, dy)
	if levity.mappaused then
		return
	end

	if not self.movetouch then
		self.movetouch = touch
		self.movemarker.visible = true
		self:updateMarker(self.movemarker, x, y)
	elseif not self.focustouch then
		self.focustouch = touch
		levity.machine:call(self.playerid, "setFocused", true)
		self.focusmarker.visible = true
		self:updateMarker(self.focusmarker, x, y)
	end
end

function ShmupTouchControls:touchmoved(touch, x, y, dx, dy)
	if touch == self.movetouch then
		levity.machine:call(self.playerid, "mousemoved", x, y, dx, dy)
		self:updateMarker(self.movemarker, x, y, dx, dy)
	elseif touch == self.focustouch then
		self:updateMarker(self.focusmarker, x, y)
	end
end

function ShmupTouchControls:touchreleased(touch, x, y, dx, dy)
	if touch == self.focustouch then
		levity.machine:call(self.playerid, "setFocused", false)
		self.focustouch = nil
		self.focusmarker.visible = false
	elseif touch == self.movetouch then
		levity.machine:call(self.playerid, "mousemoved", x, y, dx, dy)
		self.movetouch = nil
		self.movemarker.visible = false
	end
end

function ShmupTouchControls:beginDraw()
	self.layer.offsetx = levity.camera.x
	self.layer.offsety = levity.camera.y
end

return ShmupTouchControls
