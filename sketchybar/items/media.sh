#!/bin/bash

sketchybar --add item media left \
           --set media label.color=$FONT_COLOR \
                       label.max_chars=30 \
                       scroll_texts=on \
                       icon=􀑪 \
                       icon.color=$COLOR_ORANGE \
                       background.drawing=on \
                       clickable=on \
                       script="$PLUGIN_DIR/media.sh" \
                       click_script='
                         if [[ -f /tmp/sketchybar-current-media-app ]]; then
                           APP=$(cat /tmp/sketchybar-current-media-app)
                           osascript -e "tell application \"$APP\" to activate"
                         fi
                       ' \
           --subscribe media media_change
