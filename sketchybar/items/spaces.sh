#!/bin/bash

CONFIG_DIR="$HOME/.config/sketchybar"
source "$CONFIG_DIR/colors.sh"

sketchybar --add event aerospace_workspace_change

sketchybar --add item spaces e \
           --set spaces script="$CONFIG_DIR/plugins/space.sh" \
                         update_freq=2 \
                         label.font="SF Pro:Semibold:12.0" \
                         label.color=$COLOR_BLACK \
                         label.font="Aušrinė:Regular:24.0" \
                         y_offset=2 \
           --subscribe spaces aerospace_workspace_change