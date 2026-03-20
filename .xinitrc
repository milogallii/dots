/home/mgalli/Scripts/tery.sh &
xrdb -merge ~/.Xresources
dunst &
feh --bg-fill ~/Pictures/wall.jpg
xset s off          
xset s noblank      
xset -dpms          
xset dpms 0 0 0     
picom -b
exec dwm
