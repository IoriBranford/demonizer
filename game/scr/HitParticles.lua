local levity = require "levity"

local HitParticles
HitParticles = class(function(self, object, gid, maxparticles)
	self.body = object.body
	self.particles = levity.map:newParticleSystem(gid, maxparticles)
	self.particles:setParticleLifetime(.25)
	self.particles:setSpeed(180, 360)
	self.particles:setSpread(math.pi/8)
end)

function HitParticles:emit(numparticles, x, y, direction)
	self.particles:setPosition(x, y)
	self.particles:setDirection(direction)
	self.particles:emit(numparticles)
end

function HitParticles:endMove(dt)
	self.particles:update(dt)
end

function HitParticles:endDraw()
	love.graphics.draw(self.particles)
end

return HitParticles
