#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/Wallpapers/hyprland"

# Randomly select a wallpaper
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the wallpaper using swaybg
killall swaybg
swaybg -i "$WALLPAPER" &


#kill all programs and launching them
killall mpd
killall waybar
killall bat

waybar & 
bat &
mpd 
