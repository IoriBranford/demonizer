function coroutine.wait(time)
	local t = time
	while t > 0 do
		local dt = coroutine.yield()
		t = t - dt
	end
	return t + time
end

function coroutine.updateWait(co, dt)
	local ok, err = coroutine.resume(co, dt)
	if not ok then
		print(err)
	end
end