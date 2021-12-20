-------------------------------------------------
-- Bright helper
-------------------------------------------------

local awful = require("awful")
local naughty = require("naughty")

local helper = {}

local function set_bright()
    awful.spawn.easy_async("light", function(out)
        local raw_val = string.sub(out, 1, -2)
        local num_val = math.floor(tonumber(raw_val))

        naughty.notify({ title = "Fun Fact!", text = "Brightness = "..num_val })
    end)
end

local function update_bright(cmd)
    awful.spawn.easy_async(cmd, set_bright)
end

function helper:inc()
    update_bright("light -A 5%")
end

function helper:dec()
    update_bright("light -U 5%")
end

return helper
