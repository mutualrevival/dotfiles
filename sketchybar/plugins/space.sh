#!/bin/bash

CONFIG_DIR="$HOME/.config/sketchybar"
source "$CONFIG_DIR/colors.sh"

active_space=$(aerospace list-workspaces --focused --json | jq -r '.[0].workspace')

sketchybar --set "$NAME" label="$active_space"
