local levity = require "levity"

local ComicMap = class()

function ComicMap:_init(map)
	self.properties = map.properties
	self.layers = map.layers
	for _, layer in pairs(self.layers) do
		layer.visible = false
		if layer.objects then
			for _, object in pairs(layer.objects) do
				object.visible = true
			end
		end
	end

	self.pageidx = 1
	self.coveridx = 1
	self.timer = self.layers[2].properties.waittime or 0
end

function ComicMap:beginMove(dt)
	if levity.scripts:call("curtain", "isClosing") then
		if levity.scripts:call("curtain", "finishedClosing") then
			levity:setNextMap(self.properties.nextmap, levity.nextmapdata)
		end
		return
	end

	self.timer = self.timer - dt
	if self.timer > 0 then
		return
	end

	local i = self.pageidx
	local j = self.coveridx
	local imagelayer = self.layers[2*i-1]
	local coverlayer = self.layers[2*i]

	if not coverlayer.visible then
		imagelayer.visible = true
		coverlayer.visible = true
	end

	if j <= #coverlayer.objects then
		local cover = coverlayer.objects[j]
		cover.visible = false
		levity.bank:play(cover.properties.opensound)
		if cover.properties.openmusicfade then
			if levity.bank.currentmusic then
				levity.bank.currentmusic:fade()
			end
		end
		local music = cover.properties.openmusic
		if music then
			levity.bank:play(music)
		end
		self.coveridx = j+1
		self.timer = self.timer + cover.properties.opentime
	elseif i < math.floor(#self.layers/2) then
		local newcoverlayer = self.layers[2*i+2]
		imagelayer.visible = false
		coverlayer.visible = false
		self.pageidx = i+1
		self.coveridx = 1
		self.timer = newcoverlayer.properties.waittime or 0
	else
		self:endMap()
	end
end

function ComicMap:endMap()
	if not levity.scripts:call("curtain", "isClosing") then
		self.layers["curtain"].visible = true
		levity.scripts:send("curtain", "beginClose")
		if levity.bank.currentmusic then
			levity.bank.currentmusic:fade()
		end
	end
end

function ComicMap:skip(skipall)
	if skipall then
		self:endMap()
	else
		self.timer = 0
	end
end

function ComicMap:keypressed(key)
	self:skip(key == levity.prefs.key_pausemenu)
end

function ComicMap:joystickpressed(joystick, button)
	self:skip(button == levity.prefs.joy_pausemenu)
end

function ComicMap:touchpressed()
	self.timer = 0
end

function ComicMap:mousepressed()
	self.timer = 0
end

return ComicMap
