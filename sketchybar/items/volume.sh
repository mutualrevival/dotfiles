#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item volume right \
           --set volume \
             script="$PLUGIN_DIR/volume.sh" \
             icon.color=$COLOR_BLACK \
             label.color=$COLOR_BLACK \
             --subscribe volume volume_change
