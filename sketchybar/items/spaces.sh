#!/bin/bash

CONFIG_DIR="$HOME/.config/sketchybar"
source "$CONFIG_DIR/colors.sh"

# Add the Aerospace event once
sketchybar --add event aerospace_workspace_change

# Add a single Sketchybar item to show the active space
sketchybar --add item space.active left \
           --subscribe space.active aerospace_workspace_change \
           --set space.active \
           label.padding_left=0 \
           label.padding_right=5 \
           label.font="SF Pro:Semibold:12" \
            background.height=4 \
                 background.color=$COLOR_GREEN\
                 background.y_offset=-15 \
                 background.drawing=on \
                 background.corner_radius=0 \
           script="$CONFIG_DIR/plugins/space_active.sh"
