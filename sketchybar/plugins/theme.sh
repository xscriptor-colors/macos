#!/bin/bash

CURRENT_THEME="x"
if [[ -f "$CONFIG_DIR/theme" ]]; then
  CURRENT_THEME=$(cat "$CONFIG_DIR/theme")
fi

THEMES=()
for file in "$CONFIG_DIR"/themes/*.sh; do
  THEMES+=("$(basename "$file" .sh)")
done

if [[ "${THEMES[0]}" != "x" ]]; then
  for ((i = 0; i < ${#THEMES[@]}; i++)); do
    if [[ "${THEMES[i]}" == "x" ]]; then
      unset 'THEMES[i]'
      THEMES=("x" "${THEMES[@]}")
      break
    fi
  done
fi

NEXT_THEME=""
for ((i = 0; i < ${#THEMES[@]}; i++)); do
  if [[ "${THEMES[i]}" == "$CURRENT_THEME" ]]; then
    NEXT_THEME="${THEMES[((i + 1) % ${#THEMES[@]})]}"
    break
  fi
done

if [[ -z $NEXT_THEME ]]; then
  NEXT_THEME="${THEMES[0]}"
fi

echo "$NEXT_THEME" > "$CONFIG_DIR/theme"
sketchybar --reload
