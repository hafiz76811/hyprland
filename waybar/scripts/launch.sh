#!/bin/bash

if pgrep -x waybar 2> /dev/null && true || false; then
	pkill waybar && waybar &
else
	waybar &
fi
