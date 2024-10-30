#
# ~/.zprofile
#

if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec Hyprland > /dev/null
fi
