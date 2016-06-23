local levity = require "levity"
require "class"

local Path = class(function(self, id)
	local path = levity.map.objects[id]
	local polyline = path.polyline

	local lengths = {}
	local totallength = 0
	local p = polyline[1]
	for i = 1, #polyline-1, 1 do
		local q = polyline[i+1]
		local dx = q.x - p.x
		local dy = q.y - p.y
		local length = math.sqrt(dx*dx + dy*dy)

		table.insert(lengths, length)
		totallength = totallength + length
		p = q
	end

	local segments = {}
	local totaltime = path.properties.time
	local t0, t1 = 0, 0
	p = polyline[1]
	for i = 1, #polyline-1, 1 do
		local q = polyline[i+1]
		local dx = q.x - p.x
		local dy = q.y - p.y
		local time = totaltime * lengths[i] / totallength
		t1 = t1 + time

		table.insert(segments, {
			t0 = t0,
			t1 = t1,
			x0 = p.x,
			y0 = p.y,
			vx = dx/time,
			vy = dy/time
		})

		t0 = t1
		p = q
	end

	self.endx = polyline[#polyline].x
	self.endy = polyline[#polyline].y
	self.totaltime = totaltime
	self.segments = segments
end)

function Path:getPosition(i, t)
	if i > #self.segments then
		return self.endx, self.endy
	end

	local segment = self.segments[i]
	local segtime = t - segment.t0
	local x = segment.x0 + segment.vx*segtime
	local y = segment.y0 + segment.vy*segtime
	return x, y
end

function Path:getVelocity(i)
	if i > #self.segments then
		return 0, 0
	end

	local segment = self.segments[i]
	return segment.vx, segment.vy
end

function Path:finishedSegment(i, t)
	return i > #self.segments or t >= self.segments[i].t1
end

function Path:nextSegment(i)
	i = i + 1
	if i > #self.segments then
		return nil
	end
	return i
end

return Path
