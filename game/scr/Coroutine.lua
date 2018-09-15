--- Script for running a coroutine, useful for easily writing a sequence of
--- actions over time.
--@module Coroutine

local levity = require "levity"

local Coroutine = class()
Coroutine.DefaultWaitTimeout = 5

function Coroutine:_init(object, func, param)
	self:startCoroutine(func, param)
end

function Coroutine:status()
	return self.coroutine and coroutine.status(self.coroutine)
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

function Coroutine:waitTime(time)
	repeat
		local _, dt = coroutine.yield()
		time = time - dt
	until time < 0
end

function Coroutine:waitCond(paramcond, timeout)
	timeout = timeout or Coroutine.DefaultWaitTimeout
	repeat
		local _, dt = coroutine.yield()
		timeout = timeout - dt
	until paramcond(self.param) or timeout < 0
end

function Coroutine:beginMove(dt)
	if self.coroutine then
		local ok, err = coroutine.resume(self.coroutine, self.param, dt)
		if not ok then print(err) end
		if coroutine.status(self.coroutine) == "dead" then
			self:startCoroutine(nil, self.param)
		end
	end
end

return Coroutine
