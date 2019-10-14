local levity = require "levity"

local ParticleLayer = class(require("Script"))
function ParticleLayer:_init(layer)
	local properties = layer.properties
	self.properties = properties

	local tileset = properties.tileset
	tileset = levity.map.tilesets[tileset]
	if not tileset then
		return
	end

	local gid = levity.map:getTileGid(properties.tileset, properties.tileid or 0)
		or tileset.firstgid

	self.particles = levity.map:newParticleSystem(gid,
				properties.maxparticles or 256)

	self.particles:setParticleLifetime(properties.lifetime or 1)
	self.particles:setEmissionRate(properties.emissionrate or 0)
	self.particles:setSpread(math.rad(properties.spread or 360))
	self.particles:setOffset(tileset.tilewidth/2, tileset.tileheight/2)
	self.particles:setAreaSpread(
		self.properties.areaspreadtype or "ellipse",
		self.properties.areaspreadw or tileset.tilewidth,
		self.properties.areaspreadh or tileset.tileheight)
	self.particles:stop()
end

--function ParticleLayer:setPosition(x, y)
--	self.particles:setPosition(x, y)
--end
--
--function ParticleLayer:startEmit()
--	self.particles:start()
--end
--
--function ParticleLayer:stopEmit()
--	self.particles:stop()
--end

function ParticleLayer:emit(numparticles, x, y, direction, spread)
	local oldspread
	if spread then
		oldspread = self.particles:getSpread()
		self.particles:setSpread(spread)
	end
	self.particles:moveTo(x, y)
	self.particles:setSpeed(self.properties.speedmin or 60, self.properties.speedmax)
	self.particles:setDirection(direction)
	self.particles:start()
	self.particles:emit(numparticles)
	self.particles:stop()
	if oldspread then
		self.particles:setSpread(oldspread)
	end
end

function ParticleLayer:endMove(dt)
	self.particles:update(dt)
end

function ParticleLayer:drawOver()
	love.graphics.draw(self.particles)
end

return ParticleLayer
