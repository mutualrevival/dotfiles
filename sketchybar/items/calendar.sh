#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item calendar right \
           --set calendar icon=􀉉 \
                          update_freq=30 \
                          script="$PLUGIN_DIR/calendar.sh" \
                 click_script="open -a Firefox https://calendar.google.com" \
           --subscribe calendar system_woke