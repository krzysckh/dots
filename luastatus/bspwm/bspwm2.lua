lib = require 'lib'
clr = require 'getcolor'

colors = {
	_1 = getcolor(1),
	_2 = getcolor(2),
	_3 = getcolor(3),
	_4 = getcolor(4),
	_5 = getcolor(5),
	_6 = getcolor(6),
	_7 = getcolor(7),
	_8 = getcolor(8),
	_9 = getcolor(9),
	_10= getcolor(10),
	_11= getcolor(11),
	_12= getcolor(12),
	_13= getcolor(13),
	_14= getcolor(14),
	_15= getcolor(15),
}

wspaces = {
	I = "%{l}"..lib.colorize(" I ", colors._1, colors._11)..lib.colorize(" II  III  IV  V  VI  VII  VIII  IX  X ", colors._11, colors._1),
	II = "%{l}"..lib.colorize(" I ", colors._11, colors._1)..lib.colorize(" II ", colors._1, colors._11)..lib.colorize(" III  IV  V  VI  VII  VIII  IX  X ", colors._11, colors._1),
	III = "%{l}"..lib.colorize(" I  II ", colors._11, colors._1)..lib.colorize(" III ", getcolor(1), getcolor(11))..lib.colorize(" IV  V  VI  VII  VIII  IX  X ", colors._11, colors._1),
	IV = "%{l}"..lib.colorize(" I  II  III ", colors._11, colors._1)..lib.colorize(" IV ", colors._1, colors._11)..lib.colorize(" V  VI  VII  VIII  IX  X ", colors._11, colors._1),
	V = "%{l}"..lib.colorize(" I  II  III  IV ", colors._11, colors._1)..lib.colorize(" V ", colors._1, colors._11)..lib.colorize(" VI  VII  VIII  IX  X ", colors._11, colors._1),
	VI = "%{l}"..lib.colorize(" I  II  III  IV  V ", colors._11, colors._1)..lib.colorize(" VI ", colors._1, colors._11)..lib.colorize(" VII  VIII  IX  X ", colors._11, colors._1),
	VII = "%{l}"..lib.colorize(" I  II  III  IV  V  VI ", colors._11, colors._1)..lib.colorize(" VII ", colors._1, colors._11)..lib.colorize(" VIII  IX  X ", colors._11, colors._1),
	VIII = "%{l}"..lib.colorize(" I  II  III  IV  V  VI  VII ", colors._11, colors._1)..lib.colorize(" VIII ", colors._1, colors._11)..lib.colorize(" IX  X ", colors._11, colors._1),
	IX = "%{l}"..lib.colorize(" I  II  III  IV  V  VI  VII  VIII ", colors._11, colors._1)..lib.colorize(" IX ", colors._1, colors._11)..lib.colorize(" X ", colors._11, colors._1),
	X = "%{l}"..lib.colorize(" I  II  III  IV  V  VI  VII  VIII  IX ", colors._11, colors._1)..lib.colorize(" X ", colors._1, colors._11)
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
