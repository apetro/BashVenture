#!/bin/bash
clear
# Initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
	echo "$line"
done <"$file1"
echo

#Setting up the room...
sleep 1
echo "You run north, pushing through the half-open doorway ahead."
echo "The room you find yourself in is bright. A sign on the wall tells"
echo "you that you are in the White Room. I guess that explains why it's"
echo "so bright and all that..."
echo

# Here we're going to check to see if the lever - the only logic we are using in this game - is on or off.
leverstate=`cat ../logic/leverlogic.ben`
            if [ "$leverstate" = "on" ]; then
                echo "There's a delecately carved statue at the end of the room."
                echo "It's a kitten, hewn from beautiful white marble."
                echo "It is also emitting a strange humming noise."
            else
                echo "There's a delecately carved statue at the end of the room."
                echo "It's a kitten, hewn from beautiful white marble."
            fi 

echo
echo "The only exit is south, back the way you came."
echo
echo "What would you like to do?"

# Now lets capture this room's actions. Note that here, the actions change depending on whether or not
# the lever is on or off. If it's on, you go elsewhere. If it's off, you don't. 
while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "Somehow you think walls don't apply to you. They do." ;;
        s ) ./mainroom.sh
            exit ;;
        e ) echo "No can do. There's a wall there." ;;
        w ) echo "Seriously? Though the wall? Sorry, I can't do that." ;;
		u ) echo "You try to use the statue. It feels weird, so you stop." ;;
		h ) leverstate=`cat ../logic/leverlogic.ben`
            if [ "$leverstate" = "on" ]; then
                ./kroo.sh
                exit
            else
                echo "You hug the statue. It seems to vibrate a little. Weird."
            fi 
            ;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h.";;
    esac
done

esac
exit