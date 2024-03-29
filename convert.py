from mido import MidiFile, tick2second
import sys

header =\
    """
controllerID = rednet.lookup("player", "controller")
if (controllerID == nil)
then
    print("Could not find controller computer")
    nonExistantFunctionCallToTerminateEarly()
end
function pressNote(octave, note)
    updatePipe(true, octave, note)
end
function releaseNote(octave, note)
    updatePipe(false, octave, note)
end
function updatePipe(state, octave, note)
    message = { note, octave, state }
    rednet.send(controllerID, message, "player")
end
"""
pitches = ['a', 'a#', 'b', 'c', 'c#', 'd', 'd#', 'e', 'f', 'f#', 'g', 'g#']


def midiNoteToCreatePitch(note):
    pitch = pitches[(note - 9) % 12]
    if pitch == 'f#' and note >= 78:
        return 'f#-2'
    return 'f#-1' if pitch == 'f#' else pitch


def midiNoteToCreateOctave(note):
    return int((note - 42) / 12) + 1


def clamp(val, minVal, maxVal):
    if val < minVal:
        return minVal
    if val > maxVal:
        return maxVal
    return val


def midiNoteToCreateNote(note):
    return (clamp(midiNoteToCreateOctave(note), 1, 3), midiNoteToCreatePitch(note))


midiFile = MidiFile(sys.argv[1])
relevantMessages = []
print(header)

for i, track in enumerate(midiFile.tracks):
    absoluteTime = 0
    for msg in track:
        absoluteTime += msg.time
        if msg.type == 'set_tempo':
            relevantMessages.append([msg.type, absoluteTime, msg.tempo])
        if msg.type == 'note_on' or msg.type == 'note_off':
            wasPress = msg.type == 'note_on' and msg.velocity > 0
            relevantMessages.append(
                ['note_on' if wasPress else 'note_off', absoluteTime, msg.note])

# list.sort() is stable
relevantMessages.sort(key=lambda k: k[0])
relevantMessages.sort(key=lambda k: k[2])
relevantMessages.sort(key=lambda k: k[1])
# now all simultaneous release and press of same note are next to each other in list
for i in range(1, len(relevantMessages)):
    message = relevantMessages[i]
    previousMessage = relevantMessages[i - 1]
    if previousMessage[0] == 'note_off' and message[0] == 'note_on' and previousMessage[2] == message[2] and previousMessage[1] == message[1]:
        # find previous pressing of this note, measure the delta time, and move back the note release
        j = i - 2
        while j >= 0:
            if relevantMessages[j][0] == 'note_on' and relevantMessages[j][2] == message[2]:
                noteLength = message[1] - relevantMessages[j][1]
                previousMessage[1] -= noteLength / 7
                break
            j -= 1

# resort by time so that delta times are correct
relevantMessages.sort(key=lambda k: k[1])

currentTempo = 500000
lastAbsoluteTime = 0
for messageType, absoluteTime, value in relevantMessages:
    deltaTicks = absoluteTime - lastAbsoluteTime
    if deltaTicks != 0:
        print(
            f'sleep({tick2second(deltaTicks, midiFile.ticks_per_beat, currentTempo)})')
    lastAbsoluteTime = absoluteTime
    if messageType == 'set_tempo':
        currentTempo = value
        continue
    octave, note = midiNoteToCreateNote(value)
    print(f'{"press" if messageType == "note_on" else "release"}Note({octave}, "{note}")')
