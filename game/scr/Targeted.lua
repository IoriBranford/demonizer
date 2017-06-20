local levity = require "levity"

local Targeted = class()
Targeted.CrosshairTileset = nil
Targeted.AnimationSize = 32
Targeted.AnimationTime = .125

function Targeted:_init(object)
	self.body = object.body
	self.targeted = false
	self.targetedtime = 0
	self.batch = levity.map:newSpriteBatch("crosshair", 4)

	local tileset = levity.map.tilesets["crosshair"]
	if not Targeted.CrosshairTileset then
		Targeted.CrosshairTileset = tileset
	end

	for gid = tileset.firstgid, tileset.firstgid + 3 do
		levity.map:addBatchSprite(self.batch, gid, 0, 0)
	end
end

function Targeted:setTargeted(targeted)
	if not self.targeted and targeted then
		self.targetedtime = 0
	end
	self.targeted = targeted
end

function Targeted:endMove(dt)
	if self.targeted then
		local tileset = Targeted.CrosshairTileset
		local twhalf, thhalf = tileset.tilewidth/2, tileset.tileheight/2
		local cx, cy = self.body:getWorldCenter()
		local l, t, r, b = cx-twhalf, cy-thhalf, cx+twhalf, cy+thhalf
		for _,fixture in pairs(self.body:getFixtureList()) do
			local fl, ft, fr, fb = fixture:getBoundingBox()
			l = math.min(fl, l)
			t = math.min(ft, t)
			r = math.max(fr, r)
			b = math.max(fb, b)
		end

		if self.targetedtime < Targeted.AnimationTime then
			self.targetedtime = self.targetedtime + dt
			self.targetedtime = math.max(0, self.targetedtime)
			local offset = Targeted.AnimationSize
				* (1-(self.targetedtime/Targeted.AnimationTime))
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
	end
end

function Targeted:endDraw()
	if self.targeted then
		love.graphics.draw(self.batch)
	end
end

return Targeted
