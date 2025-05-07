#!/bin/bash

# Source the colors from colors.sh
source "$CONFIG_DIR/colors.sh"

# Define the array of colors
COLORS=(
  $COLOR_RED
  $COLOR_GREEN
  $COLOR_YELLOW
  $COLOR_BLUE
  $COLOR_MAGENTA
)

# Define the height and y-offset for positioning the color bar
BAR_HEIGHT=10  # Adjust the height of the color bar
BAR_Y_OFFSET=-5  # Set this to position the bar below the notch

# Loop through colors to create color blocks
for i in "${!COLORS[@]}"; do
  sketchybar --add item marquee_$i center \
             --set marquee_$i width=23 \
                              height=$BAR_HEIGHT \
                              y_offset=$BAR_Y_OFFSET \
                              background.color="${COLORS[$i]}" \
                              background.padding_left=0 \
                              background.padding_right=0 \
                              background.corner_radius=0 \
                              corner_radius=0 \
                              label.drawing=off \
                              icon.drawing=off
done
