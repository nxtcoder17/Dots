#!/bin/bash

SCREENSHOT=/tmp/screenshot.png
LOCK_ICON=~/.config/i3/scripts/lock.png

# -> Taking a screenshot of current workspace
scrot $SCREENSHOT

# -> Bluring the taken screenshot
convert $SCREENSHOT -spread 5 -swirl 1000 $SCREENSHOT
# convert /tmp/screen.png  -spread 5 -swirl 999 /tmp/screen.png

# Add the lock to the blurred image:
# [[ -f ~/.config/i3/scripts/lock.png ]] && convert /tmp/screen.png  ~/.config/i3/scripts/lock.png -gravity center -composite -matte /tmp/screen.png
# [[ -f $LOCK_ICON ]] && convert $SCREENSHOT $LOCK_ICON -gravity center -composite -matte $SCREENSHOT


# # Pause music (mocp and mpd):
# mocp -P
# mpc pause

# Lock it up!
# i3lock -e -f -c 000000 -i /tmp/screen.png
i3lock -i $SCREENSHOT
rm $SCREENSHOT

# If still locked after 20 seconds, turn off screen.
# sleep 20 && pgrep i3lock && xset dpms force off
