#!/bin/bash

status=$(nmcli radio wifi)

if [ "$status" = "enabled" ]; then
	nmcli radio wifi off
fi

if [ "$status" = "disabled" ]; then
	nmcli radio wifi on
fi
