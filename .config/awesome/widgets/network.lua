-------------------------------------------------
-- Network widget
-------------------------------------------------

local wibox = require("wibox")
local watch = require("awful.widget.watch")

local text = wibox.widget{
    font = "Hack 12",
    widget = wibox.widget.textbox,
}

local widget = wibox.widget.background()
widget:set_widget(text)

-- widget:set_bg("#008800")
-- widget:set_fg("#ffffff")

watch("nmcli -t -f name connection show --active", 10, function(widget, stdout, stderr, exitreason, exitcode)
        text:set_text(stdout)
    end,
    widget
    )

return widget
