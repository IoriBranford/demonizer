local levity = require "levity"
local UIButton = require "UIButton"

local MaxValueStrings = 16

local UIOption = class(UIButton)
function UIOption:_init(object)
	self:super(object)
	self.properties.fillwidth = object.width
	local valuestrings
	for i = 1, MaxValueStrings do
		local valuestr = self.properties["valuestr"..i]
		if not valuestr then
			break
		end
		valuestrings = valuestrings or {}
		valuestrings[i] = valuestr
	end
	self.valuestrings = valuestrings
end

function UIOption:initQuery()
	self:refreshValue()
end

function UIOption:set(value)
	levity.prefs.set(self.object.name, value)
	self:broadcast("refreshValue")
end

function UIOption:change(dir)
	if self.properties.action == "bindInput" then
		return
	end
	dir = dir / math.abs(dir)
	local value = levity.prefs[self.object.name]
	local valuetype = type(value)
	if valuetype == "number" then
		local increment = self.properties.increment
			or self.properties.percent and 1/16
			or 1
        	
		value = value + (increment * dir)
		local min = self.properties.min
		local max = self.properties.max
		if value > max then
			value = min
		elseif value < min then
			value = max
		end
	elseif valuetype == "boolean" then
		value = not value
	elseif valuetype == "string" then
		local newvalue
		for i = 1, #self.valuestrings do
			if value == self.valuestrings[i] then
				local j = i + dir
				if j > #self.valuestrings then
					j = 1
				elseif j < 1 then
					j = #self.valuestrings
				end
				newvalue = self.valuestrings[j]
				break
			end
		end
		if not newvalue then
			local valuestrdefault = self.properties.valuestrdefault or 1
			newvalue = self.valuestrings[valuestrdefault]
		end
		value = newvalue or value
	end
	self:set(value)
	self:playChangeSound()
end

function UIOption:refreshValue()
	local value = levity.prefs[self.object.name]
	local valuetype = type(value)
	if valuetype == "number" then
		local min = self.properties.min
		local max = self.properties.max
		value = math.max(min, math.min(value, max))
		local percent = (value - min) / (max - min)
		self.properties.fillwidth = self.object.width * percent
	elseif valuetype == "boolean" then
		self.properties.fillwidth = value and self.object.width or 0
	end
end
UIOption.prefsReset = UIOption.refreshValue

function UIOption:playChangeSound()
	local changesound = self.properties.changesound
	if changesound then
		levity.bank:play(changesound)
	end
end

function UIOption:increment()
	self:change(1)
end

function UIOption:bindInput()
	self:send(self.object.layer.name, "startBindingInput",
		self.object.id, self.properties.inputtype)
end

return UIOption
