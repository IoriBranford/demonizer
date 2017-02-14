local bit = require "bit"

local ShmupCollision = {
	Category_Default = 1,
	Category_Camera = 2,
	Category_CameraEdge = 3,
	Category_PlayerTeam = 4,
	Category_PlayerShot = 5,
	Category_PlayerBomb = 6,
	Category_NPCTeam = 7,
	Category_NPCShot = 8,
	Category_NPCInCover = 9,
}

local function printx(x)
	print("0x"..bit.tohex(x))
end

local function setMaskBit(mask, maskcat, on)
	local maskbit = bit.lshift(1, maskcat - 1)
	if on then
		mask = bit.bor(mask, maskbit)
	else
		maskbit = bit.band(bit.bnot(maskbit), 0x0000ffff)
		mask = bit.band(mask, maskbit)
	end
	return mask
end

function ShmupCollision.setFixtureMask(fixture, maskcats, on)
	local cat, mask, group = fixture:getFilterData()

	if type(maskcats) == "table" then
		for _, maskcat in pairs(maskcats) do
			mask = setMaskBit(mask, maskcat, on)
		end
	else
		mask = setMaskBit(mask, maskcats, on)
	end

	fixture:setFilterData(cat, mask, group)
end

return ShmupCollision
