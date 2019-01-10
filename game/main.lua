local levity = require "levity"

levity:setNextMap("title.lua")

love.filesystem.setRequirePath(
	"scr/?.lua;"..
	love.filesystem.getRequirePath())

levity.collisionrules = require "ShmupCollision"

levity:setSystemFont("fnt/Press Start 2P_8.fnt")

function levity.initDefaultPrefs(dp)
	dp._version = 1
	dp.canvasscale = 6

	dp.key_left = "left"
	dp.key_right = "right"
	dp.key_up = "up"
	dp.key_down = "down"
	dp.key_fire = "z"
	dp.key_focus = "x"
	dp.key_bomb = "c"
	dp.key_pause = "pause"
	dp.key_pausemenu = "escape"

	local joysticks = love.joystick.getJoysticks()
	local hasgamepad = false
	for i = 1, #joysticks do
		if joysticks[i] and joysticks[i]:isGamepad() then
			hasgamepad = true
			break
		end
	end

	if hasgamepad then
		dp.joy_x = "dpad"
		dp.joy_y = "dpad"
		dp.joy_fire = "x"
		dp.joy_focus = "a"
		dp.joy_bomb = "b"
		dp.joy_pausemenu = "start"
	else
		dp.joy_x = "axis1"
		dp.joy_y = "axis2"
		dp.joy_fire = 1
		dp.joy_focus = 2
		dp.joy_bomb = 3
		dp.joy_pausemenu = 4
	end
end
