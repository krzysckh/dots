clr = require("getcolor")
months = {'sty', 'lut', 'mar', 'kwi', 'maj', 'cze', 'lip', 'sie', 'wrz',
    'paź', 'lis', 'gru'}
widget = {
    plugin = 'timer',
    cb = function()
        local d = os.date('*t')
        return {
            {full_text = string.format('📅 %d %s', d.day, months[d.month]),
    color = getcolor(5)},
            {full_text = string.format('⌛ %d:%02d', d.hour, d.min),
    color = getcolor(5)},
        }
    end,
}
