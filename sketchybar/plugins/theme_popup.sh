#!/bin/bash

source "$CONFIG_DIR/globalstyles.sh"

CURRENT_THEME="x"
if [[ -f "$CONFIG_DIR/theme" ]]; then
  CURRENT_THEME=$(cat "$CONFIG_DIR/theme")
fi

for file in "$CONFIG_DIR"/themes/*.sh; do
  name=$(basename "$file" .sh)
  if [[ "$name" == "$CURRENT_THEME" ]]; then
    sketchybar --set theme.popup.$name \
      icon=$ICON_THEME \
      icon.color=$HIGHLIGHT \
      label.color=$HIGHLIGHT
  else
    sketchybar --set theme.popup.$name \
      icon="" \
      icon.color=$ICON_COLOR \
      label.color=$LABEL_COLOR
  fi
done

sketchybar --animate tanh 10 --set theme popup.drawing=toggle
