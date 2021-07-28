lib = require 'lib'
clr = require 'getcolor'
widget = {
    plugin = 'xkb',
    cb = function(t)
        local text = ({
            ['us'] = ' En ',
            ['ru'] = ' Ru ',
	    ['pl'] = ' PL ',
        })[t.name] or ' ?? '
        return lib.colorize(text, getcolor(10), getcolor(1)) 
    end,
}
