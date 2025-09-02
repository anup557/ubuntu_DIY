#!/bin/bash

# Get current brightness (assumes using brightnessctl)
BRIGHTNESS=$(brightnessctl g)
MAX_BRIGHTNESS=$(brightnessctl m)
PERCENT=$((BRIGHTNESS * 100 / MAX_BRIGHTNESS))

# Send notification with progress bar
dunstify -r 5555 -u low "Brightness: $PERCENT%" -h int:value:"$PERCENT" -i display-brightness-symbolic

