#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item cpu left \
           --set cpu update_freq=2 \
                     icon=􀧓 \
                     label.font="SF Pro:SemiBold:12" \
                     label.align=right \
                     script="$PLUGIN_DIR/cpu.sh"
