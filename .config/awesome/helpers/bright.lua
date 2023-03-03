-------------------------------------------------
-- Bright helper
-------------------------------------------------

local awful = require("awful")

local helper = {}

function helper:inc()
    awful.util.spawn("brightnessctl set +2%")
end

function helper:dec()
    awful.util.spawn("brightnessctl set 2%-")
end

return helper
