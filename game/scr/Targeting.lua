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
		if not levity.scripts:call(id, canbetargetfunc) then
			return true
		end

		foundtargetid = id
		return false
	end)

	return foundtargetid
end

function Targeting.queryRay(canbetargetfunc, x1, y1, x2, y2)
	local foundtargetid = nil
	levity.world:rayCast(x1, y1, x2, y2, function(fixture)
		local userdata = fixture:getBody():getUserData()
		if not userdata then
			return -1
		end
		local id = userdata.id
		if not levity.scripts:call(id, canbetargetfunc) then
			return -1
		end

		foundtargetid = id
		return 0
	end)

	return foundtargetid
end

return Targeting
