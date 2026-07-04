local terminal = "alacritty"
local fileManager = "pcmanfm"
local menu = "fuzzel"
local mainMod = "SUPER"

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + ALT + F", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + ALT + C", hl.dsp.exec_cmd("chromium"))
hl.bind(mainMod .. " + ALT + T", hl.dsp.exec_cmd("telegram-desktop"))
hl.bind(mainMod .. " + ALT + V", hl.dsp.exec_cmd("pavucontrol"))
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("hyprlock"))
hl.bind("ALT + SPACE", hl.dsp.exec_cmd(menu))

hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + SHIFT + H", hl.dsp.focus({ workspace = "r-1" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.focus({ workspace = "r+1" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.focus({ workspace = "r+1" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.focus({ workspace = "r-1" }))

hl.bind(mainMod .. " + M", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind(mainMod .. " + N", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.window.move({ workspace = "r+1" }))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.window.move({ workspace = "r-1" }))

hl.bind(mainMod .. " + code:34", hl.dsp.exec_cmd("brightnessctl set 2%-"))
hl.bind(mainMod .. " + code:35", hl.dsp.exec_cmd("brightnessctl set +2%"))

hl.bind(mainMod .. " + code:47", hl.dsp.exec_cmd("pamixer -i 2"))
hl.bind(mainMod .. " + code:48", hl.dsp.exec_cmd("pamixer -d 2"))

hl.bind(mainMod .. " + code:20", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind(mainMod .. " + code:21", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind(mainMod .. " + code:22", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
