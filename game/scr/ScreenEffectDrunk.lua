local unpack = unpack
local levity = require "levity"

local ScreenEffectDrunk = class(require("Script"))

--[[
Public domain:
Copyright (C) 2017 by Matthias Richter <vrld@vrld.org>
Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted.
THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.
]]

local ShaderCode = [[
extern vec2 direction;
extern number pixelScale;
extern vec4 color;

vec4 effect(vec4 _, Image texture, vec2 tc, vec2 sc) {
	vec4 c = Texel(texture, tc);
	vec2 delta = pixelScale * direction;
	c += Texel(texture, tc - delta);
	c += Texel(texture, tc + delta);
	return color * c / 3.0;
}
]]

function ScreenEffectDrunk:_init(map)
	self.properties = map.properties
	self.shader = love.graphics.newShader(ShaderCode)
	self.direction = {0, 0}
	self.color = {1,1,1,1}

	love.graphics.getColor = function()
		return unpack(self.color)
	end

	love.graphics.setColor = function(r, g, b, a)
		if type(r) == "table" then
			r, g, b, a = unpack(r)
		end
		self.color[1] = r
		self.color[2] = g
		self.color[3] = b
		self.color[4] = a or 1
		self.shader:send("color", self.color)
		-- not sendColor which clamps to [0, 1]
	end

	love.graphics.setShader(self.shader)
end

function ScreenEffectDrunk:endMove(dt)
	local dirx = self.properties.blurdirx or 0
	local diry = self.properties.blurdiry or 0
	local direction = self.direction
	local updatespeed = self.properties.blurupdatespeed or 0
	if updatespeed > 0 then
		local dirx0 = direction[1]
		local diry0 = direction[2]
		local deltadirx = dirx - dirx0
		local deltadiry = diry - diry0
		direction[1] = dirx0 + deltadirx*dt*updatespeed
		direction[2] = diry0 + deltadiry*dt*updatespeed
	else
		direction[1] = dirx
		direction[2] = diry
	end
	self.shader:send("pixelScale", levity.camera.scale)
end

local zero = {0, 0}
function ScreenEffectDrunk:beginDraw()
	self.shader:send("direction", zero)
end

function ScreenEffectDrunk:endDraw()
	if not levity.map.paused then
		self.shader:send("direction", self.direction)
	end
end

function ScreenEffectDrunk:nextMap()
	love.graphics.setShader()
end

return ScreenEffectDrunk
