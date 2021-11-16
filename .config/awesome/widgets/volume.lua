-------------------------------------------------
-- Volume widget
-------------------------------------------------

local awful = require("awful")
local wibox = require("wibox")

local text = wibox.widget{
    font = "Hack 12",
    widget = wibox.widget.textbox,
}

local widget = wibox.widget.background()
widget:set_widget(text)

-- widget:set_bg("#008800")
-- widget:set_fg("#ffffff")

local function set_widget()
    awful.spawn.easy_async("amixer", function(out)
        local val = string.match(out, "%p%d%d%p%p")
        local raw_val = string.sub(val, 2, -3)
        text:set_text("vol: "..raw_val)
    end)
end

set_widget()

local function update_widget(cmd)
    awful.spawn.easy_async(cmd, set_widget)
end

function widget:inc()
    update_widget("amixer -D pulse sset Master 5%+")
end

function widget:dec()
    update_widget("amixer -D pulse sset Master 5%-")
end

function widget:toggle()
    update_widget("amixer -D pulse sset Master toggle")
end

function widget:set_zero()
    update_widget("amixer -D pulse sset Master 0%")
end

function widget:set_half()
    update_widget("amixer -D pulse sset Master 50%")
end

function widget:set_full()
    update_widget("amixer -D pulse sset Master 100%")
end

return widget
