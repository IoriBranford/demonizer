--- Script for running a coroutine, useful for easily writing a sequence of
--- actions over time.
--@module Coroutine

local levity = require "levity"

local Coroutine = class()
function Coroutine:_init(object, func, param)
	self:startCoroutine(func, param)
end

--- Start running a function as a coroutine.
-- Function will be resumed on every beginMove.
--@param func Coroutine function taking two arguments: param and dt.
--@param param
function Coroutine:startCoroutine(func, param)
	if func then
		self.coroutine = coroutine.create(func)
	else
		self.coroutine = nil
	end
	self.param = param
end

function Coroutine:beginMove(dt)
	if self.coroutine then
		local ok, err = coroutine.resume(self.coroutine, self.param, dt)
		if not ok then print(err) end
	end
end

return Coroutine
