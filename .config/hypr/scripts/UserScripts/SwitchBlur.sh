#!/bin/bash

STATEA=$(hyprctl -j getoption decoration:active_opacity | jq ".float")
STATEB=$(hyprctl -j getoption decoration:active_opacity | jq ".float")
echo "$STATE"

if [ "$(echo "$STATEA != 1.0" | bc)" -eq 1 ]; then
	hyprctl keyword decoration:active_opacity 1
	hyprctl keyword decoration:inactive_opacity 1
else
	hyprctl keyword decoration:active_opacity 0.85
	hyprctl keyword decoration:inactive_opacity 0.75
fi

