-- you need to install 'utf8' module (e.g. with luarocks) if using Lua <=5.2.
utf8 = require 'utf8'
lib = require 'lib'

widget = {
    plugin = 'xtitle',
    cb = function(t)
	if t == nil or t == "" then
		return '%{c}' .. lib.colorize("none", '#ffe') .. '%{r}'
	end
	if #t > 50 then
		t = string.sub(t, 1, 50).."[...]"
	end
        return '%{c}' .. lib.colorize(t, '#ffe') .. '%{r}'
    end,
}
