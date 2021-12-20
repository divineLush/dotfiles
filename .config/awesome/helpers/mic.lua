-------------------------------------------------
-- Mic helper
-------------------------------------------------

local awful = require("awful")
local naughty = require("naughty")

local helper = {}

local function set_mic()
    awful.spawn.easy_async("amixer", function(out)
        local is_on = string.find(out, "Capture.*%[on%]") ~= nil

        local muted = ' muted'
        if is_on then
            muted = ''
        end

        local raw_val = string.match(out, "Capture.*%[%d*%%%]")
        local val = string.match(raw_val, "%[%d*%%%]")
        local stripped = string.sub(val, 2, -3)

        naughty.notify({ title = "Fun Fact!", text = "Mic = "..stripped..muted })
    end)
end

local function update_mic(cmd)
    awful.spawn.easy_async(cmd, set_mic)
end

function helper:toggle()
    update_mic("amixer sset Capture toggle")
end

function helper:mute()
    update_mic("amixer sset Capture cap")
end

function helper:unmute()
    update_mic("amixer sset Capture nocap")
end

function helper:inc_vol()
    update_mic("amixer sset Capture 5%+")
end

function helper:dec_vol()
    update_mic("amixer sset Capture 5%-")
end

return helper

