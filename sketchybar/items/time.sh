#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item time right \
           --set time icon=􀐫 \
                      update_freq=30 \
                      script="$PLUGIN_DIR/time.sh" \
                      background.drawing=on \
                      background.color=$COLOR_GREEN \       
           --subscribe time system_woke
