require("conf/env")
require("conf/keybinds")

hl.monitor({
  output   = "",
  mode     = "highrr",
  position = "auto",
  scale    = "1",
})

hl.on("hyprland.start", function ()
  hl.exec_cmd("hyprsunset")
  hl.exec_cmd("mako")
  hl.exec_cmd("waybar")
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("brightnessctl set 50%")
  hl.exec_cmd("pamixer --set-volume 30")
end)


hl.config({
  general = {
    gaps_in = 6,
    gaps_out = 6,
    border_size = 0,
    layout = "master",
    allow_tearing = false,
  },
  dwindle = {
    preserve_split = true,
  },
  decoration = {
    shadow = {
      enabled = false,
    },
    blur = {
      enabled = false,
    },
  },
  input = {
    kb_layout = "us, ru",
    kb_options = "grp:alt_shift_toggle",
  },
  misc = {
    disable_hyprland_logo = true,
  },
})
