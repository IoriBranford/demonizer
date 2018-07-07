local select = select
local bit = require "bit"
local bit_bor = bit.bor
local bit_band = bit.band
local bit_bnot = bit.bnot
local bit_lshift = bit.lshift
local bit_tohex = bit.tohex

local ShmupCollision = {
	Category_Default = 1,
	Category_Camera = 2,
	Category_CameraEdge = 3,
	Category_PlayerTeam = 4,
	Category_PlayerShot = 5,
	Category_PlayerBomb = 6,
	Category_EnemyTeam = 7,
	Category_EnemyShot = 8,
	Category_EnemyInCover = 9,
	Category_EnemyCover = 10,
	Category_EnemyBounds = 11,
}

local function printx(x)
	print("0x"..bit_tohex(x))
end

local function setMaskBit(mask, maskcat, on)
	local maskbit = bit_lshift(1, maskcat - 1)
	if on then
		mask = bit_bor(mask, maskbit)
	else
		maskbit = bit_band(bit_bnot(maskbit), 0x0000ffff)
		mask = bit_band(mask, maskbit)
	end
	return mask
end

local function checkCategoryBits(checkbits, ...)
	local bits = 0
	for i = 1, select("#", ...) do
		local category = select(i, ...)
		bits = bit_bor(bits, bit_lshift(1, category - 1))
	end
	return bit_band(checkbits, bits)
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

function ShmupCollision.checkFixtureCategory(fixture, ...)
	local cats = fixture:getFilterData()
	return checkCategoryBits(cats, ...) ~= 0
end

return ShmupCollision
