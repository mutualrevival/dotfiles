#!/bin/bash

CONFIG_DIR="$HOME/.config/sketchybar"
source "$CONFIG_DIR/colors.sh"

#Time
sketchybar --add item datetime_time right \
           --set datetime_time script="$PLUGIN_DIR/datetime.sh" \
                               update_freq=60 \
                               icon.drawing=on \
                               icon=􀐫 \
                               icon.color=$COLOR_GREEN_LIGHT

# Date
sketchybar --add item datetime_date right \
           --set datetime_date script="$PLUGIN_DIR/datetime.sh" \
                               update_freq=60 \
                               icon.drawing=on \
                               icon=􀉉 \
                               icon.color=$COLOR_PURPLE \
                               click_script="open https://calendar.google.com"