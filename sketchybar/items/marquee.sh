#!/bin/bash

# Add the marquee item
sketchybar --add item marquee_controller center \
           --set marquee_controller script="$PLUGIN_DIR/marquee.sh" \
           update_freq=0.5 \
           updates=on \
           drawing=off
