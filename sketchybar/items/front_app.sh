#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item front_app left \
           --set front_app       background.color=$ITEM_BG_COLOR \
                                 icon.color=$FONT_COLOR \
                                 icon.font="sketchybar-app-font:Regular:12.0" \
                                 label.color=$FONT_COLOR \
                                 script="$PLUGIN_DIR/front_app.sh"            \
           --subscribe front_app front_app_switched