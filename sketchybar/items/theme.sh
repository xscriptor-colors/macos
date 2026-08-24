#!/bin/bash

CURRENT_THEME="x"
if [[ -f "$CONFIG_DIR/theme" ]]; then
  CURRENT_THEME=$(cat "$CONFIG_DIR/theme")
fi

theme=(
  icon=$ICON_THEME
  icon.color=$HIGHLIGHT
  icon.font="$FONT:Regular:13"
  label="$CURRENT_THEME"
  label.color=$LABEL_COLOR
  label.font="$FONT:Medium:10"
  background.padding_left=2
  background.padding_right=2
  script="$PLUGIN_DIR/theme.sh"
  click_script="$PLUGIN_DIR/theme.sh"
)

sketchybar --add item theme right --set theme "${theme[@]}"
