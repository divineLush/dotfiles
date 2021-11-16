-------------------------------------------------
-- Battery widget
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

local was_notified = false

watch("acpi -b", 10, function(widget, stdout, stderr, exitreason, exitcode)
        local val = string.match(stdout, "%d%d")
        local msg = "bat: "..val
        text:set_text(msg)

        local not_charging = string.find(stdout, "Charging") == nil
        local is_bat_low = tonumber(val) < 40

        if (not not_charging) then
            widget:set_fg("#c6c8d1")
        end

        if (not_charging) and (is_bat_low) then
            widget:set_fg("#e27878")
        end
    end,
    widget
    )

return widget
