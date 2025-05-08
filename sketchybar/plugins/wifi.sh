#!/bin/bash

# Absolute path for the networksetup command
NETWORK_SETUP="/usr/sbin/networksetup"

# Try to get the SSID from en0
SSID=$($NETWORK_SETUP -getairportnetwork en0 | sed 's/^Current Wi-Fi Network: //')

# If no SSID found, try en1
if [[ -z "$SSID" ]]; then
  SSID=$($NETWORK_SETUP -getairportnetwork en1 | sed 's/^Current Wi-Fi Network: //')
fi

# If still disconnected, show disconnected status
if [[ -z "$SSID" ]]; then
    sketchybar --set wifi label="Wi-Fi: Disconnected"
else
    sketchybar --set wifi label="Wi-Fi: $SSID"
fi
