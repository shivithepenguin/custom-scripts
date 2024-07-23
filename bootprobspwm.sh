#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/Wallpapers/bspwm"

# Randomly select a wallpaper
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the wallpaper using feh
feh --bg-scale "$WALLPAPER"

# Apply colors using pywal
wal -i "$WALLPAPER"

if [[ $(basename "$WALLPAPER") == "wallp3.jpg" ]]; then 
	wal --theme base16-chalk

elif [[ $(basename "$WALLPAPER") == "wallp2.jpg" ]]; then
	wal --theme dkeg-mattd

else 
	wal -i "$WALLPAPER"
fi

#kill all programs and launching theme
killall polybar
killall picom
killall sxhkd
killall mpd
killall dunst

polybar &
picom &
dunst &
sxhkd &
mpd 
