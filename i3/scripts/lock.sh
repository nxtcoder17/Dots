#!/bin/bash

SCREENSHOT=/tmp/screenshot.png
LOCK_ICON=~/.config/i3/scripts/lock.png

# -> Taking a screenshot of current workspace
scrot $SCREENSHOT

# -> Bluring the taken screenshot
convert $SCREENSHOT -spread 5 -swirl 1000 $SCREENSHOT
i3lock -i $SCREENSHOT
rm $SCREENSHOT
