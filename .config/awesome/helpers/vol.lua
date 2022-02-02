-------------------------------------------------
-- Volume helper
-------------------------------------------------

local awful = require("awful")
local naughty = require("naughty")

local helper = {}

local function set_volume()
    awful.spawn.easy_async("amixer", function(out)
        local substr = string.match(out, "Master.*%[%d*%%%]")
        local val = string.match(substr, "%[%d*%%%]")
        local raw_val = string.sub(val, 2, -3)

        local muted_substr = string.match(out, "Master.*%[%l*%]")
        local muted_val = string.match(muted_substr, "%[%l*%]")
        local raw_muted = string.find(muted_val, "off") ~= nil

        local msg_muted = ''
        if raw_muted then
            msg_muted = ' muted'
        end

        naughty.notify({ title = "Fun Fact!", text = "Volume = "..raw_val..msg_muted })
    end)
end

local function update_volume(cmd)
    awful.spawn.easy_async(cmd, set_volume)
end

function helper:inc()
    update_volume("amixer -D pulse sset Master 3%+")
end

function helper:dec()
    update_volume("amixer -D pulse sset Master 3%-")
end

function helper:toggle()
    update_volume("amixer -D pulse sset Master toggle")
end

return helper
