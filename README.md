# CraftOS-Create-MIDI
Converts MIDI files to a lua script that can be used to control a [Create](https://github.com/Creators-of-Create/Create) organ with [ComputerCraft](https://github.com/dan200/ComputerCraft).

## Usage
Design an organ with a computer next to each pipe, then connect all the computers to a controlling computer using wired or wireless modems.

On each non-controller computer, set two environment variables: note and octave.
```sh
set note <note>
set note <octave>
```
`note` and `octave` should match that of the pipe next to the computer. Octaves range from 1-3, and valid notes are: a, a#, b, c, c#, d, d#, e, f, f#-1, f#-2, g, g#.

Now, install the startup.lua script on all non-controller computers by running

```sh
wget https://raw.githubusercontent.com/alex-huff/CraftOS-Create-MIDI/master/startup.lua
```
and reboot.
This assumes the modem is on the front of the computer, change line 1 accordingly. Valid orientations are: front, back, left, right, top, bottom.
This also assumes the pipe is powered through the back of the computer, change line 10 accordingly.

You need to manually enable the modem on the controller computer by entering an interactive lua session
```sh
lua
```
Then run:
```
rednet.open("<side>")
```
`side` is the side of the computer that the modem is on.

Now, clone this repo (on your actual computer) and install the requirements by running
```sh
git clone https://github.com/alex-huff/CraftOS-Create-MIDI.git && cd CraftOS-Create-MIDI
```
```sh
pip install -r requirements.txt
```

You can now convert a MIDI file to a lua script that the controller computer can run.

A great source of compatible MIDI files is [Online Sequencer](https://onlinesequencer.net)
 
To convert a file, run

```sh
python convert.py song-name.mid > song-name.lua
```

Now you can upload this file to pastebin, and download it on the controlling computer by running

```sh
pastebin get <code> <filename>
```

See `help pastebin` for more.

## Troubleshooting
Make sure all of the modems are connected to the network by right clicking on them.
