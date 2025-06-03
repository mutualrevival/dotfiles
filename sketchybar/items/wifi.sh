#!/bin/bash

sketchybar --add item wifi right \
           --set wifi script="$PLUGIN_DIR/wifi.sh" \
                        update_freq=2 \
                        icon.padding_right=5 \
                        icon.padding_left=0 \
                        icon.y_offset=0 \
                        label.font="SF Pro:Semibold:9.0" \
                        label.padding_left=0 \
                        label.padding_right=0 \
                        label.align=left \
                        label.drawing=on \
                        click_script="open 'x-apple.systempreferences:com.apple.wifi-settings-extension'"
