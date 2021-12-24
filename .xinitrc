light -S 25 &
tlp start &
redshift -O 3200 &
amixer sset Master 20% &
amixer sset Capture nocap &
setxkbmap -layout 'us,ru' -option 'grp:alt_shift_toggle' &
xrdb ~/.Xresources

exec awesome
