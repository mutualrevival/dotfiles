#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item volume left \
           --set volume \
             script="$PLUGIN_DIR/volume.sh" \
             --subscribe volume volume_change
             # background.drawing=on \
             # background.height=2 \
             # background.color=$COLOR_ORANGE \
             # background.y_offset=-15 \
             # background.corner_radius=0 \
