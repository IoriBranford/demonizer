local levity = require "levity"

local MazeLayer = class()
function MazeLayer:_init(layer)
	layer.draworder = "manual"
	local objects = layer.objects
	for i = 1, #objects-1 do
		local object = objects[i]
		object.visible = false
		object.properties.nextmazepointid = objects[i+1].id
	end
	objects[#objects].visible = false
	self.currentpointid = objects[1].id
	self.layer = layer
end

function MazeLayer:mazeCompleted(bonus, sound)
	if not self.completedtimer then
		self.currentpointid = nil
		self.completedtimer = 1
		levity.scripts:broadcast("givePlayerBonus", bonus, sound)
	end
end

function MazeLayer:checkPoint(point)
	if point.visible
	or not point.properties.playercontact
	or point.id ~= self.currentpointid
	then
		return
	end

	point.visible = true

	local mazegoalbonus = point.properties.mazegoalbonus
	if mazegoalbonus then
		self:mazeCompleted(mazegoalbonus, point.properties.bonussound)
	else
		self.currentpointid = point.properties.nextmazepointid
	end
end

function MazeLayer:endMove(dt)
	if self.completedtimer then
		if self.completedtimer > 0 then
			self.completedtimer = self.completedtimer - dt
			local t = self.completedtimer * math.pi * 30
			self.layer.opacity = .5 - math.cos(t)*.5
			if self.completedtimer <= 0 then
				self.layer.visible = false
			end
		end
	else
		for i = 1, #self.layer.objects do
			local point = self.layer.objects[i]
			self:checkPoint(point)
		end
	end
end

return MazeLayer
