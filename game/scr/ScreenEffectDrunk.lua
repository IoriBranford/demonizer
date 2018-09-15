local levity = require "levity"

local ScreenEffectDrunk = class()

local ShaderCode = [[
/*
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
*/

extern vec2 direction;
extern number radius;

vec4 effect(vec4 color, Image texture, vec2 tc, vec2 _) {
	vec4 c = vec4(0.0);

	for (float i = -radius; i <= radius; i += 1.0)
	{
		c += Texel(texture, tc + i * direction);
	}
	return c / (2.0 * radius + 1.0) * color;
}
]]

function ScreenEffectDrunk:_init(map)
	self.properties = map.properties
	self.shader = love.graphics.newShader(ShaderCode)
	self.radius = 0
	self.direction = {0, 0}
end

function ScreenEffectDrunk:endMove(dt)
	local dirx = self.properties.blurdirx or 0
	local diry = self.properties.blurdiry or 0
	local radius = self.properties.blurradius or 0
	local direction = self.direction
	local updatespeed = self.properties.blurupdatespeed or 0
	if updatespeed > 0 then
		local dirx0 = direction[1]
		local diry0 = direction[2]
		local deltadirx = dirx - dirx0
		local deltadiry = diry - diry0
		local dradius = radius - self.radius
		direction[1] = dirx0 + deltadirx*dt*updatespeed
		direction[2] = diry0 + deltadiry*dt*updatespeed
		--self.radius = self.radius + dradius*dt*updatespeed
	else
		direction[1] = dirx
		direction[2] = diry
	end
	self.shader:send("radius", (radius))
	self.shader:send("direction", direction)
end

function ScreenEffectDrunk:beginDraw()
	love.graphics.setShader()
end

function ScreenEffectDrunk:endDraw()
	if not levity.map.paused then
		love.graphics.setShader(self.shader)
	end
end

function ScreenEffectDrunk:nextMap()
	love.graphics.setShader()
end

return ScreenEffectDrunk
