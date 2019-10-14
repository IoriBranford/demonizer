--- State machine
-- Changes the type of the object on a certain condition.
--@module TypeChanger

--- Properties
--@field nexttype
--@field nexttypeevent "timePassed", "shotsFired", "coverUpdated", "rideDestroyed", "riderDestroyed", "allRidersDestroyed", "triggerActivated", "playerEnteredTrigger", "playerExitedTrigger", "triggerEnemiesCleared", "reachedDest", "fireTargetGone", "playerBehind", "playerInFront", "dialogueFinished"
--@field nexttypeparam time, number of shots fired, number of cover objects, trigger ID, dest X
--@field nexttypeparam2 dest Y
--@field typesound Sound file to play on changing to this type
--@table Properties

local levity = require "levity"

local TypeChanger = class(require("Script"))
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
function TypeChanger:changeIfNilOrEqual(param1)
	if not self.properties.nexttypeparam or param1 == self.properties.nexttypeparam then
		self:setType(self.properties.nexttype)
	end
end
function TypeChanger:changeIfNilOrEqual2(param1, param2)
	if not self.properties.nexttypeparam and not self.properties.nexttypeparam2
	or param1 == self.properties.nexttypeparam and param2 == self.properties.nexttypeparam2
	then
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
AddEventFunction("enemyDefeated", TypeChanger.changeIfNilOrEqual)
AddEventFunction("riderDestroyed", TypeChanger.changeIfNilOrEqual)
AddEventFunction("allRidersDestroyed", TypeChanger.changeState)
AddEventFunction("shotsFired", TypeChanger.incChangeCounter)
AddEventFunction("riderShotsFired", TypeChanger.incChangeCounter)
AddEventFunction("triggerActivated", TypeChanger.changeIfEqual)
AddEventFunction("playerEnteredTrigger", TypeChanger.changeIfEqual)
AddEventFunction("playerExitedTrigger", TypeChanger.changeIfEqual)
AddEventFunction("triggerEnemiesCleared", TypeChanger.changeIfEqual)
AddEventFunction("reachedDest", TypeChanger.changeIfNilOrEqual2)
AddEventFunction("fireTargetGone", TypeChanger.changeState)
AddEventFunction("playerBehind", TypeChanger.changeState)
AddEventFunction("playerInFront", TypeChanger.changeState)
AddEventFunction("dialogueFinished", TypeChanger.changeState)

function TypeChanger:endMove(dt)
	self:timePassed(dt)

	local player = levity.map.objects[levity.map.properties.playerid]
	local px, py = player.body:getPosition()
	local x, y = self.object.body:getPosition()
	if py < y then
		self:playerBehind()
	else
		self:playerInFront()
	end
end

function TypeChanger:setType(newtype)
	local oldtypeproperties = levity.map.objecttypes[self.object.type]
	local newtypeproperties = levity.map.objecttypes[newtype]
	if newtypeproperties then
		local typelayer = newtypeproperties.typelayer
		typelayer = typelayer and levity.map.layers[typelayer]
		if typelayer then
			self.object:setLayer(typelayer)
		end
	end
	self:send(self.id, "preTypeChange", oldtypeproperties, newtypeproperties)

	self.object.type = newtype
	self.changecounter = 0
	self:send(self.id, "postTypeChange", oldtypeproperties, newtypeproperties)

	local event = self.properties.nexttypeevent

	if event == "playerEnteredTrigger" or event == "playerExitedTrigger" then
		local playerentered = self:call(self.properties.nexttypeparam, "isPlayerIn")
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
