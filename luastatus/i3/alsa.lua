clr = require('getcolor')

widget = {
    plugin = 'alsa',
    cb = function(t)
        local percent = (t.vol.cur - t.vol.min) / (t.vol.max - t.vol.min) * 100
        if t.mute or percent <= 0 then
            return {full_text = ' 🔇 ', color = getcolor(14)}
        else
	    if percent < 33 then
		    emoji = "🔈"
	    elseif percent > 33 and percent < 66 then
		    emoji = "🔉"
	    elseif percent > 66 and percent < 100 then
		    emoji = "🔊"
	    else
		    emoji = "🚩"
	    end
            return {full_text = string.format(' %s%3d%% ', emoji, math.floor(0.5 + percent)), color = getcolor(2)}

        end
    end,
}
