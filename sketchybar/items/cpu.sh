#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item cpu right \
           --set cpu update_freq=2 \
                     icon=􀧓 \
                     icon.color=$COLOR_BLUE \
                     label.align=right \
                     background.color=$ITEM_BG_COLOR \
                     script="$PLUGIN_DIR/cpu.sh" \
                     click_script="open -a 'Activity Monitor'"
