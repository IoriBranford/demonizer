local levity = require "levity"

local ChargeParticles = class()
function ChargeParticles:_init(object, gid, maxparticles)
	self.body = object.body
	self.particles = levity.map:newParticleSystem(gid, maxparticles)
	self.particles:stop()
	self.particles:setParticleLifetime(.25)
	self.particles:setEmissionRate(30)
	self.particles:setSpeed(240)
end

function ChargeParticles:startEmit()
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
	love.graphics.setColor(0xff, 0xff, 0xff)
	love.graphics.draw(self.particles)
end

return ChargeParticles
