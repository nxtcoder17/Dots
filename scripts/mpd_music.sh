#! /bin/bash

SONG_NAME=$(ncmpcpp -q --current-song=%t)
ARTIST=$(ncmpcpp -q --current-song=%a)
# echo $SONG_NAME
# echo $ARTIST

printf "$ARTIST - $SONG_NAME"
