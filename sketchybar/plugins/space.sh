#!/bin/bash

CONFIG_DIR="$HOME/.config/sketchybar"
source "$CONFIG_DIR/colors.sh"

# Get the active space
active_space=$(aerospace list-workspaces --focused --json | jq -r '.[0].workspace')

# Get the space number passed in
this_space=$1

if [ "$this_space" = "$active_space" ]; then
  sketchybar --set "$NAME" label="􀀁"
else
  sketchybar --set "$NAME" label="􀀀"
fi
