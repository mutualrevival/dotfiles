#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item front_app q \
           --set front_app       background.height=2 \
                                 background.color=$ITEM_BG_COLOR \
                                 background.color=$COLOR_GREEN\
                                 background.y_offset=-15 \
                                 background.drawing=on \
                                 background.corner_radius=0 \
                                 icon.color=$COLOR_BLACK \
                                 icon.font="sketchybar-app-font:Regular:12.0" \
                                 label.color=$COLOR_BLACK \
                                 script="$PLUGIN_DIR/front_app.sh"            \
           --subscribe front_app front_app_switched