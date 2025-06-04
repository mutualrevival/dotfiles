#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item cpu right \
           --set cpu update_freq=2 \
                     icon=􀧓 \
                     label.font="SF Pro:SemiBold:12" \
                     label.align=right \
                     icon.color=$COLOR_BLACK \
                     label.color=$COLOR_BLACK \
                     script="$PLUGIN_DIR/cpu.sh"
