--- Shadow or other sprite under character based on the tile under their feet

local levity = require "levity"

local Shadow = class()
function Shadow:_init(object)
	self.id = object.id
	self.object = object
	self.properties = object.properties
end

function Shadow:setShadow(tileset, tileid)
	if self.shadowtileset ~= tileset
	or self.shadowtileid ~= tileid
	then
		return self:forceShadow(tileset, tileid)
	end
	local shadowid = self.shadowid
	return shadowid and levity:getObject(shadowid)
end

function Shadow:forceShadow(tileset, tileid)
	self.shadowtileset, self.shadowtileid = tileset, tileid
	local gid = tileset and tileid and levity.map:getTileGid(tileset, tileid)

	local shadowid = self.shadowid
	local shadow = shadowid and levity:getObject(shadowid)
	if not shadow then
		if gid then
			shadow = {
				id = levity.map:newObjectId(),
				gid = gid
			}
			self.object.layer:addObject(shadow)
			self.shadowid = shadow.id
		end
	else
		if gid then
			shadow:setGid(gid)
		end
		shadow.visible = gid ~= nil
	end
	return shadow
end

function Shadow:endMove(dt)
	local shadowtileset, shadowtileid
	local layer = self.object.layer
	local shadowtilelayer = levity.map.layers[layer.properties.shadowtilelayer]
	if shadowtilelayer then
		local x1, y1, x2, y2 = self.object:getBoundingBox()
		local c, r = levity.map:convertPixelToTile(self.object.x, y2)
		c = math.ceil(c)
		r = math.ceil(r)
		local shadowtile = shadowtilelayer.data[r][c]
		if shadowtile then
			shadowtileset = shadowtile.properties.shadowtileset
			shadowtileid = shadowtile.properties.shadowtileid
		end
	end
	local shadow = self:setShadow(shadowtileset, shadowtileid)
	if shadow and shadow.body then
		local offx = self.properties.shadowoffsetx or 0
		local offy = self.properties.shadowoffsety or -1/64
		local x, y = self.object.body:getPosition()
		shadow.body:setPosition(x + offx, y + offy)
	end
end

function Shadow:discard()
	local shadowid = self.shadowid
	if shadowid then
		levity:discardObject(shadowid)
	end
end

return Shadow
