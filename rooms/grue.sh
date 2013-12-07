#!/bin/bash
clear
# Initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo

# I like this room. There is no way to get out of it alive.
sleep 1
echo "This is a long room, and ask you walk down it, you see a person."
echo "Finally! Another person! You start to run toward the shadowy figure"
echo "but then stop dead. This isn't... no... it can't be. It's... it's..."
echo "IT'S A GRUE."
sleep 3
echo
echo "No. NO! You cry, as he sits you down and, rather than beating you to"
echo "death, starts to read you some of his Grue Poetry. It's awful. Your"
echo "brain starts to melt and, as a result, your nose starts bleeding."
echo
sleep 5
echo "You start to feel dizzy. You can't think straight. As you fall to the"
            echo "floor, your own blood and brains all around you, you begin"
            echo "to wonder why the grue didn't just kill you quickly like"
            echo "most do. Bloody liberal arts students."
            echo
            echo "You slip into unconciousness."
            sleep 4
            echo "YOU ARE DEAD."
            echo
            read -p "Press [ENTER] to try again..."
            ./mainroom.sh

exit