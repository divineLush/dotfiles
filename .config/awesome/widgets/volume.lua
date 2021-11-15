-------------------------------------------------
-- Volume widget
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

watch("amixer", 10, function(widget, stdout, stderr, exitreason, exitcode)
        local val = string.match(stdout, "%p%d%d%p%p")
        local raw_val = string.sub(val, 2, -2)
        text:set_text(" vol: "..raw_val)
    end,
    widget
    )

return widget
