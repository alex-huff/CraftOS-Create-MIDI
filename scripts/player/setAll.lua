notes = { "f#-1", "g", "g#", "a", "a#", "b", "c", "c#", "d", "d#", "e", "f", "f#-2" }
controllerID = rednet.lookup("player", "controller")
state = (arg[1] == "true" and true or false)
for i=1,3 do
    for j, note in ipairs(notes) do
        rednet.send(controllerID, { note, i, state }, "player")
    end
end
