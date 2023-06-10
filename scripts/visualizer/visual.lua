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
for octave=1,3
do
    for note in pairs(noteToTilePos)
    do
        updateNote(note, octave, false)
    end
end
proto = "visual"
rednet.open("back")
rednet.host(proto, "visualizer")
while true
do
    senderID, message, incomingProto = rednet.receive(proto)
    if (incomingProto ~= proto) then break end
    updateNote(message[1], message[2], message[3])
end
