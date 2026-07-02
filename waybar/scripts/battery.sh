#!/bin/bash

# ambil nilai battery
status=$(cat /sys/class/power_supply/BAT0/status | tr '[:upper:]' '[:lower:]')
capacity=$(cat /sys/class/power_supply/BAT0/capacity)

# berhenti jika error
set -e

# function untuk mengecek status battery
status_battery () {
  
  if [[ "$status" = "discharging" ]]; then
    if [ $capacity -le 20 ] && [ $capacity -gt 15 ]; then
      status="warning"
    elif [ $capacity -le 15 ]; then
      status="critical"
    else
      status="default"
    fi
  fi
    
  if [[ "$status" = "charging" ]]; then
    if [ $capacity -eq 100 ]; then
      status="full"
    elif [ $capacity -gt 20 ]; then
      status="charging"
    else
      status="default"
    fi
  fi

  # return value: status
}

status_battery $capacity $state

# output dengan syntax jsonc/json
echo -e "{\"text\": $capacity, \"percentage\": $capacity, \"class\": \"$status\", \"alt\": \"$status\", \"tooltip\": \"Battery: $capacity% $status\"}"
