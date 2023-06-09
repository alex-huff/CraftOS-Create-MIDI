
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

pressNote(1, "g")
pressNote(2, "g")
sleep(0.1363635)
releaseNote(1, "g")
releaseNote(2, "g")
sleep(0.1363635)
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "a#")
pressNote(2, "d")
sleep(0.1363635)
releaseNote(1, "a#")
releaseNote(2, "d")
sleep(0.1363635)
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "a")
pressNote(2, "c#")
sleep(0.1363635)
releaseNote(1, "a")
releaseNote(2, "c#")
sleep(0.1363635)
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "d")
pressNote(2, "c")
sleep(0.1363635)
releaseNote(1, "d")
releaseNote(2, "c")
sleep(0.1363635)
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "g")
pressNote(2, "g")
sleep(0.1363635)
releaseNote(1, "g")
releaseNote(2, "g")
sleep(0.1363635)
pressNote(3, "g")
sleep(0.1363635)
releaseNote(3, "g")
sleep(0.1363635)
pressNote(1, "a#")
pressNote(3, "f#-1")
sleep(0.1363635)
releaseNote(1, "a#")
releaseNote(3, "f#-1")
sleep(0.1363635)
pressNote(3, "g")
sleep(0.1363635)
releaseNote(3, "g")
sleep(0.1363635)
pressNote(1, "a")
pressNote(2, "d")
sleep(0.1363635)
releaseNote(1, "a")
releaseNote(2, "d")
sleep(0.4090905)
pressNote(1, "d")
sleep(0.1363635)
releaseNote(1, "d")
sleep(0.4090905)
pressNote(1, "g")
pressNote(2, "g")
sleep(0.1363635)
releaseNote(1, "g")
releaseNote(2, "g")
sleep(0.1363635)
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "a#")
pressNote(2, "d")
sleep(0.1363635)
releaseNote(1, "a#")
releaseNote(2, "d")
sleep(0.1363635)
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "a")
pressNote(2, "c#")
sleep(0.1363635)
releaseNote(1, "a")
releaseNote(2, "c#")
sleep(0.1363635)
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "f#-1")
pressNote(2, "c")
sleep(0.1363635)
releaseNote(1, "f#-1")
releaseNote(2, "c")
sleep(0.1363635)
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "g")
pressNote(2, "g")
sleep(0.1363635)
releaseNote(1, "g")
releaseNote(2, "g")
sleep(0.1363635)
pressNote(1, "d")
sleep(0.1363635)
releaseNote(1, "d")
sleep(0.1363635)
pressNote(1, "e")
sleep(0.1363635)
releaseNote(1, "e")
sleep(0.1363635)
pressNote(1, "f#-1")
sleep(0.1363635)
releaseNote(1, "f#-1")
sleep(0.1363635)
pressNote(1, "g")
sleep(0.1363635)
releaseNote(1, "g")
sleep(0.1363635)
pressNote(1, "a")
sleep(0.1363635)
releaseNote(1, "a")
sleep(0.1363635)
pressNote(1, "a#")
sleep(0.1363635)
releaseNote(1, "a#")
sleep(0.1363635)
pressNote(1, "b")
sleep(0.1363635)
releaseNote(1, "b")
sleep(0.1363635)
pressNote(1, "c")
pressNote(2, "c")
sleep(0.1363635)
releaseNote(1, "c")
releaseNote(2, "c")
sleep(0.1363635)
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "d#")
pressNote(3, "g")
sleep(0.1363635)
releaseNote(1, "d#")
releaseNote(3, "g")
sleep(0.1363635)
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "d")
pressNote(3, "f#-1")
sleep(0.1363635)
releaseNote(1, "d")
releaseNote(3, "f#-1")
sleep(0.1363635)
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "g")
pressNote(2, "f")
sleep(0.1363635)
releaseNote(1, "g")
releaseNote(2, "f")
sleep(0.1363635)
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "c")
pressNote(2, "c")
sleep(0.1363635)
releaseNote(1, "c")
releaseNote(2, "c")
sleep(0.1363635)
pressNote(3, "c")
sleep(0.1363635)
releaseNote(3, "c")
sleep(0.1363635)
pressNote(1, "d#")
pressNote(3, "b")
sleep(0.1363635)
releaseNote(1, "d#")
releaseNote(3, "b")
sleep(0.1363635)
pressNote(3, "c")
sleep(0.1363635)
releaseNote(3, "c")
sleep(0.1363635)
pressNote(1, "d")
pressNote(3, "g")
sleep(0.1363635)
releaseNote(1, "d")
releaseNote(3, "g")
sleep(0.4090905)
pressNote(2, "g")
sleep(0.1363635)
releaseNote(2, "g")
sleep(0.4090905)
pressNote(1, "c")
pressNote(2, "c")
sleep(0.1363635)
releaseNote(1, "c")
releaseNote(2, "c")
sleep(0.1363635)
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "d#")
pressNote(3, "g")
sleep(0.1363635)
releaseNote(1, "d#")
releaseNote(3, "g")
sleep(0.1363635)
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "d")
pressNote(3, "f#-1")
sleep(0.1363635)
releaseNote(1, "d")
releaseNote(3, "f#-1")
sleep(0.1363635)
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "b")
pressNote(2, "f")
sleep(0.1363635)
releaseNote(1, "b")
releaseNote(2, "f")
sleep(0.1363635)
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "c")
pressNote(2, "c")
sleep(0.1363635)
releaseNote(1, "c")
releaseNote(2, "c")
sleep(0.1363635)
pressNote(1, "d")
sleep(0.1363635)
releaseNote(1, "d")
sleep(0.1363635)
pressNote(1, "d#")
sleep(0.1363635)
releaseNote(1, "d#")
sleep(0.1363635)
pressNote(1, "f")
sleep(0.1363635)
releaseNote(1, "f")
sleep(0.1363635)
pressNote(2, "g")
sleep(0.1363635)
releaseNote(2, "g")
sleep(0.1363635)
pressNote(1, "d#")
sleep(0.1363635)
releaseNote(1, "d#")
sleep(0.1363635)
pressNote(1, "c")
sleep(0.1363635)
releaseNote(1, "c")
sleep(0.1363635)
pressNote(1, "a#")
sleep(0.1363635)
releaseNote(1, "a#")
sleep(0.1363635)
pressNote(2, "f#-1")
pressNote(3, "f#-1")
sleep(0.1363635)
releaseNote(2, "f#-1")
releaseNote(3, "f#-1")
sleep(0.1363635)
pressNote(1, "d#")
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(1, "d#")
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "f")
pressNote(2, "f")
sleep(0.1363635)
releaseNote(1, "f")
releaseNote(2, "f")
sleep(0.1363635)
pressNote(1, "d#")
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(1, "d#")
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(2, "f#-1")
pressNote(3, "f#-1")
sleep(0.1363635)
releaseNote(2, "f#-1")
releaseNote(3, "f#-1")
sleep(0.1363635)
pressNote(1, "d#")
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(1, "d#")
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "f")
pressNote(2, "f")
sleep(0.1363635)
releaseNote(1, "f")
releaseNote(2, "f")
sleep(0.1363635)
pressNote(1, "d#")
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(1, "d#")
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "f")
pressNote(2, "f")
sleep(0.1363635)
releaseNote(1, "f")
releaseNote(2, "f")
sleep(0.1363635)
pressNote(2, "f#-1")
pressNote(3, "f#-1")
sleep(0.1363635)
releaseNote(2, "f#-1")
releaseNote(3, "f#-1")
sleep(0.1363635)
pressNote(1, "d")
pressNote(2, "d")
sleep(0.1363635)
releaseNote(1, "d")
releaseNote(2, "d")
sleep(0.1363635)
pressNote(1, "d#")
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(1, "d#")
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(2, "c")
sleep(0.1363635)
releaseNote(2, "c")
sleep(0.1363635)
pressNote(1, "d#")
sleep(0.1363635)
releaseNote(1, "d#")
sleep(0.1363635)
pressNote(1, "c")
sleep(0.1363635)
releaseNote(1, "c")
sleep(0.1363635)
pressNote(1, "a#")
sleep(0.1363635)
releaseNote(1, "a#")
sleep(0.1363635)
pressNote(1, "a")
pressNote(2, "a")
sleep(0.1363635)
releaseNote(1, "a")
releaseNote(2, "a")
sleep(0.1363635)
pressNote(1, "b")
pressNote(2, "b")
sleep(0.1363635)
releaseNote(1, "b")
releaseNote(2, "b")
sleep(0.1363635)
pressNote(1, "c")
pressNote(2, "c")
sleep(0.1363635)
releaseNote(1, "c")
releaseNote(2, "c")
sleep(0.1363635)
pressNote(1, "a")
pressNote(2, "a")
sleep(0.1363635)
releaseNote(1, "a")
releaseNote(2, "a")
sleep(0.1363635)
pressNote(1, "e")
pressNote(2, "e")
sleep(0.1363635)
releaseNote(1, "e")
releaseNote(2, "e")
sleep(0.1363635)
pressNote(1, "c")
pressNote(2, "c")
sleep(0.1363635)
releaseNote(1, "c")
releaseNote(2, "c")
sleep(0.1363635)
pressNote(2, "g")
pressNote(3, "g")
sleep(0.1363635)
releaseNote(2, "g")
releaseNote(3, "g")
sleep(0.1363635)
pressNote(1, "d#")
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(1, "d#")
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(2, "a#")
pressNote(3, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
releaseNote(3, "a#")
sleep(0.1363635)
pressNote(2, "a")
pressNote(3, "a")
sleep(0.1363635)
releaseNote(2, "a")
releaseNote(3, "a")
sleep(0.1363635)
pressNote(2, "g")
pressNote(3, "g")
sleep(0.1363635)
releaseNote(2, "g")
releaseNote(3, "g")
sleep(0.1363635)
pressNote(2, "a")
pressNote(3, "a")
sleep(0.1363635)
releaseNote(2, "a")
releaseNote(3, "a")
sleep(0.1363635)
pressNote(2, "f#-1")
pressNote(3, "f#-1")
sleep(0.1363635)
releaseNote(2, "f#-1")
releaseNote(3, "f#-1")
sleep(0.1363635)
pressNote(1, "d")
sleep(0.1363635)
releaseNote(1, "d")
sleep(0.1363635)
pressNote(1, "e")
sleep(0.1363635)
releaseNote(1, "e")
sleep(0.1363635)
pressNote(1, "f#-1")
sleep(0.1363635)
releaseNote(1, "f#-1")
sleep(0.1363635)
pressNote(1, "g")
pressNote(2, "g")
sleep(0.1363635)
releaseNote(1, "g")
releaseNote(2, "g")
sleep(0.1363635)
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "a#")
pressNote(2, "d")
sleep(0.1363635)
releaseNote(1, "a#")
releaseNote(2, "d")
sleep(0.1363635)
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "a")
pressNote(2, "c#")
sleep(0.1363635)
releaseNote(1, "a")
releaseNote(2, "c#")
sleep(0.1363635)
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "d")
pressNote(2, "c")
sleep(0.1363635)
releaseNote(1, "d")
releaseNote(2, "c")
sleep(0.1363635)
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "g")
pressNote(2, "g")
sleep(0.1363635)
releaseNote(1, "g")
releaseNote(2, "g")
sleep(0.1363635)
pressNote(3, "g")
sleep(0.1363635)
releaseNote(3, "g")
sleep(0.1363635)
pressNote(1, "a#")
pressNote(3, "f#-1")
sleep(0.1363635)
releaseNote(1, "a#")
releaseNote(3, "f#-1")
sleep(0.1363635)
pressNote(3, "g")
sleep(0.1363635)
releaseNote(3, "g")
sleep(0.1363635)
pressNote(1, "a")
pressNote(2, "d")
sleep(0.1363635)
releaseNote(1, "a")
releaseNote(2, "d")
sleep(0.4090905)
pressNote(1, "d")
sleep(0.1363635)
releaseNote(1, "d")
sleep(0.1363635)
pressNote(1, "d")
pressNote(2, "d")
sleep(0.1363635)
releaseNote(1, "d")
releaseNote(2, "d")
sleep(0.1363635)
pressNote(1, "d#")
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(1, "d#")
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "d")
pressNote(2, "d")
sleep(0.1363635)
releaseNote(1, "d")
releaseNote(2, "d")
sleep(0.1363635)
pressNote(1, "c")
pressNote(2, "c")
sleep(0.1363635)
releaseNote(1, "c")
releaseNote(2, "c")
sleep(0.1363635)
pressNote(1, "d#")
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(1, "d#")
releaseNote(2, "d#")
sleep(0.1363635)
pressNote(1, "d")
pressNote(2, "d")
sleep(0.1363635)
releaseNote(1, "d")
releaseNote(2, "d")
sleep(0.1363635)
pressNote(1, "g")
pressNote(2, "g")
sleep(0.1363635)
releaseNote(1, "g")
releaseNote(2, "g")
sleep(0.1363635)
pressNote(1, "a#")
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(1, "a#")
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "d")
pressNote(2, "d")
sleep(0.1363635)
releaseNote(1, "d")
releaseNote(2, "d")
sleep(0.1363635)
pressNote(1, "c#")
pressNote(2, "c#")
sleep(0.1363635)
releaseNote(1, "c#")
releaseNote(2, "c#")
sleep(0.1363635)
pressNote(1, "a#")
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(1, "a#")
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "c")
pressNote(2, "c")
sleep(0.1363635)
releaseNote(1, "c")
releaseNote(2, "c")
sleep(0.1363635)
pressNote(1, "a#")
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(1, "a#")
releaseNote(2, "a#")
sleep(0.1363635)
pressNote(1, "g")
pressNote(2, "g")
sleep(0.1363635)
releaseNote(1, "g")
releaseNote(2, "g")
sleep(0.1363635)
pressNote(1, "d")
sleep(0.1363635)
releaseNote(1, "d")
sleep(0.1363635)
pressNote(1, "e")
sleep(0.1363635)
releaseNote(1, "e")
sleep(0.1363635)
pressNote(1, "f#-1")
sleep(0.1363635)
releaseNote(1, "f#-1")
sleep(0.1363635)
pressNote(1, "a#")
pressNote(2, "a#")
sleep(0.1363635)
releaseNote(1, "a#")
releaseNote(2, "a#")
sleep(0.4090905)
pressNote(1, "a")
pressNote(2, "a")
sleep(0.1363635)
releaseNote(1, "a")
releaseNote(2, "a")
sleep(0.4090905)
pressNote(1, "g")
pressNote(2, "g")
sleep(0.1363635)
releaseNote(1, "g")
releaseNote(2, "g")
sleep(0.4090905)
pressNote(1, "f#-1")
pressNote(2, "f#-1")
sleep(0.1363635)
releaseNote(1, "f#-1")
releaseNote(2, "f#-1")
sleep(0.4090905)
pressNote(2, "g")
pressNote(3, "g")
sleep(0.1363635)
releaseNote(2, "g")
releaseNote(3, "g")
sleep(0.4090905)
pressNote(1, "f")
pressNote(2, "f")
sleep(0.1363635)
releaseNote(1, "f")
releaseNote(2, "f")
sleep(0.4090905)
pressNote(1, "d#")
pressNote(2, "d#")
sleep(0.1363635)
releaseNote(1, "d#")
releaseNote(2, "d#")
sleep(0.4090905)
pressNote(1, "d")
pressNote(2, "d")
sleep(0.1363635)
releaseNote(1, "d")
releaseNote(2, "d")
sleep(0.4090905)
pressNote(2, "d")
pressNote(3, "d")
sleep(0.1363635)
releaseNote(2, "d")
releaseNote(3, "d")
sleep(0.4090905)
pressNote(2, "a#")
pressNote(3, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
releaseNote(3, "a#")
sleep(0.4090905)
pressNote(2, "c")
pressNote(3, "c")
sleep(0.1363635)
releaseNote(2, "c")
releaseNote(3, "c")
sleep(0.4090905)
pressNote(2, "a")
pressNote(3, "a")
sleep(0.1363635)
releaseNote(2, "a")
releaseNote(3, "a")
sleep(0.4090905)
pressNote(2, "a#")
pressNote(3, "a#")
sleep(0.1363635)
releaseNote(2, "a#")
releaseNote(3, "a#")
sleep(0.4090905)
pressNote(2, "g#")
pressNote(3, "g#")
sleep(0.1363635)
releaseNote(2, "g#")
releaseNote(3, "g#")
sleep(0.4090905)
pressNote(2, "a")
pressNote(3, "a")
sleep(0.1363635)
releaseNote(2, "a")
releaseNote(3, "a")
sleep(0.4090905)
pressNote(2, "f#-1")
pressNote(3, "f#-1")
sleep(0.1363635)
releaseNote(2, "f#-1")
releaseNote(3, "f#-1")
