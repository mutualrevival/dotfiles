#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item calendar right \
           --set calendar icon=􀉉 \
                          update_freq=30 \
                          script="$PLUGIN_DIR/calendar.sh" \
                 background.height=2 \
                 background.color=$COLOR_CYAN \
                 background.y_offset=-15 \
                 background.drawing=on \
                 background.corner_radius=0 \
                 click_script="open -a Firefox https://calendar.google.com" \
           --subscribe calendar system_woke