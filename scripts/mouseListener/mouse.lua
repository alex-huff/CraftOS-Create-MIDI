tilePosToNote =
{
    "f#-1",
    "g",
    "g#",
    "a",
    "a#",
    "b",
    "c",
    "c#",
    "d",
    "d#",
    "e",
    "f",
    "f#-2"
}
baseTilePosToNote =
{
    "g",
    "a",
    "b",
    "c",
    "d",
    "e",
    "f"
}
xMargin = 5
yOuterMargin = 5
yInnerMargin = 3
noteBaseWidth = 11
noteStemWidth = 6
noteBaseHeight = 6
noteStemHeight = 11
noteHeight = noteBaseHeight + noteStemHeight
topOverhang = 1
width, height = term.getSize()
function getNoteFromTouch(x, y)
    if (y <= yOuterMargin or y >= (height - (yOuterMargin - 1)))
    then
        return nil, nil
    end
    if (x <= xMargin or x >= (width - (xMargin - 1)))
    then
        return nil, nil
    end
    yRemainder = (y - (yOuterMargin + 1)) % (noteHeight + yInnerMargin)
    if (yRemainder >= noteHeight)
    then
        return nil, nil
    end
    octave = 3 - math.floor((y - (yOuterMargin + 1)) / (noteHeight + yInnerMargin))
    if (yRemainder >= noteStemHeight)
    then
        if (x <= (xMargin + noteStemWidth - topOverhang) or x >= (width - (xMargin + topOverhang)))
        then
            return nil, nil
        end
        xRemainder = (x - (xMargin + noteStemWidth - (topOverhang - 1))) % (noteBaseWidth + 1)
        if (xRemainder == noteBaseWidth)
        then
            return nil, nil
        end
        note = baseTilePosToNote[1 + math.floor((x - (xMargin + noteStemWidth - (topOverhang - 1))) / (noteBaseWidth + 1))]
    else
        xRemainder = (x - (xMargin + 1)) % (noteStemWidth + 1)
        if (xRemainder == noteStemWidth)
        then
            return nil, nil
        end
        note = tilePosToNote[1 + math.floor((x - (xMargin + 1)) / (noteStemWidth + 1))]
        if (#note > 1 and yRemainder == (noteStemHeight - 1))
        then
            return nil, nil
        end
    end
    return note, octave
end
proto = "mouse"
rednet.open("bottom")
controllerID = rednet.lookup(proto, "controller")
while true
do
    event, side, x, y = os.pullEvent("monitor_touch")
    note, octave = getNoteFromTouch(x, y)
    if (note ~= nil and octave ~= nil)
    then
        message = { note, octave }
        rednet.send(controllerID, message, proto)
    end
end
