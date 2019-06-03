#! /bin/bash

COMMAND=$1

if [[ $COMMAND -eq 1 ]]
then
        curl -d "" 'http://localhost:11111/pause'
fi
