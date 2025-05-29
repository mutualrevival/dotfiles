#!/bin/bash

STATE="$(echo "$INFO" | jq -r '.state')"
APP="$(echo "$INFO" | jq -r '.app')"
TITLE="$(echo "$INFO" | jq -r '.title')"
ARTIST="$(echo "$INFO" | jq -r '.artist')"

# If state is playing, show the media and store app
if [[ "$STATE" == "playing" && -n "$TITLE" ]]; then
  LABEL="$TITLE"
  if [[ -n "$ARTIST" && "$ARTIST" != "null" ]]; then
    LABEL+=" - $ARTIST"
  fi

  sketchybar --set "$NAME" label="$LABEL" drawing=on

  # Save app name for click_script
  [[ -n "$APP" && "$APP" != "null" ]] && echo "$APP" > /tmp/sketchybar-current-media-app

else
  # Nothing playing — hide item and clean temp
  sketchybar --set "$NAME" drawing=off
  rm -f /tmp/sketchybar-current-media-app
fi
