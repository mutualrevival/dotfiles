#!/bin/bash

CONFIG_DIR="$HOME/.config/sketchybar"
source "$CONFIG_DIR/colors.sh"

sketchybar --add event aerospace_workspace_change

# Remove any previous items
for i in {1..9}; do
  sketchybar --remove space.$i 2>/dev/null
done

# Add all 9 space indicators
for i in {1..9}; do
  sketchybar --add item space.$i left \
             --set space.$i script="$CONFIG_DIR/plugins/space.sh $i" \
                              label.font="SF Pro:Regular:8" \
                              label.padding_left=4 \
                              label.padding_right=4 \
                              icon.color=$COLOR_BLACK \
                              label.color=$COLOR_BLACK \
                              icon.drawing=off \
                              background.drawing=off \
                              padding_left=0 \
                              padding_right=0 \
                              margin=0 \
                              click_script="aerospace workspace $i" \
             --subscribe space.$i aerospace_workspace_change
done
