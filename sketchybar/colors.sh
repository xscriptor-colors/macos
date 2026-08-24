#!/bin/bash

ACTIVE_THEME="x"

if [[ -f "$CONFIG_DIR/theme" ]]; then
  ACTIVE_THEME=$(cat "$CONFIG_DIR/theme")
fi

source "$CONFIG_DIR/themes/$ACTIVE_THEME.sh"

COLORS=("${X[@]}")

getcolor() {
  local COLOR_NAME=$1
  local OPACITY=${2:-100}
  local COLOR=""

  for ((i = 0; i < ${#COLORS[@]}; i += 2)); do
    if [[ "${COLORS[i]}" == "$COLOR_NAME" ]]; then
      COLOR="${COLORS[i + 1]}"
      break
    fi
  done

  if [[ -z $COLOR ]]; then
    echo "Invalid color name: $COLOR_NAME" >&2
    return 1
  fi

  printf "0x%02X%s" "$(((OPACITY * 255) / 100))" "${COLOR:1}"
}

BAR_COLOR=$(getcolor black)
BAR_BORDER_COLOR=$(getcolor black 0)
HIGHLIGHT=$(getcolor accent)
HIGHLIGHT_75=$(getcolor accent 75)
HIGHLIGHT_50=$(getcolor accent 50)
HIGHLIGHT_25=$(getcolor accent 25)
HIGHLIGHT_10=$(getcolor accent 10)
ICON_COLOR=$(getcolor white)
ICON_COLOR_INACTIVE=$(getcolor white 25)
LABEL_COLOR=$(getcolor white 75)
LABEL_COLOR_NEGATIVE=$(getcolor black)
POPUP_BACKGROUND_COLOR=$(getcolor black 90)
POPUP_BORDER_COLOR=$(getcolor black 0)
SHADOW_COLOR=$(getcolor black)
TRANSPARENT=$(getcolor black 0)
