lib = require 'lib'
col = require 'getcolor'

days = {
    'niedziela',
    'poniedziałek',
    'wtorek',
    'środa',
    'czwartek',
    'piątek',
    'sobota',
}

months = {
    'sty',
    'lut',
    'mar',
    'kwi',
    'maj',
    'cze',
    'lip',
    'sie',
    'wrz',
    'paź',
    'lis',
    'gru',
}

widget = {
    plugin = 'timer',
    opts = {period = 5},
    cb = function(t)
        local d = os.date('*t')
        local text = string.format(' %s, %d %s, %02d:%02d ', days[d.wday], d.day, months[d.month], d.hour, d.min)
        return lib.colorize(text, getcolor(1), getcolor(2))
    end
}
