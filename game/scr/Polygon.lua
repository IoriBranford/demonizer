local levity = require "levity"
local pl_pretty = require "pl.pretty"

local Polygon = class(require("Script"))
function Polygon:_init(object)
	self.object = object
	self.properties = object.properties
	local polygon = object.polygon
	if polygon then
		local points = {}
		for i = 1, #polygon do
			local point = polygon[i]
			points[#points+1] = point.x
			points[#points+1] = point.y
		end
		self.linepoints = points
		if #points >= 6 then
			self.filltriangles = love.math.triangulate(points)
		end
	end
end

function Polygon:beginDraw()
	local triangles = self.filltriangles
	if triangles then
		local fillcolor = self.properties.fillcolor or "#80404040"
		levity.setColorARGB(fillcolor)
		for _, triangle in pairs(triangles) do
			love.graphics.polygon("fill", triangle)
		end
	end
	local linepoints = self.linepoints
	if linepoints then
		local linecolor = self.properties.linecolor or "#ffffffff"
		levity.setColorARGB(linecolor)
		love.graphics.polygon("line", linepoints)
	end
end

function Polygon:endDraw()
	levity.setColorARGB("#ffffffff")
end

return Polygon
