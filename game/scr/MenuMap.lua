local levity = require "levity"
local UIMenu = require "UIMenu"

local MenuMap = class()
function MenuMap:_init(map)
	self.map = map
	self.properties = self.map.properties

	local music = self.map.properties.music
	if music then
		levity.bank:load(music, "emu")
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

	local os = love.system.getOS()
	local ismobile = (os == "Android" or os == "iOS")
	if ismobile then
		local i, j = self.currentmenuid:find("_pc")
		if i and j == self.currentmenuid:len() then
			self.map.layers[self.currentmenuid].visible = false
			self:changeMenu(self.currentmenuid:sub(1, i-1).."_mobile")
		end
	end
end

function MenuMap:changeMenu(nextmenu)
	self.nextmenu = nextmenu
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
	levity.scripts:send(self.currentmenuid, "initCursor")
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
	else
		love.event.quit()
	end
end

function MenuMap:endMove(dt)
	self:doChangeMenu(self.nextmenu)

	if levity.scripts:call("curtain", "finishedClosing") then
		levity:setNextMap(self.properties.nextmap)
	end
end

function MenuMap:startGame(firstmap)
	if levity.scripts:call("curtain", "isClosing") then
		return
	end
	self.properties.nextmap = firstmap
	levity.scripts:send("curtain", "beginClose")
	if levity.bank.currentmusic then
		levity.bank.currentmusic:fade()
	end
end

return MenuMap
