local levity = require "levity"
local Mover = require "Mover"

local DrunkMover = class(Mover)
function DrunkMover:_init(object)
	self:super(object)
	self.time = 0
end

function DrunkMover:beginMove(dt)
	local bac = levity.scripts:call(self.id, "getBAC") or 0
	self.time = self.time + dt
	local cost = math.cos(self.time*math.pi)
	local sint = math.sin(self.time*math.pi)
	if bac > 0 then
		if self.destx then
			self.destx = self.destx + 32*bac*cost
		end
		if self.desty then
			self.desty = self.desty + 32*bac*sint
		end
	end
	Mover.beginMove(self, dt)
	if bac > 0 then
		local vx, vy = self.body:getLinearVelocity()
		local drunkaddspeedfactor = self.properties.drunkaddspeedfactor or -1
		drunkaddspeedfactor = drunkaddspeedfactor*bac
		self.body:setLinearVelocity(vx*(1 + drunkaddspeedfactor*cost),
					vy*(1 + drunkaddspeedfactor*sint))
	end
end

function DrunkMover:reverseDest()
	local destx, desty = self.destx, self.desty
	if not destx or not desty then
		return
	end
	local x, y = self.body:getPosition()
	local fromdestx = x - destx
	local fromdesty = y - desty
	self.destx = x + fromdestx
	self.desty = y + fromdesty
end

return DrunkMover
