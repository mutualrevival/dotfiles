#!/bin/bash

sketchybar --add item wifi left \
           --set wifi script="$PLUGIN_DIR/wifi.sh" \
                        update_freq=5 \                        icon.font="SF Pro:SemiBold:10.0" \
                        label.font="SF Pro:Semibold:11.0" \
                        label.drawing=on \
                        label.align=left \
                        label.y_offset=0 \
                        icon.y_offset=0 \
                        icon.padding_right=5 \
                        icon.padding_left=0 \
                        label.padding_right=0 \
                        label.padding_left=0 \
                        update_freq=2 \
                        click_script="open 'x-apple.systempreferences:com.apple.wifi-settings-extension'"

                        # background.drawing=on \
                        # background.height=2 \
                        # background.color=$COLOR_YELLOW \
                        # background.y_offset=-15 \
                        # background.corner_radius=0 \
