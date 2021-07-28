clr = require("getcolor")

widget = {
	plugin = 'timer',
	opts = {period = 2},
	cb = function()
		who = os.getenv("USER")
		
		return {full_text = string.format('👨‍💻 %s', who), 
	color = getcolor(6)}
	end,
}
