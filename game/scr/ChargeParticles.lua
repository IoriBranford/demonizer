local levity = require "levity"

local ChargeParticles = class()
function ChargeParticles:_init(object, gid, maxparticles)
	self.body = object.body
	self.particles = levity.map:newParticleSystem(gid, maxparticles)
	self.particles:setParticleLifetime(.5)
	self.particles:setSpeed(120)
	self.particles:setSpread(math.pi*2)
end

function ChargeParticles:startEmit(time)
	self.particles:setEmitterLifetime(time)
	self.particles:start()
end

function ChargeParticles:stopEmit()
	self.particles:stop()
end

function ChargeParticles:endMove(dt)
	self.particles:setPosition(self.body:getWorldCenter())
	self.particles:update(dt)
end

function ChargeParticles:endDraw()
	love.graphics.draw(self.particles)
end

return ChargeParticles
