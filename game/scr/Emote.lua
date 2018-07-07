local levity = require "levity"

local Emote = class()
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

function Emote:forceEmote(tileset, tileid)
	self.properties.emotetileset, self.properties.emotetileid = tileset, tileid
	local gid = tileset and tileid and levity.map:getTileGid(tileset, tileid)

	local emoteid = self.emoteid
	local emote = emoteid and levity:getObject(emoteid)
	if not emote then
		if gid then
			emote = {
				id = levity.map:newObjectId(),
				gid = gid
			}
			self.object.layer:addObject(emote)
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
		emote.body:setPosition(self.object.body:getPosition())
	end
end

function Emote:discard()
	local emoteid = self.emoteid
	if emoteid then
		levity:discardObject(emoteid)
	end
end

return Emote
