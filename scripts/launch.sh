#!/bin/bash

# waybar
if ps c | grep -w waybar; then
	pkill waybar && waybar &
else
	waybar &
fi

# hyprpaper
if ps c | grep -w hyprpaper; then
	pkill hyprpaper && hyprpaper &
else
	hyprpaper &
fi

# hypridle
if ps c | grep -w hypridle; then
	pkill hypridle && hypridle &
else
	hypridle &
fi

# hyprland
hyprctl reload
