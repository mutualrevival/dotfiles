#!/bin/bash

DIRECTION="$1"
CURRENT_WS=$(aerospace list-workspaces --focused --json | jq -r '.[0].workspace')

# Workspace range: 1 to 9
if [ "$DIRECTION" = "prev" ]; then
  NEW_WS=$((CURRENT_WS - 1))
  if [ "$NEW_WS" -lt 1 ]; then
    NEW_WS=9
  fi
elif [ "$DIRECTION" = "next" ]; then
  NEW_WS=$((CURRENT_WS + 1))
  if [ "$NEW_WS" -gt 9 ]; then
    NEW_WS=1
  fi
else
  exit 1
fi

# Switch to the calculated workspace
aerospace workspace "$NEW_WS"
