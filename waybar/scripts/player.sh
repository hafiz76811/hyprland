#!/bin/bash

status=$(playerctl status)

if [ "$status" = "Paused" ]; then
	playerctl play
fi

if [ "$status" = "Playing" ]; then
	playerctl pause
fi

if [ "$status" = "Stopped" ]; then
	playerctl play
fi
