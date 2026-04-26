#!/bin/bash

rm -rf ./oxwm ./dwm ./st ./picom ./mpv ./Scripts ./dunst ./fish ./helix ./.Xauthority ./.xinitrc ./.tmux.conf ./nvim

cp -r ~/.config/dwm .
cp -r ~/.config/st .
cp -r ~/.config/picom .
cp -r ~/.config/mpv .
cp -r ~/.config/dunst .
cp -r ~/.config/fish .
cp -r ~/.config/dwm .
cp -r ~/.config/helix .
cp -r ~/.config/nvim .
cp -r ~/.config/oxwm .

cp -r ~/Scripts .
cp -r ~/.xinitrc .
cp -r ~/.tmux.conf .
cp -r ~/.Xauthority .

cp ~/Pictures/wall.jpg .
