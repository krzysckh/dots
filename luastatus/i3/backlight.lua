clr = require("getcolor")

widget = {
	plugin = 'timer',
	opts = {period = 2},
	cb = function()
		brightness = {"🌑", "🌒", "🌓", "🌔", "🌥", "🌤", "🌞"}
		f = io.input("/sys/class/backlight/acpi_video0/brightness", "r")
		f = io.read("*all")
		f = tonumber(f)
		
		return {full_text = string.format('%s', brightness[f]), 
	color = getcolor(6)}
	end,
}
