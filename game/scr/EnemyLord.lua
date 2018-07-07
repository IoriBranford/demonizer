local levity = require "levity"
local Enemy = require "Enemy"
local ShmupBullet = require "ShmupBullet"

local Lord = class(Enemy)
function Lord:_init(object)
	self:super(object)
end

function Lord:enemyDefeated(enemyid)
	Enemy.enemyDefeated(self, enemyid)
	if enemyid == self.properties.rideid then
		local angle = levity.scripts:call(self.id, "getFaceAngle")
		levity.scripts:send(self.id, "faceAngle", angle, "move")
	end
end

function Lord:defeat()
	Enemy.defeat(self)
	self.coroutine:startCoroutine(Lord.defeatCoroutine, self)
end

function Lord:defeatCoroutine(dt)
	levity.bank:play("snd/nnoooo.wav")
	while true do
		local cx, cy = self.body:getWorldCenter()
		local x = cx + (love.math.random() - 0.5)*16
		local y = cy + (love.math.random() - 0.5)*16
		ShmupBullet.create("SparkDefeatMed", x, y, 0, 0, "sparks")
		levity.scripts:send("defeatparticles", "emit",
			16, x, y, 0, 2*math.pi)
		self.coroutine:waitTime(.125)
	end
end

return Lord
