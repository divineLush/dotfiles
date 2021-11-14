-------------------------------------------------
-- Battery widget
-------------------------------------------------

local wibox = require("wibox")  -- Provides the widgets
local watch = require("awful.widget.watch")

local text = wibox.widget{
    font = "Hack 10",
    widget = wibox.widget.textbox,
}

local widget = wibox.widget.background()
widget:set_widget(text)

-- widget:set_bg("#008800")
-- widget:set_fg("#ffffff")

watch("acpi -b", 10, function(widget, stdout, stderr, exitreason, exitcode)
        text:set_text(stdout)
    end,
    widget
    )

return widget
