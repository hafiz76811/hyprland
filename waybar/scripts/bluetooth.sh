#!/bin/bash

status=$(bluetoothctl show | grep -o "Powered: no")

if [ -n "$status" ]; then
	bluetoothctl power on
else
	bluetoothctl power off
fi
