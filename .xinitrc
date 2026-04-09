/home/mgalli/Scripts/tery.sh &

rdb -merge ~/.Xresources

export XDG_CURRENT_DESKTOP=gtk
export XDG_SESSION_TYPE=x11

dunst &
feh --bg-fill ~/Pictures/wall.jpg
xset s off          
xset s noblank      
xset -dpms          
xset dpms 0 0 0     
picom -b

/usr/lib/xdg-desktop-portal-gtk &
/usr/lib/xdg-desktop-portal &

exec dwm
