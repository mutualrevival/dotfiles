#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item time right \
           --set time icon=􀐫 \
                      update_freq=30 \
                      script="$PLUGIN_DIR/time.sh" \
                      background.height=2 \
                      background.color=$COLOR_MAGENTA \
                      background.y_offset=-15 \
                      background.drawing=on \
           --subscribe time system_woke
