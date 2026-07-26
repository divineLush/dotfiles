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
  -- hl.exec_cmd("waybar")
  hl.exec_cmd("hyprpaper")
end)

hl.config({
  general = {
    gaps_in = 6,
    gaps_out = 6,
    border_size = 2,
    col = {
      active_border = "#babbf1",
      inactive_border = "#414559",
    },
    layout = "dwindle",
    allow_tearing = false,
  },
  dwindle = {
    preserve_split = true,
    force_split = 2,
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

hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "default", style = "slide" })
hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "default" })
