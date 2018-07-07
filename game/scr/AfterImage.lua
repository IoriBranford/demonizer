local levity = require "levity"
local ShmupBullet = require "ShmupBullet"

local AfterImage = class()
function AfterImage:_init(object)
	self.object = object
	self.properties = object.properties
end

local AfterImageTime = 2/60
local AfterImageParams = {
	lifetime = 8/60,
	animated = false,
	collidable = false
}

function AfterImage:beginMove(dt)
	if not self.properties.afterimage then
		return
	end
	self.timer = (self.timer or 0) + dt
	while self.timer >= AfterImageTime do
		AfterImageParams.gid = self.object.tile.gid
		ShmupBullet.create(AfterImageParams, self.object.x, self.object.y, 0, 0, "sparks")
		self.timer = self.timer - AfterImageTime
	end
end

return AfterImage
