#! /bin/bash

cat << EOF
                =========================[ i3 installer ]==============================
                        [ i3 Gaps - Window Manager ]         : i3-gaps
                        [ i3-blocks - Status Bar ]           : i3-blocks
                        [ Rofi - Application Launcher ]      : rofi
                        [ i3lock ]                           : i3lock
                        [ lxappearance ]                     : lxappearance
EOF

pacman -S i3-gaps\
    i3blocks\
    rofi\
    i3lock\
    lxappearance
