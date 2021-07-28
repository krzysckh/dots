clr = require('getcolor')
lib = require('lib')

widget = {
    plugin = 'alsa',
    cb = function(t)
        local percent = (t.vol.cur - t.vol.min) / (t.vol.max - t.vol.min) * 100
        if t.mute or percent <= 0 then
            return lib.colorize(' [muted] ', getcolor(1), getcolor(11))
        else
	    if percent < 10 then
		    emoji = lib.colorize("vol: ", getcolor(11), getcolor(1))
	    	    percent = string.sub(percent, 1, 1)
            	    return emoji..lib.colorize(percent.."%% %{r}", getcolor(11), getcolor(1))
	    elseif percent and percent < 66 then
		    emoji = lib.colorize("vol: ", getcolor(12), getcolor(1))
	    	    percent = string.sub(percent, 1, 2)
            	    return emoji..lib.colorize(percent.."%% %{r}", getcolor(12), getcolor(1))
	    elseif percent > 66 and percent < 100 then
		    emoji = lib.colorize("vol: ", getcolor(13), getcolor(1))
	    	    percent = string.sub(percent, 1, 2)
            	    return emoji..lib.colorize(percent.."%% %{r}", getcolor(13), getcolor(1))
	    else
		    emoji = lib.colorize("vol: ", getcolor(14), getcolor(1))
	    	    percent = string.sub(percent, 1, 3)
            	    return emoji..lib.colorize(percent.."%% %{r}", getcolor(14), getcolor(1))
	    end

        end
    end,
}
