#!/bin/bash

source "$CONFIG_DIR/colors.sh"

IP="$(ipconfig getifaddr en0 2>/dev/null)"
INTERFACE="en0"

if [ "$IP" != "" ]; then
  sketchybar --set wifi.popup.ip \
    icon="󰩠" \
    icon.color=$(getcolor cyan) \
    label="IP: $IP" \
    popup.drawing=off

  sketchybar --set wifi.popup.ssid \
    icon="󰖩" \
    icon.color=$(getcolor cyan) \
    label="SSID: (redacted)" \
    popup.drawing=off

  sketchybar --set wifi.popup.interface \
    icon="󰚝" \
    icon.color=$(getcolor cyan) \
    label="Interface: $INTERFACE" \
    popup.drawing=off
else
  sketchybar --set wifi.popup.ip \
    icon="󰖪" \
    icon.color=$(getcolor red) \
    label="IP: Disconnected" \
    popup.drawing=off

  sketchybar --set wifi.popup.ssid \
    icon="󰖪" \
    icon.color=$(getcolor red) \
    label="Not connected" \
    popup.drawing=off

  sketchybar --set wifi.popup.interface \
    icon="󰚝" \
    icon.color=$(getcolor red) \
    label="Interface: $INTERFACE" \
    popup.drawing=off
fi

sketchybar --animate tanh 10 --set wifi popup.drawing=toggle
