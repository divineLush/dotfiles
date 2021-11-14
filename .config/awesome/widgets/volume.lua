-------------------------------------------------
-- Volume widget
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

watch("amixer sget Master", 10, function(widget, stdout, stderr, exitreason, exitcode)
        for token in string.match(line, "[^%s]+") do
            if string.find(token, "%") then
                text:set_text('qweqweqweqweqwe')
                -- text:set_text("Vol: "..stdout)
            end
        end
    end,
    widget
    )

return widget
