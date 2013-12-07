#!/bin/bash
clear

# This is the endgame. This file does nothing but give you the final bit of storyline.
# Use (over-use) of 'sleep' is for dramatic effect - play around with it, see how it reads.

# Let's reset the lever, now that we're done with it.
sed -i='' 's/on/off/' ../logic/leverlogic.ben

# Initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo
sleep 1
echo "You swallow the pill, and suddenly rainbows are all around you."
echo
sleep 4
echo "You look down to find that you're riding a unicorn. On a rainbow."
sleep 3
echo
echo "A motherfucking UNICORN."
sleep 4
echo
echo "This is ridiculous. Surely this is some kind of dream? You pinch"
echo "yourself to try and wake up. Wait, you're feeling dizzy..."
echo
sleep 5
echo "You blink, and are surprised to find yourself laying in bed."
echo "You check your phone - it's 5am, and definitely Thursday. Huh."
echo "I guess it was all a dream."
echo
sleep 7
echo "You go to get out of bed and suddenly spot a tiny marbel figurine on"
echo "your bedside table. It's a beautifully carved kitten."
echo
sleep 5
echo "How the hell did that get there?"
sleep 5
echo
echo "Unable to work out what is dream and what is reality, you shrug your"
echo "shoulders and pick up the figurine. It hasn't transported you anywhere"
echo "this time... but how did it get here? What does it mean?"
echo
sleep 7
echo "Your phone buzzes. It's a call from a withheld number. You don't usually"
echo "answer those, but you get the feeling that this call might be important."
sleep 5
echo
echo "You answer the call, and an electronic voice says five words to you"
echo "before the line goes dead."
sleep 3
echo
echo "Just five words."
sleep 7
echo
echo "THE KITTEN IS WATCHING YOU."
echo
sleep 9
echo
file1="../art/bigfinish.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo
echo
read -p "Press [ENTER] to exit..."
echo
clear
file1="../art/titleart.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo
echo "Thank you for playing the demo of BashVenture. Pretty random storyline, I know,"
echo "but the aim was to show off the functionality, not win a pulitzer prize."
echo 
echo "Whoever you are, wherever you're from - live long and prosper. Keep smiling!"
echo
echo "                                                                - @BenNunney"
echo

# That's all, folks!

exit