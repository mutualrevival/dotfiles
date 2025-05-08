#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

if [ $SELECTED = true ]; then
  sketchybar --set $NAME background.drawing=on \
                         background.color=$ACCENT_COLOR \
                         label.color=$COLOR_BLACK
else
  sketchybar --set $NAME background.drawing=off \
                         label.color=$COLOR_BLACK
fi
