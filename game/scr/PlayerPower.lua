local levity = require "levity"

local PlayerPower
PlayerPower = class(function(self, object)
	self.object = object

	if not PlayerPower.DotPositions then
		local positions = {}
		local tile = levity.map.tiles[object.gid]
		local tileshapes = tile.objectGroup.objects
		local tileheight = levity.map:getTileset(tile.tileset).tileheight
		-- bottom left origin
		-- TODO in levity transform all tile objects so scripts don't have to
		for _, shape in pairs(tileshapes) do
			local i = tonumber(shape.name:match("power(%x+)"))
			if i then
				positions[i] = {shape.x, shape.y - tileheight}
			end
		end
		PlayerPower.DotPositions = positions
	end

	local dotgid = levity.map:getTileGid("particles", "powerdot")
	self.dotsprites = levity.map:newSpriteBatch("particles",
						#PlayerPower.DotPositions)

	for i, pos in ipairs(PlayerPower.DotPositions) do
		local si = levity.map:addBatchSprite(self.dotsprites, dotgid,
						pos[1], pos[2])
		assert(si == i)
		self:setDotVisible(i, false)
	end
end)

PlayerPower.DotPositions = nil

function PlayerPower:setDotVisible(i, visible)
	if visible then
		local dotgid = levity.map:getTileGid("particles", "powerdot")
		local pos = PlayerPower.DotPositions[i]
		levity.map:setBatchSprite(self.dotsprites, i, dotgid,
						pos[1], pos[2])
	else
		levity.map:setBatchSprite(self.dotsprites, i, nil)
	end
end

function PlayerPower:endMove(dt)
	local teammemberid = self.object.properties.teammemberid
	local teammember = levity.map.objects[teammemberid]
	if not teammember then
		levity:discardObject(self.object.id)
		return
	end

	local x, y = teammember.body:getPosition()
	self.object.body:setPosition(x, y + 1/64)

	local tile
	if levity.map.scripts:call(teammemberid, "isPoweredUp") then
		tile = "full"
	else
		tile = "notfull"
	end
	self.object:setGid(levity.map:getTileGid("powergauge", tile), levity.map)

	local uimap = levity.map.overlaymap
	local scoreid = uimap.scripts:call("status", "getScoreId")
	local mult = uimap.scripts:call(scoreid, "getMultiplier", teammemberid)
		or 0
	for i = 1, mult do
		self:setDotVisible(i, true)
	end
	for i = mult+1, #PlayerPower.DotPositions do
		self:setDotVisible(i, false)
	end
end

function PlayerPower:beginDraw()
	love.graphics.setColor(0xff, 0xff, 0xff, 0x80)
end

function PlayerPower:endDraw()
	love.graphics.setColor(0xff, 0xff, 0xff)
	love.graphics.draw(self.dotsprites, self.object.body:getPosition())
end

function PlayerPower.create(teammemberid, layer)
	local powergauge = {
		id = levity.map:newObjectId(),
		gid = levity.map:getTileGid("powergauge", "notfull"),
		properties = {
			teammemberid = teammemberid,
			script = "PlayerPower"
		}
	}

	layer:addObject(powergauge)

	return powergauge.id
end

return PlayerPower
