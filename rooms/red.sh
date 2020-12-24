#!/bin/bash
clear
# Initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo

# Set up the script for this room. It's a simple one!
sleep 1
echo "You're in a room that has an odd red glow to it."
echo "Bookcases line the walls - dusty volumes with titles you"
echo "can't quite make out. Somehow they seem ancient."
echo
echo "There's a very comfortable looking chair in the corner."
echo "The only exit is to the west, back in the direction you came."
echo
echo "What would you like to do?"

# And the choices go here.
while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "Face, meet wall. Wall, meet Face." ;;
        s ) echo "You can't walk through walls." ;;
        e ) echo "Nothing but wall here." ;;
        w ) ./mainroom.sh
            exit ;;
		u ) echo "You sit in the comfortable chair. It's like sitting on a cloud." ;;
		h ) echo "You give yourself a hug, hoping that the books won't judge you." ;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h." ;;
    esac
done

esac
exit
