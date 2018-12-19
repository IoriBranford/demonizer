local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local Mover = require "Mover"

local math_huge = math.huge
local math_min = math.min
local math_max = math.max

local ShmupCam = class()
function ShmupCam:_init(object)
	self.object = object
	self.properties = self.object.properties
	self.body = object.body

	self.x0 = self.object.x
	self.object.visible = false
	self.body:setFixedRotation(true)

	for _, fixture in ipairs(self.body:getFixtureList()) do
		fixture:setFriction(0)
		fixture:setCategory(ShmupCollision.Category_Camera)
	end

	local edgefixture = love.physics.newFixture(self.body,
		love.physics.newChainShape(true,
			0, 0,
			0, self.object.height,
			self.object.width, self.object.height,
			self.object.width, 0))
	edgefixture:setCategory(ShmupCollision.Category_CameraEdge)
	edgefixture:setMask(
		ShmupCollision.Category_Default,
		ShmupCollision.Category_EnemyBounds)

	self.camera = levity.camera
	local cx, cy = self.body:getWorldCenter()
	self.camera:set(cx, cy,
		self.object.width, self.object.height)
		--love.graphics.getWidth(), love.graphics.getHeight()) -- debug offscreen object behavior
	local mapwidth = (levity.map.width * levity.map.tilewidth)
	self.mapwidthratio = 1 - (self.object.width / mapwidth)

	self.mover = levity.scripts:newScript(self.object.id, "Mover", self.object)
end

function ShmupCam:getBoundingBox()
	local left = math_huge
	local top = math_huge
	local right = -math_huge
	local bottom = -math_huge
	local fixtures = self.body:getFixtureList()
	for i = 1, #fixtures do
		local l, t, r, b = fixtures[i]:getBoundingBox()
		left = math_min(left, l)
		right = math_max(right, r)
		top = math_min(top, t)
		bottom = math_max(bottom, b)
	end
	return left, top, right, bottom
end

function ShmupCam:startPath(pathid, pathspeed)
	self.properties.pathid = pathid
	self.properties.pathspeed = pathspeed
end

function ShmupCam:beginMove(dt)
	local body = self.body
	local mass = 0x40000000 -- don't let others push it around
	body:setMass(mass)

	if self.mover then
		self.mover:setOffsetX(body:getX() - self.x0)
	end
end

function ShmupCam:endMove(dt)
	local cx, cy = self.body:getWorldCenter()
	self.camera:set(cx, cy)
end

function ShmupCam:swayWithPlayer(playerx)
	local x = (playerx * self.mapwidthratio)
	self.body:setX(x)
	local cx, cy = self.body:getWorldCenter()
	self.camera:set(cx, cy)
end

function ShmupCam:getVectorFromCenter(x, y)
	local cx, cy = self.body:getWorldCenter()
	return x - cx, y - cy
end

function ShmupCam:getVelocity()
	return self.body:getLinearVelocity()
end

function ShmupCam:playerLost()
	self.properties.pathspeed = 0
end

return ShmupCam
