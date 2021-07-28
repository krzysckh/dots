utf8 = require 'utf8'
clr = require("getcolor")

widget = {
	plugin = 'xtitle',
	cb = function(t)
		t = t or ''
		if utf8.len(t) > 100 then
			t = utf8.sub(t, 1, 96)..'...'
		end
		if t == "" then
			t = "none"
		end
		return {full_text = string.format('💻 %s ', t), color = getcolor(14)}
	end,
}
