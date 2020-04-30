local levity = require "levity"

local TargetLock = class(require("Script"))
TargetLock.CrosshairTileset = nil
TargetLock.AnimationSize = 32
TargetLock.AnimationTime = .125

function TargetLock:_init(object)
	self.locktargetid = nil
	self.locktime = 0
	self.batch = levity.map:newSpriteBatch("crosshair", 4)

	local tileset = levity.map.tilesets["crosshair"]
	if not TargetLock.CrosshairTileset then
		TargetLock.CrosshairTileset = tileset
	end

	for gid = tileset.firstgid, tileset.firstgid + 3 do
		levity.map:addBatchSprite(self.batch, gid, 0, 0)
	end
end

function TargetLock:setLockTargetId(targetid)
	if self.locktargetid ~= targetid then
		if targetid then
			levity.bank:play(levity.map.properties.targetlocksound)
		end
		self.locktime = 0
	end
	self.locktargetid = targetid
end

function TargetLock:getLockTargetId()
	return self.locktargetid
end

function TargetLock:npcDefeated(id)
	if self.locktargetid == id then
		self:setLockTargetId(nil)
	end
end

function TargetLock:playerKilled()
	self:setLockTargetId(nil)
end

function TargetLock:endMove(dt)
	local target = levity.map.objects[self.locktargetid]
	if target then
		if self.locktime < TargetLock.AnimationTime then
			self.locktime = self.locktime + dt
			self.locktime = math.min(self.locktime,
				TargetLock.AnimationTime)
		end
	else
		self:setLockTargetId(nil)
	end
end

function TargetLock:beginDraw()
	local target = levity.map.objects[self.locktargetid]
	if target then
		local targetbody = target.body
		local tileset = TargetLock.CrosshairTileset
		local twhalf, thhalf = tileset.tilewidth/2, tileset.tileheight/2
		local cx, cy = targetbody:getWorldCenter()
		local l, t, r, b = cx-twhalf, cy-thhalf, cx+twhalf, cy+thhalf
		for _,fixture in pairs(targetbody:getFixtures()) do
			local fl, ft, fr, fb = fixture:getBoundingBox()
			l = math.min(fl, l)
			t = math.min(ft, t)
			r = math.max(fr, r)
			b = math.max(fb, b)
		end

		if self.locktime < TargetLock.AnimationTime then
			local offset = TargetLock.AnimationSize
				* (1-(self.locktime/TargetLock.AnimationTime))
			l = l - offset
			t = t - offset
			r = r + offset
			b = b + offset
		end

		local firstgid = tileset.firstgid
		levity.map:setBatchSprite(self.batch, 1, firstgid+0, l, t)
		levity.map:setBatchSprite(self.batch, 2, firstgid+1, r, t)
		levity.map:setBatchSprite(self.batch, 3, firstgid+2, l, b)
		levity.map:setBatchSprite(self.batch, 4, firstgid+3, r, b)

		love.graphics.draw(self.batch)
	end
end

return TargetLock
