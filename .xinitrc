/home/mgalli/Scripts/tery.sh &
xrdb -merge ~/.Xresources
dunst &
xset -dpms
xset s off
feh --bg-fill ~/Pictures/wall.jpg
picom -b
exec dwm
