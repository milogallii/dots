/home/mgalli/Scripts/tery.sh &
xrdb -merge ~/.Xresources

export QT_SCALE_FACTOR=2
export GDK_SCALE=2
export XDG_CURRENT_DESKTOP=gtk
export XDG_SESSION_TYPE=x11
export XCURSOR_SIZE=24
export QT_QPA_PLATFORMTHEME=qt5ct

dunst &
xset s off
xset s noblank
xset -dpms
xset dpms 0 0 0
xset r rate 300 30

xwallpaper --zoom ~/Pictures/wall.jpg
picom -b
/usr/lib/xdg-desktop-portal-gtk &
/usr/lib/xdg-desktop-portal &

exec dwm
