-------------------------------------------------
-- Bright widget
-------------------------------------------------

local awful = require("awful")
local wibox = require("wibox")

local text = wibox.widget{
    font = "Hack 10",
    widget = wibox.widget.textbox,
}

local widget = wibox.widget.background()
widget:set_widget(text)

function set_bright_widget()
    awful.spawn.easy_async("light", function(out)
        local val = string.sub(out, 1, -2)
        text:set_text("bright: "..val.."]")
    end)
end

set_bright_widget()

-- widget:set_bg("#008800")
-- widget:set_fg("#ffffff")

function update_bright_widget(cmd)
    awful.spawn.easy_async(cmd, set_bright_widget)
end

function widget:inc()
    update_bright_widget("light -A 5")
end

function widget:dec()
    update_bright_widget("light -U 5")
end

return widget
