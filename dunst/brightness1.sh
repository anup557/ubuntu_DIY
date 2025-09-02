#!/bin/bash

# Get current brightness level
BRIGHTNESS=$(brightnessctl g)
MAX_BRIGHTNESS=$(brightnessctl m)
PERCENT=$((BRIGHTNESS * 100 / MAX_BRIGHTNESS))

# Generate a visual bar (10 blocks for 100%)
BAR=$(seq -s "▮" $(($PERCENT / 10)) | sed 's/[0-9]//g')
EMPTY_BAR=$(seq -s "▯" $((10 - PERCENT / 10)) | sed 's/[0-9]//g')

# Send a notification with a progress bar
dunstify -r 5555 -u low "Brightness: $PERCENT%" \
    "$BAR$EMPTY_BAR" -h int:value:"$PERCENT" -i display-brightness-symbolic

