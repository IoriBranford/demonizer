local levity = require "levity"
local Human = require "Human"

local Princess = class(Human)
function Princess:_init(object)
	self:super(object)

	self.object = object
	self.id = object.id
	self.body = object.body
	self.properties = object.properties

	self.coroutine = levity.scripts:newScript(self.id, "Coroutine", object)
end

function Princess:canBeCaptured()
	return false
end

function Princess:defeatCoroutine(dt)
	self.object:setGid(self.object.gid, levity.map, false)
	local t = 0
	repeat
		t = t + dt
		self.body:setLinearVelocity(
			-60*math.sin(math.max(0, t-2) * 30 * math.pi),
			0)
		self, dt = coroutine.yield()
	until t >= 3
	self.body:setLinearVelocity(0, 0)

	local gid = levity.map:getTileGid(self.object.tile.tileset, "down")
	self.object:setGid(gid, levity.map, false)
	t = 0
	repeat
		t = t + dt
		self, dt = coroutine.yield()
	until t >= 1

	gid = levity.map:getTileGid(self.object.tile.tileset, "up")
	self.object:setGid(gid, levity.map)

	local vx = (levity.map.tilewidth*levity.map.width/2 - self.body:getX())
	local vy = -self.body:getY()
	local dist = math.hypot(vx, vy)
	vx = vx * 1.5 * self.properties.pathspeed / dist
	vy = vy * 1.5 * self.properties.pathspeed / dist
	self.body:setLinearVelocity(vx, vy)
	repeat self, dt = coroutine.yield() until self.body:getY() <= 0

	levity.scripts:broadcast("playerWon")
	levity:discardObject(self.object.id)
end

function Princess:defeat()
	Human.defeat(self)
	self.coroutine:startCoroutine(self.defeatCoroutine, self)
end

return Princess
