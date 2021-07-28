lib = require 'lib'
clr = require 'getcolor'
--widget = luastatus.require_plugin('pipe').widget{
--    command = 'exec bspc control --subscribe',
--    cb = lib.pager,
--}

--[[widget = {
	plugin = 'timer',
	opts = {period = 0.1},
	cb = function()
		handle = io.popen("bspc query -D -d focused --names")
		result = handle:read("*a")
		result = string.gsub(result, "\n", "")
		handle:close()
		local text = string.format(" ws: %s", result)
		return '%{l}'..lib.colorize(text, getcolor(11), getcolor(1))..'%{r}'
		--return '%{c}'..result..'%{r}'
	end,
}
--]]


wspaces = {
	I = "%{l}"..lib.colorize(" I ", getcolor(1), getcolor(11))..lib.colorize(" II  III  IV  V  VI  VII  VIII  IX  X ", getcolor(11), getcolor(1)),
	II = "%{l}"..lib.colorize(" I ", getcolor(11), getcolor(1))..lib.colorize(" II ", getcolor(1), getcolor(11))..lib.colorize(" III  IV  V  VI  VII  VIII  IX  X ", getcolor(11), getcolor(1)),
	III = "%{l}"..lib.colorize(" I  II ", getcolor(11), getcolor(1))..lib.colorize(" III ", getcolor(1), getcolor(11))..lib.colorize(" IV  V  VI  VII  VIII  IX  X ", getcolor(11), getcolor(1)),
	IV = "%{l}"..lib.colorize(" I  II  III ", getcolor(11), getcolor(1))..lib.colorize(" IV ", getcolor(1), getcolor(11))..lib.colorize(" V  VI  VII  VIII  IX  X ", getcolor(11), getcolor(1)),
	V = "%{l}"..lib.colorize(" I  II  III  IV ", getcolor(11), getcolor(1))..lib.colorize(" V ", getcolor(1), getcolor(11))..lib.colorize(" VI  VII  VIII  IX  X ", getcolor(11), getcolor(1)),
	VI = "%{l}"..lib.colorize(" I  II  III  IV  V ", getcolor(11), getcolor(1))..lib.colorize(" VI ", getcolor(1), getcolor(11))..lib.colorize(" VII  VIII  IX  X ", getcolor(11), getcolor(1)),
	VII = "%{l}"..lib.colorize(" I  II  III  IV  V  VI ", getcolor(11), getcolor(1))..lib.colorize(" VII ", getcolor(1), getcolor(11))..lib.colorize(" VIII  IX  X ", getcolor(11), getcolor(1)),
	VIII = "%{l}"..lib.colorize(" I  II  III  IV  V  VI  VII ", getcolor(11), getcolor(1))..lib.colorize(" VIII ", getcolor(1), getcolor(11))..lib.colorize(" IX  X ", getcolor(11), getcolor(1)),
	IX = "%{l}"..lib.colorize(" I  II  III  IV  V  VI  VII  VIII ", getcolor(11), getcolor(1))..lib.colorize(" IX ", getcolor(1), getcolor(11))..lib.colorize(" X ", getcolor(11), getcolor(1)),
	X = "%{l}"..lib.colorize(" I  II  III  IV  V  VI  VII  VIII  IX ", getcolor(11), getcolor(1))..lib.colorize(" X ", getcolor(1), getcolor(11))
}

widget = {
	plugin = 'timer',
	opts = {period = 0.05},
	cb = function()
		handle = io.popen("bspc query -D -d focused --names")
		res = handle:read("*a")
		res = string.gsub(res, "\n", "")
		handle:close()
		if res == "I" then return wspaces.I
		elseif res == "II" then return wspaces.II
		elseif res == "III" then return wspaces.III
		elseif res == "IV" then return wspaces.IV
		elseif res == "V" then return wspaces.V
		elseif res == "VI" then return wspaces.VI
		elseif res == "VII" then return wspaces.VII
		elseif res == "VIII" then return wspaces.VIII
		elseif res == "IX" then return wspaces.IX
		elseif res == "X" then return wspaces.X
		end
	end,
}
		
		
