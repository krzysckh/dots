lib = require 'lib'
clr = require 'getcolor'
--widget = luastatus.require_plugin('pipe').widget{
--    command = 'exec bspc control --subscribe',
--    cb = lib.pager,
--}

widget = {
	plugin = 'timer',
	opts = {period = 0.1},
	cb = function()
		handle = io.popen("bspc query -D -d focused --names")
		result = handle:read("*a")
		result = string.gsub(result, "\n", "")
		handle:close()
		local text = string.format(" ws: %s", result)
		return '%{l}'..lib.colorize(text, getcolor(11), getcolor(1))
		--return '%{c}'..result..'%{r}'
	end,
}

