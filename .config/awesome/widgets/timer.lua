-------------------------------------------------
-- Timer Helper
-------------------------------------------------

local gears = require("gears")
local naughty = require("naughty")

local wibox = require("wibox")

local text = wibox.widget{
    font = "Hack 12",
    widget = wibox.widget.textbox,
}

local widget = wibox.widget.background()
widget:set_widget(text)

local function set_text(arg)
    text:set_text('ti: '..arg)
end

local timer_minutes = 0

local timer = gears.timer {
    timeout = 1800,
    single_shot = true,
    callback = function()
        naughty.notify({ title = "Fun Fact!", text = "You wasted 30 minutes of your life!", timeout = 15 })
        timer_minutes = 0
        set_text('00')
    end
}

local widget_timer = gears.timer {
    timeout = 60,
    callback = function()
        timer_minutes = timer_minutes - 1
        set_text(timer_minutes)
    end
}

local function start()
    timer:start()
    widget_timer:start()
    naughty.notify({ title = 'Achtung!', text = 'Timer Started!' })
    local minutes = math.floor(timer.timeout / 60)
    timer_minutes = minutes
    set_text(minutes)
end

local function stop()
    timer:stop()
    widget_timer:stop()
    naughty.notify({ title = 'Achtung!', text = 'Timer Stopped!' })
    timer_minutes = 0
    set_text('00')
end

set_text('00')

function widget:toggle()
    if timer.started then
        stop()
    else
        start()
    end
end

return widget
