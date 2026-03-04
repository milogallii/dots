/home/mgalli/Scripts/tery.sh &
xrdb -merge ~/.Xresources
dunst &
xset -dpms
xset s off
xrandr --output HDMI-1 --auto --mode 3440x1440 --scale 1.25x1.25 --pos 0x0 --output eDP-1 --auto --pos 740x1800
feh --bg-fill ~/Pictures/wall.jpg
picom -b
exec dwm
