#!/bin/bash

CURRENT_THEME="x"
if [[ -f "$CONFIG_DIR/theme" ]]; then
  CURRENT_THEME=$(cat "$CONFIG_DIR/theme")
fi

theme=(
  "${menu_defaults[@]}"
  icon=$ICON_THEME
  icon.color=$HIGHLIGHT
  icon.font="$FONT:Regular:13"
  label="$CURRENT_THEME"
  label.color=$LABEL_COLOR
  label.font="$FONT:Medium:10"
  popup.align=right
  background.padding_left=2
  background.padding_right=2
  click_script="$PLUGIN_DIR/theme_popup.sh"
)

sketchybar --add item theme right --set theme "${theme[@]}"

for file in "$CONFIG_DIR"/themes/*.sh; do
  name=$(basename "$file" .sh)
  if [[ "$name" == "$CURRENT_THEME" ]]; then
    marker=$ICON_THEME
    marker_color=$HIGHLIGHT
    label_color=$HIGHLIGHT
  else
    marker=""
    marker_color=$ICON_COLOR
    label_color=$LABEL_COLOR
  fi
  sketchybar --add item theme.popup.$name popup.theme \
    --set theme.popup.$name "${menu_item_defaults[@]}" \
      icon="$marker" \
      icon.color=$marker_color \
      label="$name" \
      label.color=$label_color \
      click_script="sketchybar --set theme popup.drawing=off; \"$PLUGIN_DIR/theme.sh\" $name"
done
