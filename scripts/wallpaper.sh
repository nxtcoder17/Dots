# Script that changes wallpaper every 30 seconds

#! /bin/bash

declare -a walls
count=0

for wall in $HOME/walls/*
do
    if [[ -f "$wall" ]] || [[ -L "$wall" ]]
    then
        walls[$count]="$wall"
        count=$(( $count + 1 ))
    fi
done

serially()
{
    index=0
    if [[ $count -gt 0 ]]
    then
        while [[ 1 -gt 0 ]]
        do
            [[ $index -eq $count ]] && index=0

            feh --bg-scale "${walls[$index]}"
            echo "$index"
            index=$(( $index + 1 ))
            sleep 30
        done
    fi
}

randomly() 
{
    while [[ 1 -gt 0 ]]
    do
        total=${#walls[@]}
        feh --bg-scale "${walls[$(( RANDOM % total ))]}"
        sleep 5
    done
}

randomly
