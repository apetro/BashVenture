#!/bin/bash
clear
# Initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo

# This room gives the player a typical poisoned apple style scenaro.
# Just because something looks shiny and fun, doesn't make it any
# less deadly.
sleep 1
echo "This room is small, but has a pretty sweet looking computer"
echo "sat on a desk in the middle of it. Is that... YES!"
echo "Steam is installed, and it looks like the entire library of"
echo "games is installed! This is one epic gaming rig."
echo
echo "The only way out is east, back the way you came... but..."
echo "shiny. Maybe it'd be rude NOT to sit down and game a little."
echo
echo "What would you like to do?"

while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "WALL EQUALS TRUE." ;;
        s ) echo "Nope. Wall." ;;
        w ) ./kroo2.sh
            exit ;;
        e ) echo "You were going to go east, then you took a wall to the face." ;;
		u ) echo
            echo "You sit and game. And game. And game. You forget about time,"
            echo "and food, and people. You realise that you cannot get up. You can't"
            echo "move. You are stuck to the chair."
            echo
            sleep 4
            echo "Days go by. Weeks. You've played game after game, but..."
            echo
            echo "Your body is giving up. With your final breath you come to realise that"
            echo "you cannot live on gamerpoints alone. You close your eyes for the last time."
            sleep 4
            echo
            echo
            echo "YOU ARE DEAD."
            echo
            read -p "Press [ENTER] to try again..."
            ./mainroom.sh
            exit

        ;;
		h ) echo "You hug the computer. Nerd." ;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h.";;
    esac
done

esac
exit