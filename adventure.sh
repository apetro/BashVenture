#!/bin/bash

# Launch script for BashVenture. This sets up a new user instance (so many users on the same server can play).
# Please enjoy playing the game - and playing with the code. Please do give me a mention, and be
# sure to link back to the original GitHub page so people can fork and build something of their own.
#
# Remember, kids - sharing is caring! Keep it open. Spread the love.
#                                                      - @BenNunney
#

# Here we check to see if uuidgen is installed - if not it will default to single-user mode. To run this on a server
# and support multipe-users, check you have everthing set up correctly. Follow the instructions in the ReadMe file on GitHub.

if hash uuidgen 2>/dev/null; then
homefolder=$(pwd)
newplayer=$(uuidgen)
mkdir $newplayer
cp -r rooms $newplayer/rooms
cp -r art $newplayer/art
cp -r script $newplayer/script
cp -r logic $newplayer/logic
fi

echo "Loading..."
echo
sleep 4
if hash uuidgen 2>/dev/null; then
cd $newplayer/rooms
else
cd rooms
fi
./start.sh
if hash uuidgen 2>/dev/null; then
cd "$homefolder"
rm -r $newplayer
fi
echo
exit