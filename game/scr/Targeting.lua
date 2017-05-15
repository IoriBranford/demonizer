local levity = require "levity"

local Targeting = {}

function Targeting.queryRectangle(canbetargetfunc, x0, y0, x1, y1)
	local foundtargetid = nil
	levity.world:queryBoundingBox(x0, y0, x1, y1, function(fixture)
		local userdata = fixture:getBody():getUserData()
		if not userdata then
			return true
		end
		local id = userdata.id
		if not levity.map.scripts:call(id, canbetargetfunc) then
			return true
		end

		foundtargetid = id
		return false
	end)

	return foundtargetid
end

return Targeting
