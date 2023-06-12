#!/bin/bash 

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "Usage: sh debugger.sh [number of players]"
    exit 1
fi

if [ "$1" -le 1 ]; then
    echo "Illegal number of players, minimum of 2"
    exit 1
fi

gnome-terminal --tab --title "Playing area" -- /bin/bash -c 'cd playing_area; python3 playing_area_sock.py 8000;read;' 

gnome-terminal --tab --title "Caller" -- /bin/bash -c 'cd player; python3 player_sock.py 8000 -c;read' 

i=1
nPlayers=$1
while [ $i -le $nPlayers ]
do
    gnome-terminal --tab --title "Player $i" -- /bin/bash -c 'cd player; python3 player_sock.py 8000;read' 
    i=$(( $i + 1 ))
done

