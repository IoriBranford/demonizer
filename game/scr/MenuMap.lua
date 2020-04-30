local levity = require "levity"
local UIMenu = require "UIMenu"

local MenuMap = class(require("Script"))

local function getOSSpecificMenu(menuname)
	local i, j = menuname:find("_pc")
	if i and j == menuname:len() then
		local os = love.system.getOS()
		local ismobile = (os == "Android" or os == "iOS")
		if ismobile then
			menuname = menuname:sub(1, i-1).."_mobile"
		end
	end
	return menuname
end

function MenuMap:_init(map)
	self.map = map
	self.properties = self.map.properties

	local music = self.map.properties.music
	if music then
		levity.bank:play(music)
	end

	love.mouse.setVisible(false)
	love.mouse.setRelativeMode(true)

	local firstmenu = self.properties.firstmenu
	local layers = map.layers
	if firstmenu then
		for i = 1, #layers do
			local layer = layers[i]
			if levity.scripts:idHasScript(layer.name, UIMenu) then
				if layer.name == firstmenu then
					layer.visible = true
					self.currentmenuid = layer.name
				else
					layer.visible = false
				end
			end
		end
	else
		for i = 1, #layers do
			local layer = layers[i]
			if levity.scripts:idHasScript(layer.name, UIMenu) then
				if layer.visible then
					self.currentmenuid = layer.name
					break
				end
			end
		end
	end

	local osspecificmenu = self.currentmenuid and getOSSpecificMenu(self.currentmenuid)
	if self.currentmenuid ~= osspecificmenu then
		self.map.layers[self.currentmenuid].visible = false
		self:changeMenu(osspecificmenu)
	end

	self.screeneffect = levity.scripts:newScript(self.map.name, "ScreenEffectDrunk", map)
end

function MenuMap:changeMenu(nextmenu)
	self.nextmenu = getOSSpecificMenu(nextmenu)
end

function MenuMap:doChangeMenu(nextmenu)
	nextmenu = self.map.layers[nextmenu]
	if not nextmenu then
		return
	end
	local menu = self.currentmenuid and self.map.layers[self.currentmenuid]
	if menu then
		menu.visible = false
	end
	nextmenu.visible = true
	self.currentmenuid = nextmenu.name
	self:send(self.currentmenuid, "initCursor")
	self.nextmenu = nil
end

function MenuMap:goBack()
	local menu = self.currentmenuid and self.map.layers[self.currentmenuid]
	local prevmenu = menu and menu.properties.prevmenu
	local prevmap = self.properties.prevmap
	if prevmenu then
		self:changeMenu(prevmenu)
	elseif prevmap then
		levity:setNextMap(prevmap)
	elseif not levity.prefs.exhibit then
		love.event.quit()
	end
end

function MenuMap:endMove(dt)
	local attracttime = self.properties.attractmodewaittime
	if attracttime then
		attracttime = attracttime - dt
		self.properties.attractmodewaittime = attracttime
		if attracttime <= 0 then
			local attractmaps = {
				"demonrealm.lua", "village.lua"
			}
			for mapfile in ipairs({"chapel.lua", "cave.lua"}) do
				if love.filesystem.getInfo(mapfile) then
					attractmaps[#attractmaps+1] = mapfile
				end
			end
			local nextmap = attractmaps[love.math.random(#attractmaps)]
			levity:setNextMap(nextmap, {attractmode=true})
			return
		end
	end

	self:doChangeMenu(self.nextmenu)

	if self:call("curtain", "finishedClosing") then
		levity:setNextMap(self.properties.nextmap)
	end
end

function MenuMap:startGame(firstmap)
	if self:call("curtain", "isClosing") then
		return
	end
	self.properties.nextmap = firstmap
	levity.bank:play(self.properties.startgamesound)
	if levity.bank.currentmusic then
		self:send("curtain", "beginClose")
		levity.bank.currentmusic:fade()
	else
		self:send("curtain", "beginClose", 1.5)
	end
end

function MenuMap:keypressed_f12()
	local filename = os.date("shot_%Y-%m-%d_%H-%M-%S")
	if love.filesystem.getInfo(filename) then
		for i = 1, 999 do
			local newfilename = filename..'_'..i
			if not love.filesystem.getInfo(newfilename) then
				filename = newfilename
				break
			end
		end
	end

	local screenshotdata = love.graphics.newScreenshot()
	screenshotdata:encode("png", filename..".png")
end

return MenuMap
