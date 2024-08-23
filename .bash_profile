#
# ~/.bash_profile
#

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
#
# if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#     exec Hyprland > /dev/null
# fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
