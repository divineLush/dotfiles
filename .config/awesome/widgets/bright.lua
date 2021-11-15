-------------------------------------------------
-- Bright widget
-------------------------------------------------

local wibox = require("wibox")
local watch = require("awful.widget.watch")

local text = wibox.widget{
    font = "Hack 10",
    widget = wibox.widget.textbox,
}

local widget = wibox.widget.background()
widget:set_widget(text)

-- widget:set_bg("#008800")
-- widget:set_fg("#ffffff")

watch("light", 10, function(widget, stdout, stderr, exitreason, exitcode)
        local val = string.sub(stdout, 1, -5)
        text:set_text(" bright: "..val.."]")
    end,
    widget
    )

return widget
