#!/bin/bash

THEMES_DIR="$CONFIG_DIR/themes"
THEME_FILE="$CONFIG_DIR/theme"

usage() {
  echo "Usage: theme.sh [theme-name]"
  echo ""
  echo "Switches the active SketchyBar theme and reloads the bar."
  echo "With no arguments, prints the current theme and available themes."
  echo ""
  echo "Available themes:"
  for file in "$THEMES_DIR"/*.sh; do
    name=$(basename "$file" .sh)
    label=$(grep -m1 '^THEME_NAME=' "$file" | sed 's/THEME_NAME=//; s/"//g')
    if [[ "$name" == "$(cat "$THEME_FILE" 2>/dev/null || echo x)" ]]; then
      echo "  * $name ($label)"
    else
      echo "    $name ($label)"
    fi
  done
}

if [[ $# -eq 0 ]]; then
  usage
  exit 0
fi

name="$1"

if [[ ! -f "$THEMES_DIR/$name.sh" ]]; then
  echo "Unknown theme: $name" >&2
  usage
  exit 1
fi

echo "$name" > "$THEME_FILE"
sketchybar --reload
echo "Theme switched to: $name"
