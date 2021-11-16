-------------------------------------------------
-- Separator widget
-------------------------------------------------

local wibox = require("wibox")

local widget = wibox.widget{
    widget = wibox.widget.separator,
    forced_width = 20,
    shape = ''
}

return widget
