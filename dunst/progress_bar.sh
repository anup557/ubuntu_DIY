#!/bin/bash

for i in $(seq 0 5 100); do
    spaces=$(printf ' %.0s' $(seq 1 $((i / 5))))  # Creates spaces to move the circle
    dunstify -h int:value:$i -h string:synchronous:progress "$spaces⬤ Loading... $i%"
    sleep 0.2
done

