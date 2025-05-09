#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item cpu left \
           --set cpu update_freq=2 \
                     icon=􀧓 \
                     label.font="SF Pro:SemiBold:12" \
                     label.align=right \
                     background.height=2 \
                     background.color=$COLOR_RED \
                     background.y_offset=-15 \
                     background.corner_radius=0 \
                     script="$PLUGIN_DIR/cpu.sh"
