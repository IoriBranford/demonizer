local levity = require "levity"
require "class"

local LinearPath = class(function(self, id)
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
	local t0, t1 = 0, 0
	p = polyline[1]
	for i = 1, #polyline-1, 1 do
		local q = polyline[i+1]
		local dx = q.x - p.x
		local dy = q.y - p.y
		local time = lengths[i] / totallength
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
	self.segments = segments
end)

local function findSegment(segments, t)
	for _, segment in ipairs(segments) do
		if segment.t0 <= t and t <= segment.t1 then
			return segment
		end
	end
end

function LinearPath:getPosition(t, speed)
	local segment = findSegment(self.segments, t * speed)
	if segment then
		local segt = speed * (t - segment.t0)
		local x = segment.x0 + segment.vx*segt
		local y = segment.y0 + segment.vy*segt
		return x, y
	end
end

function LinearPath:getVelocity(t, speed)
	local segment = findSegment(self.segments, t * speed)
	if segment then
		return segment.vx * speed, segment.vy * speed
	end
end

function LinearPath:finished(t, speed)
	return t * speed > 1
end

return LinearPath
