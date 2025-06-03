#!/bin/bash

ICON_CONNECTED="􀙇"
ICON_DISCONNECTED="􀙈"

INTERFACE=$(networksetup -listallhardwareports | awk '/Wi-Fi|AirPort/{getline; print $2}')
IP_ADDRESS=$(ipconfig getifaddr "$INTERFACE" 2>/dev/null)

# If no IP, assume disconnected
if [[ -z "$IP_ADDRESS" ]]; then
  sketchybar --set wifi icon="$ICON_DISCONNECTED" label=""
  exit 0
fi

# RX/TX before
RX_BEFORE=$(netstat -ib | awk -v iface="$INTERFACE" '$1 == iface && $7 ~ /^[0-9]+$/ {rx+=$7} END {print rx}')
TX_BEFORE=$(netstat -ib | awk -v iface="$INTERFACE" '$1 == iface && $10 ~ /^[0-9]+$/ {tx+=$10} END {print tx}')

sleep 1

# RX/TX after
RX_AFTER=$(netstat -ib | awk -v iface="$INTERFACE" '$1 == iface && $7 ~ /^[0-9]+$/ {rx+=$7} END {print rx}')
TX_AFTER=$(netstat -ib | awk -v iface="$INTERFACE" '$1 == iface && $10 ~ /^[0-9]+$/ {tx+=$10} END {print tx}')

# Convert to Mbps (bytes diff * 8 bits / 1_000_000)
RX_MBPS=$(awk "BEGIN {printf \"%.1f\", ($RX_AFTER - $RX_BEFORE) * 8 / 1000000}")
TX_MBPS=$(awk "BEGIN {printf \"%.1f\", ($TX_AFTER - $TX_BEFORE) * 8 / 1000000}")

# Clamp negative values
(( $(echo "$RX_MBPS < 0" | bc -l) )) && RX_MBPS="0.0"
(( $(echo "$TX_MBPS < 0" | bc -l) )) && TX_MBPS="0.0"

LABEL="${TX_MBPS}↓ ${RX_MBPS}↑"

sketchybar --set wifi icon="$ICON_CONNECTED" label="$LABEL"
