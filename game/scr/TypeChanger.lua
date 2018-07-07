--- State machine
-- Changes the type of the object on a certain condition.
--@module TypeChanger

--- Properties
--@field nexttype
--@field nexttypeevent "timePassed", "shotsFired", "coverUpdated", "rideDestroyed", "playerEnteredTrigger", "playerExitedTrigger"
--@field nexttypeparam time, number of shots fired, number of cover objects, or trigger ID
--@field settypesound Sound file to play on changing to this type
--@table Properties

local levity = require "levity"

local TypeChanger = class()
function TypeChanger:_init(object)
	self.id = object.id
	self.object = object
	self.properties = object.properties

	self:setType(self.object.type)
end

function TypeChanger:changeState()
	self:setType(self.properties.nexttype)
end
function TypeChanger:incChangeCounter(param)
	self.changecounter = self.changecounter + param
	if self.changecounter >= (self.properties.nexttypeparam or 1) then
		self:setType(self.properties.nexttype)
	end
end
function TypeChanger:changeIfEqual(param)
	if param == self.properties.nexttypeparam then
		self:setType(self.properties.nexttype)
	end
end

local function AddEventFunction(e, f)
	TypeChanger[e] = function(self, ...)
		if self.properties.nexttypeevent == e then
			f(self, ...)
		end
	end
end

AddEventFunction("timePassed", TypeChanger.incChangeCounter)
AddEventFunction("coverUpdated", TypeChanger.changeIfEqual)
AddEventFunction("rideDestroyed", TypeChanger.changeState)
AddEventFunction("shotsFired", TypeChanger.incChangeCounter)
AddEventFunction("riderShotsFired", TypeChanger.incChangeCounter)
AddEventFunction("playerEnteredTrigger", TypeChanger.changeIfEqual)
AddEventFunction("playerExitedTrigger", TypeChanger.changeIfEqual)

function TypeChanger:endMove(dt)
	if self.timePassed then
		self:timePassed(dt)
	end
end

function TypeChanger:setType(newtype)
	local newtypeproperties = levity.map.objecttypes[newtype]
	if newtypeproperties then
		if not rawget(self.properties, "pathid") then
			local pathid = self.properties.pathid
			if pathid ~= newtypeproperties.pathid then
				levity.scripts:send(self.id, "setDest", nil, nil)
			end
		end
	end
	self.object.type = newtype
	self.changecounter = 0

	local event = self.properties.nexttypeevent

	if event == "playerEnteredTrigger" or event == "playerExitedTrigger" then
		local playerentered = levity.scripts:call(self.properties.nexttypeparam, "isPlayerIn")
		if (playerentered and event == "playerEnteredTrigger")
		or (not playerentered and event == "playerExitedTrigger")
		then
			self:setType(self.properties.nexttype)
			return
		end
	end

	local sound = self.properties.typesound
	if sound then
		levity.bank:play(sound)
	end
end

return TypeChanger
