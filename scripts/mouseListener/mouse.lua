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
proto = "mouse"
rednet.open("bottom")
controllerID = rednet.lookup(proto, "controller")
while true
do
    event, side, x, y = os.pullEvent("monitor_touch")
    if (x % 2 == 1 and not (x <= 2 or x >= 28))
    then
        tileNum = (x - 1) / 2
        if (y >= 3 and y <= 8)
        then
            octave = 3
        elseif (y >= 11 and y <= 16)
        then
            octave = 2
        elseif (y >= 19 and y <= 25)
        then
            octave = 1
        else
            octave = 0
        end
        if (octave ~= 0)
        then
            note = tilePosToNote[tileNum]
            message = { note, octave } 
            rednet.send(controllerID, message, proto)
        end     
    end
end
