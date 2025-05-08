#!/bin/bash

# Add the Wi-Fi item to the left side
sketchybar --add item wifi left

# Set an initial label, such as "Wi-Fi: Disconnected" to show that it’s active
sketchybar --set wifi label="􀙇" update_freq=10

# Define the script to run when the item is clicked
sketchybar --set wifi click_script="/Users/jaycsmith/.config/sketchybar/plugins/wifi.sh"
