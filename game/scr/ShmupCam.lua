local levity = require "levity"
local ShmupCollision = require "ShmupCollision"
local Mover = require "Mover"

local ShmupCam = class()
function ShmupCam:_init(object)
	self.object = object
	self.properties = self.object.properties

	self.x0 = self.object.x
	self.object.visible = false
	self.object.body:setFixedRotation(true)

	for _, fixture in ipairs(self.object.body:getFixtureList()) do
		fixture:setFriction(0)
		fixture:setCategory(ShmupCollision.Category_Camera)
	end

	local edgefixture = love.physics.newFixture(self.object.body,
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
	local cx, cy = self.object.body:getWorldCenter()
	self.camera:set(cx, cy, self.object.width, self.object.height)

	local mapwidth = (levity.map.width * levity.map.tilewidth)
	self.mapwidthratio = 1 - (self.object.width / mapwidth)

	self.mover = levity.scripts:newScript(self.object.id, "Mover", self.object)
end

function ShmupCam:startPath(pathid, pathspeed)
	self.properties.pathid = pathid
	self.properties.pathspeed = pathspeed
end

function ShmupCam:beginMove(dt)
	local body = self.object.body
	local mass = 0x40000000 -- don't let others push it around
	body:setMass(mass)

	if self.mover then
		self.mover:setOffsetX(body:getX() - self.x0)
	end
end

function ShmupCam:endMove(dt)
	local cx, cy = self.object.body:getWorldCenter()
	self.camera:set(cx, cy)
end

function ShmupCam:swayWithPlayer(playerx)
	local x = (playerx * self.mapwidthratio)
	self.object.body:setX(x)
	local cx, cy = self.object.body:getWorldCenter()
	self.camera:set(cx, cy)
end

function ShmupCam:getVectorFromCenter(x, y)
	local cx, cy = self.object.body:getWorldCenter()
	return x - cx, y - cy
end

function ShmupCam:getVelocity()
	return self.object.body:getLinearVelocity()
end

function ShmupCam:playerLost()
	self.properties.pathspeed = 0
end

function ShmupCam:keypressed(k)
	if k==',' then
		levity.prefs.rotation = levity.prefs.rotation - math.pi/2
		levity.map:windowResized(love.graphics.getWidth(),
			love.graphics.getHeight(), self.camera)
	elseif k=='.' then
		levity.prefs.rotation = levity.prefs.rotation + math.pi/2
		levity.map:windowResized(love.graphics.getWidth(),
			love.graphics.getHeight(), self.camera)
	end
end

return ShmupCam
