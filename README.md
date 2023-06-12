# CraftOS-Create-MIDI
Converts MIDI files to a lua script that can be used to control a [Create](https://github.com/Creators-of-Create/Create) organ with [ComputerCraft](https://github.com/dan200/ComputerCraft).

## Usage
Build the organ in your world using one of the provided schematics. Both [Litematica](https://github.com/maruohon/litematica) and [Create](https://github.com/Creators-of-Create/Create) compatible schematics can be found [here](https://github.com/alex-huff/CraftOS-Create-MIDI/tree/master/schematics).

After building the organ in your world, you much configure all of the computers so they can communicate with each other properly.

On the back of the organ, there are 3 rows containing 13 computers. We must first configure each of these 39 computers so that they know which note/octave they are responsible for controlling. The topmost row is octave 3, the middlemost row is octave 2, and the bottom row is octave 1. When facing the front of the computers (the side with the modem), starting from the leftmost column, the 13 columns correspond to the notes `f#-1, g, g#, a, a#, b, c, c#, d, d#, e, f, f#-2` respectively.

Go into every one of these 39 computers and run the following commands (replacing `<note>` and `<octave>` with that computer's corresponding note and octave):
```sh
set note <note>
set octave <octave>
wget https://raw.githubusercontent.com/alex-huff/CraftOS-Create-MIDI/master/scripts/noteControllers/startup.lua
```

Now, reboot each of the computers and right click the modems so that they are connected to the network.

We can now configure the controller computer. This computer directly talks to all the individual note controllers and outputs a visual of what note are currently being played. The controller computer is under the 3x4 monitor and has a modem coming of the back of it.

Run the following commands on the controller computer:
```sh
wget https://raw.githubusercontent.com/alex-huff/CraftOS-Create-MIDI/master/scripts/controller/controller.lua
wget https://raw.githubusercontent.com/alex-huff/CraftOS-Create-MIDI/master/scripts/controller/startup.lua
```

Now, reboot the controller computer and right click its modem so that it's connected to the network.

In order to manually play the organ, we must have a mouse listener computer that observes when a player right clicks on the monitor. The other computer under the 3x4 monitor is the mouse listener (modem is on its bottom side).

To configure the mouse listener, run the following commands:
```sh
wget https://raw.githubusercontent.com/alex-huff/CraftOS-Create-MIDI/master/scripts/mouseListener/mouse.lua
wget https://raw.githubusercontent.com/alex-huff/CraftOS-Create-MIDI/master/scripts/mouseListener/startup.lua
```

Now, reboot the mouse listener computer and right click its modem so that it's connected to the network. You can now manually play the organ by right clicking on the monitor.

The last computer we need to configure is the player computer. This is the computer with disk drives next to it. It is responsible for running scripts that tell the controller how to play a song.

To set up the controller computer, run the following commands:
```sh
wget https://raw.githubusercontent.com/alex-huff/CraftOS-Create-MIDI/master/scripts/player/setAll.lua
wget https://raw.githubusercontent.com/alex-huff/CraftOS-Create-MIDI/master/scripts/player/startup.lua
```

Now, reboot the player computer and right click its modem so that it's connected to the network.

## Playing Songs
You can play songs by downloading lua scripts onto the player computer, and then running them. This repository has several example [songs](https://github.com/alex-huff/CraftOS-Create-MIDI/tree/master/songs).

For example, to play Carol of the Bells, we can run the following commands:
```sh
wget https://raw.githubusercontent.com/alex-huff/CraftOS-Create-MIDI/master/songs/carol-of-the-bells.lua
carol-of-the-bells
```

## Custom Songs
To play custom songs, clone this repo (on your actual computer) and install the requirements by running:
```sh
git clone https://github.com/alex-huff/CraftOS-Create-MIDI.git && cd CraftOS-Create-MIDI
```
```sh
pip install -r requirements.txt
```

You can now convert a MIDI file to a lua script that the player computer can run.

A great source of compatible MIDI files is [Online Sequencer](https://onlinesequencer.net).
 
To convert a file, run

```sh
python convert.py song-name.mid > song-name.lua
```

Now you can upload this file to pastebin, and download it on the controlling computer by running (replacing `<code>` and `<filename>` with the pastebin code and the song name):

```sh
pastebin get <code> <filename>
```

See `help pastebin` for more.

## Troubleshooting
Make sure all of the modems are connected to the network by right clicking on them.
