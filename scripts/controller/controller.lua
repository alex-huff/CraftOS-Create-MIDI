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
peripheral.wrap("top").setTextScale(.5)
term.setCursorPos(0, 0)
term.setCursorBlink(false)
term.setBackgroundColor(colors.black)
term.clear()
noteToTilePos =
{
    ["f#-1"] = 0,
    ["g"]    = 1,
    ["g#"]   = 2,
    ["a"]    = 3,
    ["a#"]   = 4,
    ["b"]    = 5,
    ["c"]    = 6,
    ["c#"]   = 7,
    ["d"]    = 8,
    ["d#"]   = 9,
    ["e"]    = 10,
    ["f"]    = 11,
    ["f#-2"] = 12
}
noteLayout =
{
    -1,
    0,
    -1,
    1,
    -1,
    2,
    3,
    -1,
    4,
    -1,
    5,
    6,
    -1
}
notes = {}
xMargin = 5
yOuterMargin = 5
yInnerMargin = 3
noteBaseWidth = 11
noteStemWidth = 6
noteBaseHeight = 6
noteStemHeight = 11
noteHeight = noteBaseHeight + noteStemHeight
topOverhang = 1
function updateNote(note, octave, pressed)
    tilePos = noteToTilePos[note]
    noteBasePos = noteLayout[tilePos + 1]
    if (pressed)
    then
        color = colors.blue
    elseif (noteBasePos == -1)
    then
        color = colors.gray
    else
        color = colors.white
    end
    startX = xMargin + 1 + tilePos * (noteStemWidth + 1)
    startY = yOuterMargin + 1 + (3 - octave) * (noteHeight + yInnerMargin)
    endX = startX + (noteStemWidth - 1)
    endY = startY + (noteStemHeight - 1)
    if (noteBasePos == -1)
    then
        endY = endY - 1
    end
    paintutils.drawFilledBox(startX, startY, endX, endY, color)
    if (tilePos == 5)
    then
        paintutils.drawFilledBox(endX, endY, endX, endY, colors.gray)
    end
    if (noteBasePos ~= -1)
    then
        startX = xMargin + 1 + (noteStemWidth - topOverhang) + noteBasePos * (noteBaseWidth + 1)
        startY = endY + 1 
        endX = startX + (noteBaseWidth - 1)
        endY = startY + (noteBaseHeight - 1)
        paintutils.drawFilledBox(startX, startY, endX, endY, color)
        if (tilePos == 6)
        then
            paintutils.drawFilledBox(startX, startY, startX, startY, colors.gray)
        end
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
        updateOrgan(note, octave, false)
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
