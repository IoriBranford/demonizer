local levity = require "levity"

local Targeting = {}

local queryRectangle_functions = {}
local foundtargetid = nil

function Targeting.queryRectangle(canbetargetfuncname, x0, y0, x1, y1)
	foundtargetid = nil
	local func = queryRectangle_functions[canbetargetfuncname]
	if not func then
		func = function(fixture)
			local userdata = fixture:getBody():getUserData()
			if not userdata then
				return true
			end
			local id = userdata.id
			if not levity.scripts:call(id, canbetargetfuncname) then
				return true
			end

			foundtargetid = id
			return false
		end
		queryRectangle_functions[canbetargetfuncname] = func
	end
	levity.world:queryBoundingBox(x0, y0, x1, y1, func)

	return foundtargetid
end

local queryRay_functions = {}
local foundtargetdist = nil

function Targeting.queryRay(canbetargetfuncname, x1, y1, x2, y2)
	foundtargetid = nil
	foundtargetdist = math.huge
	local func = queryRay_functions[canbetargetfuncname]
	if not func then
		func = function(fixture, x, y, xn, yn, fraction)
			local userdata = fixture:getBody():getUserData()
			if not userdata then
				return -1
			end
			local id = userdata.id
			if not levity.scripts:call(id, canbetargetfuncname) then
				return -1
			end

			if not foundtargetdist or fraction < foundtargetdist then
				foundtargetid = id
				foundtargetdist = fraction
			end
			return 1
		end
		queryRay_functions[canbetargetfuncname] = func
	end

	levity.world:rayCast(x1, y1, x2, y2, func)

	return foundtargetid
end

return Targeting
