#!/bin/bash

sketchybar --add item wifi right \
           --set wifi script="$PLUGIN_DIR/wifi.sh" \
                        update_freq=5 \
                        icon.font="SF Pro:Semibold:11.0" \
                        icon.color=$COLOR_RED \
                        label.font="SF Pro:Semibold:11.0" \
                        label.drawing=on \
                        label.align=left \
                        background.drawing=on \
                        background.color=$ITEM_BG_COLOR \
                        update_freq=2 \
                        click_script="open 'x-apple.systempreferences:com.apple.wifi-settings-extension'"
