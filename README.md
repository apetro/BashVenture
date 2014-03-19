BashVenture - Adventure for Bash
=================================

You are in a git repository. Code surrounds you. There are directories to the north, south, east, and west.<br>There is a README file here!


Introduction
------------

One of the very first computer games I played was Colossal Cave, aka 'Adventure'. Widely regarded as one of THE original classic text-based adventure games, pre-dating Zork and others, it set the scene for a new era of human-computer interaction and inspired countless software developers to build things that had a more human touch.

In this age of high-performance graphics and hyper-realistic gameplay, I think it's important to remember that a cleverly told story beats a well-rendered polygon any day.

That's why I build BashVenture. I wanted a way to bring back a bit of life into the text-based adventure game format, without the need to be an expert coder. BashVenture is a simple set of easy-to-edit scripts and logic files that you can re-word and re-engineer to create games as simple or as complex as you like.

Play the demo, fork the repo, and have a go at making an immersive, well-told adventure of your own! All I ask is that you link back here in the game introduction, so that others can see how easy it is to make a game of their own too.


Play the demo of BashVenture!
-----------------------------

You don't need to download the repo to try out the game mechanics! BashVenture is designed to run over a telnet/ssh connection. I've set up a test instance that anyone can play - so jump onto the server and have a go!

```bash:
ssh bashventure@gkly.co
```

Password:<br>
```
xyzzy
```


NB - If you're a Windows user, you can still join in the fun. Download [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) and use the credentials above. Simples!



How it all works
----------------

BashVenture - or any game you create with it - is a simple set of bash script files that display artwork and text, wait for a user's input, and acts on that input accordingly. Usually this sees a player move around a 'map' of interconnected script files, called rooms, to discover where they are, what they have to do, and where to go next.

Games can also have logic with various degrees of complexity, from a simple set of switches and levers (as in the demo) right through to complex codebreaking or secret-sharing. In BashVenture, logic is all file-based - when you flick a switch, for example, an entry in the corresponding logic file is changed. This means logic states transcend rooms and player death - you can reset logic as and when you want to, rather than it being tied tod a specific room or area, or lifetime if you're the kind of player that dies a lot.

A player makes their way through the game by issuing commands. The default commants are north, south, east, west, use and hug. Because hugging is better than shooting. The user decides what course of action to take by typing in n, s, e, w, u or h respectively. You can customise this completely by adding your own commands.

There's an introduction and a bit of an endgame - and some baddies and things that can kill you along the way. I strongly suggest that, before forking and trying to write a game of your own, you play the demo and get a feel for how the gameplay mechanics work.

The magic of a good adventure game is in the storytelling! Script well, test often, and don't over-complicate things.



What's included in this framework?
----------------------------------

There are four types of file in this project, split into their respective subdirectories:

### Art
Everyone loves a bit of ASCII art, right? There are a few sample files with artwork included in here - but if you're building a game yourself and want to inclide more artwork, this is the place to put it. The title art is displayed in every room, for consistency.

### Rooms
Every single 'room' in the game is stored in a separate room file. This is a metaphorical room - it could be a wooded area, a cave, the moon, spaaaaaace, whatever. In this demo there are rooms and corridors - the files look identical. It's all in the wording.

### Script
While the room files have the majority of each room's special wording in them, the files in this folder contain longer bits of story and the introduction text. If you want to display large chunks of text from files in your game, the scripts folder is where you want to place them.

### Logic
What makes a text-based adventure more than a simple maze game is logic. Here you can set switches, have users match words or find secrets. In the demo game, there's one piece of logic and one piece only - but you can add as much logic as you like! Keep it tidy - the logic all lives in the logic folder.



Setting it up yourself
----------------------

If you play the demo, you'll notice that one only has to log into the server and the game starts automatically. In this instance, I've put the user inside a chroot jail and set the ./adventure file as the shell - so whatever happens, the player can't break out of the game and go rummaging through system files.

### Allowing for Multiple Players

If you take a look at the ./adventure.sh script, you'll notice that multiple players are handled by the spinning up of a new game instance for each player connecting to the server. BashVenture has a dependancy on uuid-runtime here, as it generates a new, and temporary, unique identifier for each new player.

The script checks to see whether the uuidgen runtime is installed and takes the appropriate action - so you don't need to edit the file to enable or disable multi-user support. All you need to do is ensure that the uuid-runtime dependancy is installed on your server (and inside your chroot jail if appropriate). To do this, simply install the following package:

```bash:
sudo apt-get install uuid-runtime
```

Note that uuidgen ships with OS X and OS X Server, but isn't installed by default in some linux distros.

If you don't want to enable multiple players at once, simply ensure all of the game files are kept within the correct folder structure, install it somewhere (usually within a user's home folder) and run the ./adventure file.

### Trouble running the game? Getting weird errors?

Check the permissions on the 'adventure' file and the main folder for the game. If you need to, chmod +x to make all of the game files executable.



Contributing & License
--------------

Future versions of this framework are planned, with massive extensions to the logic side of things. I welcome any and all contributions, so please feel free to contribute. If you have ideas for the direction that the framework should take, please don't hesitate to [get in touch](mailto:mail@bennunney.com).

This code is relased under the MIT License. Please see the LICENSE file for more information on what this means and how to make attributions.



Acknowledgements
----------------

Huge thanks to [@drwilco](https://github.com/drwilco/), [@penman](https://github.com/penman), & [@kfouwels](https://github.com/kfouwels) for helping me see clearly when I was bash-ing my head against a brick wall.
<br>Bash-ing? See what I did there?

Comments, questions, suggestions? [Get in touch.](mailto:mail@bennunney.com).
