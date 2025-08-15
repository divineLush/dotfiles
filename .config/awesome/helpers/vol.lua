-------------------------------------------------
-- Volume helper
-------------------------------------------------

local awful = require("awful")
local naughty = require("naughty")

local helper = {}

function helper:inc()
    awful.util.spawn("pamixer -i 2")
end

function helper:dec()
    awful.util.spawn("pamixer -d 2")
end

function helper:toggle()
    awful.util.spawn("amixer -D pipewire sset Master toggle")
end

return helper
