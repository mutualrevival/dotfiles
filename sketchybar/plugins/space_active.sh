#!/bin/bash

# Get the currently focused workspace number
active_workspace=$(aerospace list-workspaces --focused --json | jq -r '.[0].workspace')

# Update the label in Sketchybar
sketchybar --set space.active label="$active_workspace"
