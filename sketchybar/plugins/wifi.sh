#!/bin/bash

ICON_CONNECTED="􀙇"
ICON_DISCONNECTED="􀙈"

INTERFACE=$(networksetup -listallhardwareports | awk '/Wi-Fi|AirPort/{getline; print $2}')
IP_ADDRESS=$(ipconfig getifaddr "$INTERFACE" 2>/dev/null)

if [[ -z "$IP_ADDRESS" ]]; then
  sketchybar --set wifi icon="$ICON_DISCONNECTED" label=""
  exit 0
fi

# Capture RX and TX before sleep
RX_BYTES_BEFORE=$(netstat -ib | awk -v iface="$INTERFACE" '$1 == iface && $7 ~ /^[0-9]+$/ {rx+=$7} END {print rx}')
TX_BYTES_BEFORE=$(netstat -ib | awk -v iface="$INTERFACE" '$1 == iface && $10 ~ /^[0-9]+$/ {tx+=$10} END {print tx}')

# Wait 1 second to measure rate
sleep 1

# Capture RX and TX after sleep
RX_BYTES_AFTER=$(netstat -ib | awk -v iface="$INTERFACE" '$1 == iface && $7 ~ /^[0-9]+$/ {rx+=$7} END {print rx}')
TX_BYTES_AFTER=$(netstat -ib | awk -v iface="$INTERFACE" '$1 == iface && $10 ~ /^[0-9]+$/ {tx+=$10} END {print tx}')

# Calculate rate in KB/s
RX_RATE=$(( (RX_BYTES_AFTER - RX_BYTES_BEFORE) / 1024 ))
TX_RATE=$(( (TX_BYTES_AFTER - TX_BYTES_BEFORE) / 1024 ))

# Clamp negative values (just in case)
if (( RX_RATE < 0 )); then RX_RATE=0; fi
if (( TX_RATE < 0 )); then TX_RATE=0; fi

# Format output: IP address, then upload/download
UPLOAD="${TX_RATE}↑"
DOWNLOAD="${RX_RATE}↓"

LABEL="$(printf "%s %s  %s" "$IP_ADDRESS" " |" "$UPLOAD""$DOWNLOAD")"

sketchybar --set wifi icon="$ICON_CONNECTED" label="$LABEL"
