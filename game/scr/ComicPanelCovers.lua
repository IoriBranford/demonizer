local levity = require "levity"

local ComicPanelCovers = class(require("Script"))
function ComicPanelCovers:_init(layer)
	self.objects = layer.objects
	local polygons = {}
	self.polygons = polygons
	for _, object in pairs(self.objects) do
		local polypoints = object.polygon
		if polypoints then
			local polygon = {}
			for i = 1, #polypoints do
				polygon[#polygon+1] = polypoints[i].x
				polygon[#polygon+1] = polypoints[i].y
			end
			polygons[object.id] = polygon
		end
	end
end

function ComicPanelCovers:drawOver()
	love.graphics.setColor(0,0,0)
	for _, object in pairs(self.objects) do
		if object.visible then
			local polygon = self.polygons[object.id]
			if polygon then
				love.graphics.polygon("fill", polygon)
			else
				love.graphics.rectangle("fill",
						object.x, object.y,
						object.width, object.height)
			end
		end
	end
	love.graphics.setColor(1,1,1)
end

return ComicPanelCovers
