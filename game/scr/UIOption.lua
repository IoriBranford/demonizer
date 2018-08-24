local levity = require "levity"
local UIButton = require "UIButton"

local UIOption = class(UIButton)
function UIOption:_init(object)
	self:super(object)
	self.properties.fillwidth = object.width
	local changesound = self.properties.changesound
	if changesound then
		levity.bank:load(changesound)
	end
end

function UIOption:initQuery()
	self:prefsReset()
end

function UIOption:prefsReset()
	--local menuid = self.object.layer.name
	self:updateValue(levity.prefs[self.object.name])
	--levity.scripts:call(menuid, "getPref", self.object.name))
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
	end
	self:updateValue(value)
	self:playChangeSound()
end

function UIOption:updateValue(value)
	local valuetype = type(value)
	local textformat = self.properties.textformat or self.object.name.."\t%s"
	local text
	if valuetype == "number" then
		local min = self.properties.min
		local max = self.properties.max
		value = math.max(min, math.min(value, max))
		local percent = (value - min) / (max - min)
		self.properties.fillwidth = self.object.width * percent
		text = textformat and textformat:format(
			self.properties.units == "percent" and value*100 or value)
	elseif valuetype == "boolean" then
		self.properties.fillwidth = value and self.object.width or 0
		text = textformat and textformat:format(value and "on" or "off")
	else
		text = textformat and textformat:format(value)
	end
	if text then
		self.object.text = text
	end

	levity.prefs.set(self.object.name, value)
end

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
	local textformat = self.properties.textformat or self.object.name.."\t%s"
	self.object.text = textformat and textformat:format("???")
	levity.scripts:send(self.object.layer.name, "startBindingInput",
		self.object.id, self.properties.inputtype)
end

return UIOption
