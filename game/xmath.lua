local sqrt = math.sqrt

function math.dot(x1, y1, x2, y2)
	return x1*x2 + y1*y2
end
local dot = math.dot

function math.hypotsq(x, y)
	return dot(x, y, x, y)
end
local hypotsq = math.hypotsq

function math.hypot(x, y)
	return sqrt(hypotsq(x, y))
end
