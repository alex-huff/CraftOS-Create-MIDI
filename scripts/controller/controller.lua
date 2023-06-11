notes = { "f#-1", "g", "g#", "a", "a#", "b", "c", "c#", "d", "d#", "e", "f", "f#-2" }
noteToID = { {}, {}, {} }
for i=1,3 do
    proto = "octave-" .. i
    for n, note in ipairs(notes) do
        controllerID = rednet.lookup(proto, note)
        if (controllerID == nil)
        then
            print("No valid controller found for octave " .. i .. " and note " .. note)
            nonExistantFunctionCallToTerminateEarly()
        end
        noteToID[i][note] = controllerID
    end
end        
term.setCursorPos(0, 0)
term.setCursorBlink(false)
term.setBackgroundColor(colors.black)
term.clear()
width = 29
height = 26
noteToTilePos =
{
    ["f#-1"] = 12,
    ["g"]    = 11,
    ["g#"]   = 10,
    ["a"]    = 9,
    ["a#"]   = 8,
    ["b"]    = 7,
    ["c"]    = 6,
    ["c#"]   = 5,
    ["d"]    = 4,
    ["d#"]   = 3,
    ["e"]    = 2,
    ["f"]    = 1,
    ["f#-2"] = 0
}
tilePosToNote =
{
    "f#-2",
    "f",
    "e",
    "d#",
    "d",
    "c#",
    "c",
    "b",
    "a#",
    "a",
    "g#",
    "g",
    "f#-1"   
}
notes = {}
function updateNote(note, octave, pressed)
    if (pressed)
    then
        color = colors.blue
        textColor = colors.toBlit(colors.white)     
    else
        color = colors.white
        textColor = colors.toBlit(colors.gray)
    end
    startX = 3 + noteToTilePos[note] * 2
    startY = 3 + (3 - octave) * 8
    paintutils.drawBox(startX, startY, startX, startY + 5, color)
    term.setCursorPos(startX, startY + 2)
    backgroundColor = colors.toBlit(color)
    term.blit(string.sub(note, 1, 1), textColor, backgroundColor)
    if (#note > 1)
    then
        term.setCursorPos(startX, startY + 3)
        term.blit(string.sub(note, 2, 2), textColor, backgroundColor)
    end    
end
function setNoteState(note, octave, state)
    notes[(octave - 1) * 13 + noteToTilePos[note]] = state
    return state
end
function getNoteState(note, octave)
    return notes[(octave - 1) * 13 + noteToTilePos[note]]
end
function toggleNoteState(note, octave)
    return setNoteState(note, octave, not getNoteState(note, octave))
end
function updateOrgan(note, octave, state)
    rednet.send(noteToID[octave][note], state, "octave-" .. octave)
end
for octave=1,3
do
    for note in pairs(noteToTilePos)
    do
        updateNote(note, octave, false)
        setNoteState(note, octave, false)
    end
end
playerProto = "player"
mouseProto = "mouse"
rednet.open("back")
rednet.host(playerProto, "controller")
rednet.host(mouseProto, "controller")
while true
do
    senderID, message, incomingProto = rednet.receive()
    note = message[1]
    octave = message[2]
    term.setCursorPos(1, 10)
    term.setBackgroundColor(colors.black)
    if (incomingProto == playerProto)
    then
        state = message[3]
        updateNote(note, octave, state)   
        setNoteState(note, octave, state)
        updateOrgan(note, octave, state)
    elseif (incomingProto == mouseProto)
    then
        newState = toggleNoteState(note, octave)
        updateNote(note, octave, newState)
        updateOrgan(note, octave, newState)
    end
end
