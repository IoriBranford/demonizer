local string_format = string.format
return function(joystick)
	local dpleft = joystick:isGamepadDown("dpleft")
	local dpright = joystick:isGamepadDown("dpright")
	local dpup = joystick:isGamepadDown("dpup")
	local dpdown = joystick:isGamepadDown("dpdown")

	local x, y = "",""
	if dpleft and not dpright then
		x = "l"
	elseif not dpleft and dpright then
		x = "r"
	end
	if dpup and not dpdown then
		y = "u"
	elseif not dpup and dpdown then
		y = "d"
	end

	local hat = string_format("%s%s", x, y)
	return hat
end
