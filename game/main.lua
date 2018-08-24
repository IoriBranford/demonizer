local levity = require "levity"
levity:setNextMap("title.lua")
love.filesystem.setRequirePath(
	"scr/?.lua;"..
	love.filesystem.getRequirePath())
levity.collisionrules = require "ShmupCollision"

levity:setSystemFont("fnt/Press Start 2P_8.fnt")

local defaultprefs = levity.prefs.defaultprefs

defaultprefs.canvasscale = 6

defaultprefs.key_left = "left"
defaultprefs.key_right = "right"
defaultprefs.key_up = "up"
defaultprefs.key_down = "down"
defaultprefs.key_fire = "z"
defaultprefs.key_focus = "x"
defaultprefs.key_bomb = "c"
defaultprefs.key_pause = "pause"
defaultprefs.key_pausemenu = "escape"

defaultprefs.joy_x = "axis1"
defaultprefs.joy_y = "axis2"
defaultprefs.joy_fire = 1
defaultprefs.joy_focus = 2
defaultprefs.joy_bomb = 3
defaultprefs.joy_pause = 9
defaultprefs.joy_pausemenu = 10
