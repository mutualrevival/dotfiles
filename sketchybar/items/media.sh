#!/bin/bash

source "$CONFIG_DIR/colors.sh"

sketchybar --add item media q \
  --set media \
    label.color="$COLOR_BLACK" \
    label.max_chars=30 \
    scroll_texts=on \
    icon="􀑪" \
    icon.color="$COLOR_BLACK" \
    background.drawing=on \
    background.color=$COLOR_WHITE \
    script="$PLUGIN_DIR/media.sh" \
    click_script='
      if [[ -f /tmp/sketchybar-current-media-app ]]; then
        APP=$(cat /tmp/sketchybar-current-media-app)
        echo "Click: launching $APP" >> /tmp/media_click.log
        open -a "$APP"
      fi
    ' \
  --subscribe media media_change
