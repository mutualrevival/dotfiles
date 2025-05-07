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
           label.padding_right=0 \
           label.font="SF Pro:Semibold:12" \
           script="$CONFIG_DIR/plugins/space_active.sh"
