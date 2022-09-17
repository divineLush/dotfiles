-------------------------------------------------
-- Separator widget
-------------------------------------------------

local wibox = require("wibox")
local gears = require("gears")

local widget = wibox.widget{
    widget = wibox.widget.separator,
    forced_width = 20,
    color = 'transparent',
}

return widget
