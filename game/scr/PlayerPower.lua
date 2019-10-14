local levity = require "levity"
local ShmupScore

local PlayerPower = class(require("Script"))
function PlayerPower:_init(object)
	self.object = object
	ShmupScore = require "ShmupScore"

	if not PlayerPower.DotPositions then
		local positions = {}
		local gid = object.gid
		for i = 1, ShmupScore.MaxMultiplier do
			positions[i] = {
				levity.map:getTileShapePosition(gid, "power"..i)
			}
		end
		PlayerPower.DotPositions = positions
	end

	local dotgid = levity.map:getTileGid("particles", "powerdot")
	self.dotsprites = levity.map:newSpriteBatch("particles",
						#PlayerPower.DotPositions)

	for i, pos in ipairs(PlayerPower.DotPositions) do
		local si = levity.map:addBatchSprite(self.dotsprites, dotgid,
						pos[1], pos[2])
	end
	self:updateDots(self.object.properties.initmult or 0)
end

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

	local newgid
	if self:call(teammemberid, "isPoweredUp") then
		newgid = levity.map:getTileGid("powergauge", "full")
	else
		newgid = levity.map:getTileGid("powergauge", "notfull")
	end
	if newgid ~= self.object.gid then
		self.object:setGid(newgid)
	end
end

function PlayerPower:multiplierUpdated(teammemberid, mult)
	if teammemberid == "all"
	or teammemberid == self.object.properties.teammemberid then
		self:updateDots(mult)
	end
end

function PlayerPower:updateDots(mult)
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

function PlayerPower.create(teammemberid, layer, initmult)
	local powergauge = levity.map:newObject(layer)
	powergauge.gid = levity.map:getTileGid("powergauge", "notfull")
	powergauge.properties.teammemberid = teammemberid
	powergauge.properties.initmult = initmult
	powergauge.properties.script = "PlayerPower"

	return powergauge.id
end

return PlayerPower
