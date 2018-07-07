local levity = require "levity"
levity:setNextMap("title.lua")
love.filesystem.setRequirePath(
	"scr/?.lua;"..
	love.filesystem.getRequirePath())
levity.collisionrules = require "ShmupCollision"
--levity.prefs.drawbodies = true
--levity.prefs.drawstats = true
