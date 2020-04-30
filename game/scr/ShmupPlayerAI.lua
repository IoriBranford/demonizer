--[[ AI for demo mode
--]]

local levity = require "levity"
local ShmupPlayer = require "ShmupPlayer"
local ShmupCollision = require "ShmupCollision"
local Targeting = require "Targeting"

local ShmupPlayerAI = class(ShmupPlayer)

function ShmupPlayerAI:_init(object)
	ShmupPlayer._init(self, object)
	self.playtime = 0
end

function ShmupPlayerAI:findTargetOnScreen(canbetargetfunc)
	local x1 = levity.camera.x
	local y1 = levity.camera.y
	local x2 = x1 + levity.camera.w
	local y2 = y1 + levity.camera.h
	return Targeting.queryRectangle(canbetargetfunc, x1, y1, x2, y2)
end

function ShmupPlayerAI:getMoveTowards(targetid, offsetx, offsety)
	local dirx, diry = 0, 0
	local target = levity.map.objects[targetid]
	if target then
		local x, y = self.body:getPosition()
		local targetx, targety = target.body:getPosition()
		targetx = targetx + offsetx
		targety = targety + offsety
		local dx, dy = targetx - x, targety - y
		dirx = dx < 0 and -1 or dx > 0 and 1 or 0
		diry = dy < 0 and -1 or dy > 0 and 1 or 0
	end
	return dirx, diry
end

function ShmupPlayerAI:isEnemyInFront()
	local x1, y1, x2, y2 = self.body:getFixtures()[1]:getBoundingBox()
	x1 = x1 - 16
	x2 = x2 + 16
	y1 = y1 - 320
	return Targeting.queryRectangle("canBeLockTarget", x1, y1, x2, y2) ~= nil
end

function ShmupPlayerAI:getMoveOutOfBulletPath()
	local inx, iny = 0, 0
	local t = .5
	local rsq = 16*16
	local x, y = self.body:getPosition()
	local bullet
	local bulletct = 0
	local function filter(fixture)
		for i = 1, select("#", fixture:getCategory()) do
			local category = select(i, fixture:getCategory())
			if category == ShmupCollision.Category_EnemyShot then
				bulletct = bulletct + 1
				local userdata = fixture:getBody():getUserData()
				local b = userdata and userdata.object
				local bx, by = b.body:getPosition()
				local bdx, bdy = bx - x, by - y
				local bvx, bvy = b.body:getLinearVelocity()
				local dot = math.dot(-bdx, -bdy, bvx, bvy)
				if dot <= 0 then
					return true
				end

				bvx = bvx * t
				bvy = bvy * t
				local det = math.det(bdx, bdy,
						bdx + bvx, bdy + bvy)
				local bspeedsq = math.hypotsq(bvx, bvy)
-- http://mathworld.wolfram.com/Circle-LineIntersection.html
				local discriminant = rsq*bspeedsq - det*det
				if discriminant >= 0 then
					inx, iny = -bvy, bvx
					inx = inx < 0 and -1 or inx > 0 and 1 or 0
					iny = iny < 0 and -1 or iny > 0 and 1 or 0
				end
			end
		end
		return true
	end

	local hw, hh = 100, 100
	local x1 = x - hw
	local y1 = y - hh
	local x2 = x + hw
	local y2 = y + hh
	levity.world:queryBoundingBox(x1, y1, x2, y2, filter)
	return inx, iny, bulletct > 15
end

local function ReturnToTitle()
	levity:setNextMap("title.lua")
end

function ShmupPlayerAI:beginMove(dt)
	self.playtime = self.playtime + dt
	if self.playtime >= 60 then
		ReturnToTitle()
		return
	end

	local inx, iny, bombbutton = self:getMoveOutOfBulletPath()
	if inx == 0 and iny == 0 then
		local enemyid = self:call(self.enemyid, "canBeLockTarget")
			and self.enemyid
			or self:findTargetOnScreen("canBeLockTarget")
		self.enemyid = enemyid
		local itemid = self:call(self.itemid, "canBeCaptured")
			and self.itemid
			or self:findTargetOnScreen("canBeCaptured")
		self.itemid = itemid
		if itemid then
			inx, iny = self:getMoveTowards(itemid, 0, 0)
		elseif enemyid then
			inx, iny = self:getMoveTowards(enemyid, 0, 64)
		end
	end

	self.inputx, self.inputy = inx, iny
	self.focusbutton = self:isEnemyInFront()
	if bombbutton then
		self.bombbutton = true
	end

	ShmupPlayer.beginMove(self, dt)
end

function ShmupPlayerAI:objectDiscarded(id)
	if self.enemyid == id then
		self.enemyid = nil
	end
	if self.itemid == id then
		self.itemid = nil
	end
end

local function Nil() end

ShmupPlayerAI.joystickaxis = Nil
ShmupPlayerAI.joystickhat = Nil
ShmupPlayerAI.gamepadaxis = Nil
ShmupPlayerAI.mousemoved = Nil
ShmupPlayerAI.joystickreleased = Nil
ShmupPlayerAI.gamepadreleased = Nil
ShmupPlayerAI.mousereleased = Nil
ShmupPlayerAI.keyreleased = Nil

ShmupPlayerAI.gamepadpressed = ReturnToTitle
ShmupPlayerAI.joystickpressed = ReturnToTitle
ShmupPlayerAI.mousepressed = ReturnToTitle
ShmupPlayerAI.keypressed = ReturnToTitle
ShmupPlayerAI.touchpressed = ReturnToTitle

return ShmupPlayerAI
