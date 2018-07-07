local levity = require "levity"

local ItemsLayer = class()

function ItemsLayer:_init(layer)
	self.layer = layer
	self.properties = layer.properties
	self:initSpriteBatch(self.properties.itemtileset or "item")
end

function ItemsLayer:initSpriteBatch(itemtileset)
	self.properties.itemtileset = itemtileset
		or self.properties.itemtileset
	self.batch = levity.map:newSpriteBatch(self.properties.itemtileset, 128)
	self.freesprites = {}
end

function ItemsLayer:add(itemtile, x, y)
	local gid = levity.map:getTileGid(self.properties.itemtileset, itemtile)
	if not gid then
		return
	end
	if #self.freesprites > 0 then
		local i = self.freesprites[#self.freesprites]
		self.freesprites[#self.freesprites] = nil
		self:set(i, itemtile, x, y)
		return i
	end
	return levity.map:addBatchSprite(self.batch, gid, x, y)
end

function ItemsLayer:set(i, itemtile, x, y)
	local gid = levity.map:getTileGid(self.properties.itemtileset, itemtile)
	if not gid then
		return
	end
	levity.map:setBatchSprite(self.batch, i, gid, x, y)
end

function ItemsLayer:remove(i)
	self.freesprites[#self.freesprites + 1] = i
	levity.map:setBatchSprite(self.batch, i, nil)
end

function ItemsLayer:endMove(dt)
end

function ItemsLayer:beginDraw()
	local sin = 1 + 0.5*math.sin(math.pi*15*love.timer.getTime())
	love.graphics.setColor(0xff*sin, 0xff*sin, 0xff*sin)
end

function ItemsLayer:drawOver()
	love.graphics.draw(self.batch)
end

function ItemsLayer:endDraw()
	love.graphics.setColor(0xff, 0xff, 0xff)
end

return ItemsLayer
