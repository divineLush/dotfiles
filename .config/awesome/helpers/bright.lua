-------------------------------------------------
-- Bright helper
-------------------------------------------------

local awful = require("awful")
local naughty = require("naughty")

local helper = {}

local function set_bright()
    awful.spawn.easy_async("brightnessctl get", function(out)
        local str = string.gsub(out, "%s+", "")
        naughty.notify({ title = "Fun Fact!", text = "Brightness = "..str })
    end)
end

local function update_bright(cmd)
    awful.spawn.easy_async(cmd, set_bright)
end

function helper:inc()
    update_bright("brightnessctl set +2%")
end

function helper:dec()
    update_bright("brightnessctl set 2%-")
end

return helper
