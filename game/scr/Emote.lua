local levity = require "levity"

local Emote = class(require("Script"))
function Emote:_init(object)
	self.id = object.id
	self.object = object
	self.properties = object.properties
	self:forceEmote(self.properties.emotetileset, self.properties.emotetileid)
end

function Emote:setEmote(tileset, tileid)
	if self.properties.emotetileset ~= tileset
	or self.properties.emotetileid ~= tileid
	then
		self:forceEmote(tileset, tileid)
	end
end

function Emote:preTypeChange(oldtype, newtype)
	if not oldtype then
		return
	end
	self:setEmote(newtype.emotetileset, newtype.emotetileid)
end

function Emote:forceEmote(tileset, tileid)
	self.properties.emotetileset, self.properties.emotetileid = tileset, tileid
	local gid = tileset and tileid and levity.map:getTileGid(tileset, tileid)

	local emoteid = self.emoteid
	local emote = emoteid and levity:getObject(emoteid)
	if not emote then
		if gid then
			emote = levity.map:newObject(self.object.layer)
			emote.gid = gid
			self.emoteid = emote.id
		end
	else
		if gid then
			emote:setGid(gid)
		end
		emote.visible = gid ~= nil
	end
end

function Emote:endMove(dt)
	local emoteid = self.emoteid
	local emote = emoteid and levity:getObject(emoteid)
	if emote then
		local offx = self.properties.emoteoffsetx or 0
		local offy = self.properties.emoteoffsety or 0
		local x, y = self.object.body:getPosition()
		emote.body:setPosition(x + offx, y + offy)
	end
end

function Emote:discard()
	local emoteid = self.emoteid
	if emoteid then
		levity:discardObject(emoteid)
	end
end

return Emote
