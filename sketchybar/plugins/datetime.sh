#!/bin/bash
DATE=$(date "+%a %b %d")
TIME=$(date "+%I:%M %p")

sketchybar --set datetime_time label="$TIME"
sketchybar --set datetime_date label="$DATE"
