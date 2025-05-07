#!/bin/bash

source "$CONFIG_DIR/colors.sh"

STATE="$(echo "$INFO" | jq -r '.state')"

if [ "$STATE" = "playing" ]; then
  MEDIA="$(echo "$INFO" | jq -r '.title + " - " + .artist')"
  SOURCE_APP="$(echo "$INFO" | jq -r '.app')"

  # Show media info in the bar
  sketchybar --set "$NAME" label="$MEDIA" drawing=on

  # Store the name of the currently playing app
  echo "$SOURCE_APP" > /tmp/sketchybar-current-media-app
else
  # Hide media if not playing
  sketchybar --set "$NAME" drawing=off

  # Clean up temp file
  rm -f /tmp/sketchybar-current-media-app
fi
