#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item volume right \
           --set volume \
             script="$PLUGIN_DIR/volume.sh" \
             icon.color=$COLOR_YELLOW \
             background.drawing=on \
             background.color=$ITEM_BG_COLOR \
           --subscribe volume volume_change
