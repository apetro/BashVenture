#!/bin/bash
clear
# Initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
	echo "$line"
done <"$file1"
echo
sleep 1

# Here's this room's script.

echo "You run south and through an open archway into a dark, dingy place."
echo "The carpet looks like the 70s threw up on it, and the place smells faintly"
echo "of cabbage. This could well be every retirement home ever made, combined"
echo "into one place. It's tragic."
echo
echo "Oddly, though, there's a lever set into the right hand wall."

# Here we tell the player whether the lever is on or off.
leverstate=`cat ../logic/leverlogic.ben`
            if [ "$leverstate" = "on" ]; then
                echo "The last time you were in this room, you turned the lever on. It's still on."
            else
                echo "It looks like it's in the off position."
            fi 
echo
echo "The only exit is north, back the way you came."
echo
echo "What would you like to do?"

# In this set of actons lies the logic switch used later in the game.
# You have to set this switch to reach the endgame.
while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) ./mainroom.sh 
            exit ;;
        s ) echo "You attempt to walk through the wall. You fail." ;;
        e ) echo "Right, let me explain this whole 'wall' thing to you..." ;;
        w ) echo "Seriously? Though the wall? Sorry, I can't do that." ;;
		u ) leverstate=`cat ../logic/leverlogic.ben`
            if [ "$leverstate" = "on" ]; then
                echo "Having already turned it on, you try to turn it off. And fail."
            else
                sed -i='' 's/off/on/' ../logic/leverlogic.ben
                echo "You push the lever to 'on', and hear a humming start elsewhere in the building."
            fi 
        ;;


		h ) echo "You hug yourself, and hope nobody is watching." ;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h.";;
    esac
done

esac
exit