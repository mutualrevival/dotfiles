#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item media e \
  --set media \
    label.color="$COLOR_BLACK" \
    label.max_chars=20 \
    icon.padding_left=0 \
    scroll_texts=on \
    icon="􀑪" \
    icon.color="$COLOR_BLACK" \
    background.drawing=on \
    script="$PLUGIN_DIR/media.sh" \
    click_script='
      if [[ -f /tmp/sketchybar-current-media-app ]]; then
        APP=$(cat /tmp/sketchybar-current-media-app)
        echo "Click: launching $APP" >> /tmp/media_click.log
        open -a "$APP"
      fi
    ' \
    background.height=2 \
                 background.color=$COLOR_BLUE \
                 background.y_offset=-15 \
                 background.drawing=on \
                 background.corner_radius=0 \
  --subscribe media media_change
