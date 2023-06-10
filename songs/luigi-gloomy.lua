
notes = { "f#-1", "g", "g#", "a", "a#", "b", "c", "c#", "d", "d#", "e", "f", "f#-2" }
noteToIDMap = { {}, {}, {} }
visualizerID = rednet.lookup("visual", "visualizer")
if (visualizerID == nil)
then
    print("No valid controller found for visualizer")
    nonExistantFunctionCallToTerminateEarly()
end
for i=1,3 do
    proto = "octave-" .. i
    for n, note in ipairs(notes) do
        controllerID = rednet.lookup(proto, note)
        if (controllerID == nil)
        then
            print("No valid controller found for octave " .. i .. " and note " .. note)
            nonExistantFunctionCallToTerminateEarly()
        end
        noteToIDMap[i][note] = controllerID
    end
end

function pressNote(octave, note)
    updatePipe(true, octave, note)
end
function releaseNote(octave, note)
    updatePipe(false, octave, note)
end
function updatePipe(state, octave, note)
    rednet.send(noteToIDMap[octave][note], state, "octave-" .. octave)
    message = { note, octave, state }
    rednet.send(visualizerID, message, "visual")
end

pressNote(1, "a")
pressNote(1, "a")
pressNote(3, "a")
sleep(0.15)
releaseNote(1, "a")
releaseNote(1, "a")
releaseNote(3, "a")
sleep(0.15)
pressNote(3, "g#")
sleep(0.15)
releaseNote(3, "g#")
sleep(0.15)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
pressNote(3, "a")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
releaseNote(3, "a")
sleep(0.15)
pressNote(3, "b")
sleep(0.15)
releaseNote(3, "b")
sleep(0.15)
pressNote(1, "c")
pressNote(1, "c")
pressNote(3, "c")
sleep(0.15)
releaseNote(1, "c")
releaseNote(1, "c")
releaseNote(3, "c")
sleep(0.44999999999999996)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
pressNote(3, "a")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
releaseNote(3, "a")
sleep(0.44999999999999996)
pressNote(1, "f")
pressNote(1, "f")
sleep(0.15)
releaseNote(1, "f")
releaseNote(1, "f")
sleep(0.44999999999999996)
pressNote(1, "f")
pressNote(2, "a")
pressNote(2, "c")
pressNote(3, "a")
sleep(0.15)
releaseNote(1, "f")
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(3, "a")
sleep(0.15)
pressNote(3, "g#")
sleep(0.15)
releaseNote(3, "g#")
sleep(0.15)
pressNote(1, "g#")
pressNote(1, "g#")
pressNote(3, "a")
sleep(0.15)
releaseNote(1, "g#")
releaseNote(1, "g#")
releaseNote(3, "a")
sleep(0.15)
pressNote(3, "c")
sleep(0.15)
releaseNote(3, "c")
sleep(0.15)
pressNote(1, "e")
pressNote(2, "g#")
pressNote(2, "b")
pressNote(3, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(2, "g#")
releaseNote(2, "b")
releaseNote(3, "e")
sleep(0.15)
pressNote(3, "a")
sleep(0.15)
releaseNote(3, "a")
sleep(0.15)
pressNote(1, "a")
pressNote(1, "a")
pressNote(3, "f")
sleep(0.15)
releaseNote(1, "a")
releaseNote(1, "a")
sleep(0.44999999999999996)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
sleep(0.44999999999999996)
pressNote(1, "e")
pressNote(1, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(1, "e")
sleep(0.44999999999999996)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
sleep(0.15)
releaseNote(3, "f")
pressNote(3, "g")
sleep(0.15)
pressNote(3, "f")
releaseNote(3, "g")
sleep(0.15)
pressNote(1, "a")
pressNote(1, "a")
pressNote(3, "e")
releaseNote(3, "f")
sleep(0.15)
releaseNote(1, "a")
releaseNote(1, "a")
releaseNote(3, "e")
sleep(0.44999999999999996)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
sleep(0.44999999999999996)
pressNote(1, "e")
pressNote(1, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(1, "e")
sleep(0.44999999999999996)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
sleep(0.15)
pressNote(3, "e")
sleep(0.15)
releaseNote(3, "e")
sleep(0.15)
pressNote(1, "d#")
pressNote(1, "d#")
pressNote(3, "d#")
sleep(0.15)
releaseNote(1, "d#")
releaseNote(1, "d#")
sleep(0.44999999999999996)
pressNote(2, "b")
pressNote(2, "d#")
pressNote(3, "f#-1")
sleep(0.15)
releaseNote(2, "b")
releaseNote(2, "d#")
releaseNote(3, "f#-1")
sleep(0.44999999999999996)
pressNote(1, "b")
pressNote(1, "b")
sleep(0.15)
releaseNote(1, "b")
releaseNote(1, "b")
sleep(0.44999999999999996)
pressNote(2, "f#-1")
pressNote(2, "b")
pressNote(2, "d#")
sleep(0.15)
releaseNote(2, "f#-1")
releaseNote(2, "b")
releaseNote(2, "d#")
sleep(0.15)
pressNote(3, "c#")
releaseNote(3, "d#")
sleep(0.15)
releaseNote(3, "c#")
sleep(0.15)
pressNote(1, "d")
pressNote(1, "d")
pressNote(3, "d")
sleep(0.15)
releaseNote(1, "d")
releaseNote(1, "d")
sleep(0.44999999999999996)
pressNote(1, "f")
pressNote(2, "b")
pressNote(2, "d")
sleep(0.15)
releaseNote(1, "f")
releaseNote(2, "b")
releaseNote(2, "d")
sleep(0.44999999999999996)
pressNote(1, "a")
pressNote(1, "a")
sleep(0.15)
releaseNote(1, "a")
releaseNote(1, "a")
sleep(0.44999999999999996)
pressNote(1, "f")
pressNote(2, "b")
pressNote(2, "d")
sleep(0.15)
releaseNote(1, "f")
releaseNote(2, "b")
releaseNote(2, "d")
sleep(0.15)
pressNote(3, "b")
releaseNote(3, "d")
sleep(0.15)
releaseNote(3, "b")
sleep(0.15)
pressNote(1, "c")
pressNote(1, "c")
pressNote(3, "c")
sleep(0.15)
releaseNote(1, "c")
releaseNote(1, "c")
sleep(0.44999999999999996)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
sleep(0.44999999999999996)
pressNote(1, "d#")
pressNote(1, "d#")
sleep(0.15)
releaseNote(1, "d#")
releaseNote(1, "d#")
sleep(0.44999999999999996)
pressNote(1, "f")
pressNote(2, "b")
pressNote(2, "d")
sleep(0.15)
releaseNote(1, "f")
releaseNote(2, "b")
releaseNote(2, "d")
sleep(0.44999999999999996)
pressNote(1, "e")
pressNote(1, "e")
pressNote(3, "b")
releaseNote(3, "c")
sleep(0.15)
releaseNote(1, "e")
releaseNote(1, "e")
sleep(0.44999999999999996)
pressNote(1, "e")
pressNote(2, "g#")
pressNote(2, "b")
sleep(0.15)
releaseNote(1, "e")
releaseNote(2, "g#")
releaseNote(2, "b")
sleep(0.15)
pressNote(2, "a#")
sleep(0.15)
releaseNote(2, "a#")
sleep(0.15)
pressNote(1, "e")
pressNote(2, "g#")
pressNote(2, "b")
sleep(0.15)
releaseNote(1, "e")
releaseNote(2, "g#")
releaseNote(2, "b")
sleep(1.0499999999999998)
pressNote(1, "a")
pressNote(1, "a")
pressNote(3, "a")
releaseNote(3, "b")
sleep(0.15)
releaseNote(1, "a")
releaseNote(1, "a")
releaseNote(3, "a")
sleep(0.15)
pressNote(3, "g#")
sleep(0.15)
releaseNote(3, "g#")
sleep(0.15)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
pressNote(3, "a")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
releaseNote(3, "a")
sleep(0.15)
pressNote(3, "b")
sleep(0.15)
releaseNote(3, "b")
sleep(0.15)
pressNote(1, "c")
pressNote(1, "c")
pressNote(3, "c")
sleep(0.15)
releaseNote(1, "c")
releaseNote(1, "c")
releaseNote(3, "c")
sleep(0.44999999999999996)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
pressNote(3, "a")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
releaseNote(3, "a")
sleep(0.44999999999999996)
pressNote(1, "f")
pressNote(1, "f")
sleep(0.15)
releaseNote(1, "f")
releaseNote(1, "f")
sleep(0.44999999999999996)
pressNote(1, "f")
pressNote(2, "a")
pressNote(2, "c")
pressNote(3, "a")
sleep(0.15)
releaseNote(1, "f")
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(3, "a")
sleep(0.15)
pressNote(3, "g#")
sleep(0.15)
releaseNote(3, "g#")
sleep(0.15)
pressNote(1, "g#")
pressNote(1, "g#")
pressNote(3, "b")
sleep(0.15)
releaseNote(1, "g#")
releaseNote(1, "g#")
releaseNote(3, "b")
sleep(0.15)
pressNote(3, "d")
sleep(0.15)
releaseNote(3, "d")
sleep(0.15)
pressNote(1, "e")
pressNote(2, "g#")
pressNote(2, "b")
pressNote(3, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(2, "g#")
releaseNote(2, "b")
releaseNote(3, "e")
sleep(0.15)
pressNote(3, "a")
sleep(0.15)
releaseNote(3, "a")
sleep(0.15)
pressNote(1, "a")
pressNote(1, "a")
pressNote(3, "f")
sleep(0.15)
releaseNote(1, "a")
releaseNote(1, "a")
sleep(0.44999999999999996)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
sleep(0.44999999999999996)
pressNote(1, "e")
pressNote(1, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(1, "e")
sleep(0.44999999999999996)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
sleep(0.3)
releaseNote(3, "f")
pressNote(3, "g")
sleep(0.15)
pressNote(1, "a")
pressNote(1, "a")
pressNote(3, "f")
releaseNote(3, "g")
sleep(0.15)
releaseNote(1, "a")
releaseNote(1, "a")
pressNote(3, "e")
releaseNote(3, "f")
sleep(0.15)
releaseNote(3, "e")
sleep(0.3)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
sleep(0.44999999999999996)
pressNote(1, "e")
pressNote(1, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(1, "e")
sleep(0.44999999999999996)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
sleep(0.15)
pressNote(3, "e")
sleep(0.15)
releaseNote(3, "e")
sleep(0.15)
pressNote(1, "d#")
pressNote(1, "d#")
pressNote(3, "d#")
sleep(0.15)
releaseNote(1, "d#")
releaseNote(1, "d#")
sleep(0.44999999999999996)
pressNote(2, "b")
pressNote(2, "d#")
pressNote(3, "f#-1")
sleep(0.15)
releaseNote(2, "b")
releaseNote(2, "d#")
releaseNote(3, "f#-1")
sleep(0.44999999999999996)
pressNote(1, "b")
pressNote(1, "b")
sleep(0.15)
releaseNote(1, "b")
releaseNote(1, "b")
sleep(0.44999999999999996)
pressNote(2, "b")
pressNote(2, "d#")
pressNote(3, "f#-1")
sleep(0.15)
releaseNote(2, "b")
releaseNote(2, "d#")
releaseNote(3, "f#-1")
sleep(0.15)
pressNote(3, "c#")
releaseNote(3, "d#")
sleep(0.15)
releaseNote(3, "c#")
sleep(0.15)
pressNote(1, "d")
pressNote(1, "d")
pressNote(3, "d")
sleep(0.15)
releaseNote(1, "d")
releaseNote(1, "d")
sleep(0.44999999999999996)
pressNote(1, "f")
pressNote(2, "b")
pressNote(2, "d")
sleep(0.15)
releaseNote(1, "f")
releaseNote(2, "b")
releaseNote(2, "d")
sleep(0.44999999999999996)
pressNote(1, "a")
pressNote(1, "a")
sleep(0.15)
releaseNote(1, "a")
releaseNote(1, "a")
sleep(0.44999999999999996)
pressNote(1, "f")
pressNote(2, "b")
pressNote(2, "d")
sleep(0.15)
releaseNote(1, "f")
releaseNote(2, "b")
releaseNote(2, "d")
sleep(0.15)
pressNote(3, "b")
releaseNote(3, "d")
sleep(0.15)
releaseNote(3, "b")
sleep(0.15)
pressNote(1, "c")
pressNote(1, "c")
pressNote(3, "c")
sleep(0.15)
releaseNote(1, "c")
releaseNote(1, "c")
sleep(0.44999999999999996)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "e")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "e")
sleep(0.44999999999999996)
pressNote(1, "d#")
pressNote(1, "d#")
sleep(0.15)
releaseNote(1, "d#")
releaseNote(1, "d#")
sleep(0.44999999999999996)
pressNote(1, "d#")
pressNote(2, "g#")
pressNote(2, "b")
sleep(0.15)
releaseNote(1, "d#")
releaseNote(2, "g#")
releaseNote(2, "b")
sleep(0.15)
pressNote(3, "a#")
releaseNote(3, "c")
sleep(0.15)
releaseNote(3, "a#")
sleep(0.15)
pressNote(1, "e")
pressNote(1, "e")
pressNote(3, "b")
sleep(0.15)
releaseNote(1, "e")
releaseNote(1, "e")
sleep(0.44999999999999996)
pressNote(1, "e")
pressNote(2, "g#")
pressNote(2, "b")
sleep(0.15)
releaseNote(1, "e")
releaseNote(2, "g#")
releaseNote(2, "b")
sleep(0.15)
pressNote(2, "a#")
sleep(0.15)
releaseNote(2, "a#")
sleep(0.15)
pressNote(1, "e")
pressNote(2, "g#")
pressNote(2, "b")
sleep(0.15)
releaseNote(1, "e")
releaseNote(2, "g#")
releaseNote(2, "b")
sleep(1.0499999999999998)
pressNote(1, "f")
pressNote(1, "f")
releaseNote(3, "b")
pressNote(3, "f")
sleep(0.15)
releaseNote(1, "f")
releaseNote(1, "f")
releaseNote(3, "f")
sleep(0.15)
pressNote(3, "e")
sleep(0.15)
releaseNote(3, "e")
sleep(0.15)
pressNote(1, "f")
pressNote(2, "a")
pressNote(2, "c")
pressNote(3, "f")
sleep(0.15)
releaseNote(1, "f")
releaseNote(2, "a")
releaseNote(2, "c")
sleep(0.44999999999999996)
pressNote(1, "c")
pressNote(1, "c")
sleep(0.15)
releaseNote(1, "c")
releaseNote(1, "c")
sleep(0.15)
releaseNote(3, "f")
pressNote(3, "g#")
sleep(0.15)
releaseNote(3, "g#")
sleep(0.15)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "f")
pressNote(3, "d")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "f")
releaseNote(3, "d")
sleep(0.15)
pressNote(3, "f")
sleep(0.15)
releaseNote(3, "f")
sleep(0.15)
pressNote(1, "e")
pressNote(1, "e")
pressNote(3, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(1, "e")
releaseNote(3, "e")
sleep(0.15)
pressNote(3, "d#")
sleep(0.15)
releaseNote(3, "d#")
sleep(0.15)
pressNote(2, "a")
pressNote(2, "c")
pressNote(3, "f#-1")
pressNote(3, "e")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(3, "f#-1")
sleep(0.44999999999999996)
pressNote(1, "a")
pressNote(1, "a")
releaseNote(3, "e")
sleep(0.15)
releaseNote(1, "a")
releaseNote(1, "a")
sleep(0.44999999999999996)
pressNote(2, "a")
pressNote(2, "c")
pressNote(3, "f#-1")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(3, "f#-1")
sleep(0.44999999999999996)
pressNote(1, "d")
pressNote(1, "d")
pressNote(3, "d")
sleep(0.15)
releaseNote(1, "d")
releaseNote(1, "d")
releaseNote(3, "d")
sleep(0.15)
pressNote(3, "c#")
sleep(0.15)
releaseNote(3, "c#")
sleep(0.15)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "f")
pressNote(3, "d")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "f")
releaseNote(3, "d")
sleep(0.15)
pressNote(3, "c#")
sleep(0.15)
releaseNote(3, "c#")
sleep(0.15)
pressNote(1, "g#")
pressNote(1, "g#")
pressNote(3, "d")
sleep(0.15)
releaseNote(1, "g#")
releaseNote(1, "g#")
releaseNote(3, "d")
sleep(0.15)
pressNote(3, "f")
sleep(0.15)
releaseNote(3, "f")
sleep(0.15)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "f")
pressNote(3, "e")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "f")
releaseNote(3, "e")
sleep(0.15)
pressNote(3, "g#")
sleep(0.15)
releaseNote(3, "g#")
sleep(0.15)
pressNote(1, "a")
pressNote(3, "a")
sleep(0.15)
releaseNote(1, "a")
releaseNote(3, "a")
sleep(0.15)
pressNote(3, "c")
sleep(0.15)
releaseNote(3, "c")
sleep(0.15)
pressNote(2, "g#")
pressNote(2, "b")
pressNote(2, "e")
pressNote(3, "b")
sleep(0.15)
releaseNote(2, "g#")
releaseNote(2, "b")
releaseNote(2, "e")
releaseNote(3, "b")
sleep(0.15)
pressNote(3, "d")
sleep(0.15)
releaseNote(3, "d")
sleep(0.15)
pressNote(1, "c")
pressNote(3, "c#")
sleep(0.15)
releaseNote(1, "c")
releaseNote(3, "c#")
sleep(0.15)
pressNote(3, "e")
sleep(0.15)
releaseNote(3, "e")
sleep(0.15)
pressNote(2, "b")
pressNote(2, "c")
pressNote(2, "e")
pressNote(3, "d")
sleep(0.15)
releaseNote(2, "b")
releaseNote(2, "c")
releaseNote(2, "e")
releaseNote(3, "d")
sleep(0.15)
pressNote(3, "g")
sleep(0.15)
releaseNote(3, "g")
sleep(0.15)
pressNote(1, "f")
pressNote(1, "f")
pressNote(3, "f")
sleep(0.15)
releaseNote(1, "f")
releaseNote(1, "f")
releaseNote(3, "f")
sleep(0.15)
pressNote(3, "e")
sleep(0.15)
releaseNote(3, "e")
sleep(0.15)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "f")
pressNote(3, "f")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "f")
releaseNote(3, "f")
sleep(0.44999999999999996)
pressNote(1, "c")
pressNote(1, "c")
sleep(0.15)
releaseNote(1, "c")
releaseNote(1, "c")
sleep(0.15)
pressNote(3, "g#")
sleep(0.15)
releaseNote(3, "g#")
sleep(0.15)
pressNote(2, "a")
pressNote(2, "c")
pressNote(2, "f")
pressNote(3, "d")
sleep(0.15)
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(2, "f")
releaseNote(3, "d")
sleep(0.15)
pressNote(3, "f")
sleep(0.15)
releaseNote(3, "f")
sleep(0.15)
pressNote(1, "e")
pressNote(3, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(3, "e")
sleep(0.44999999999999996)
pressNote(2, "c")
pressNote(2, "e")
pressNote(3, "a")
pressNote(3, "a")
sleep(0.15)
releaseNote(2, "c")
releaseNote(2, "e")
releaseNote(3, "a")
releaseNote(3, "a")
sleep(0.44999999999999996)
pressNote(1, "e")
pressNote(2, "a")
pressNote(2, "c")
pressNote(3, "a")
sleep(0.15)
releaseNote(1, "e")
releaseNote(2, "a")
releaseNote(2, "c")
releaseNote(3, "a")
sleep(1.0499999999999998)
pressNote(1, "a")
pressNote(2, "a")
sleep(0.15)
releaseNote(1, "a")
releaseNote(2, "a")
sleep(0.15)
pressNote(1, "c")
pressNote(2, "c")
sleep(0.15)
releaseNote(1, "c")
releaseNote(2, "c")
sleep(0.15)
pressNote(1, "g#")
pressNote(2, "g#")
sleep(0.15)
releaseNote(1, "g#")
releaseNote(2, "g#")
sleep(0.15)
pressNote(1, "d#")
pressNote(1, "d#")
sleep(0.15)
releaseNote(1, "d#")
releaseNote(1, "d#")
sleep(0.15)
pressNote(1, "f")
pressNote(1, "f")
sleep(0.15)
releaseNote(1, "f")
releaseNote(1, "f")
sleep(0.15)
pressNote(1, "e")
pressNote(1, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(1, "e")
sleep(1.3499999999999999)
pressNote(1, "d#")
pressNote(1, "d#")
sleep(0.15)
releaseNote(1, "d#")
releaseNote(1, "d#")
sleep(0.15)
pressNote(1, "e")
pressNote(1, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(1, "e")
sleep(0.15)
pressNote(1, "f")
pressNote(1, "f")
sleep(0.15)
releaseNote(1, "f")
releaseNote(1, "f")
sleep(0.15)
pressNote(1, "e")
pressNote(1, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(1, "e")
sleep(0.15)
pressNote(1, "d#")
pressNote(1, "d#")
sleep(0.15)
releaseNote(1, "d#")
releaseNote(1, "d#")
sleep(0.15)
pressNote(1, "e")
pressNote(1, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(1, "e")
sleep(0.15)
pressNote(1, "a")
pressNote(2, "a")
sleep(0.15)
releaseNote(1, "a")
releaseNote(2, "a")
sleep(0.15)
pressNote(1, "c")
pressNote(2, "c")
sleep(0.15)
releaseNote(1, "c")
releaseNote(2, "c")
sleep(0.15)
pressNote(1, "g#")
pressNote(2, "g#")
sleep(0.15)
releaseNote(1, "g#")
releaseNote(2, "g#")
sleep(0.15)
pressNote(1, "d#")
pressNote(1, "d#")
sleep(0.15)
releaseNote(1, "d#")
releaseNote(1, "d#")
sleep(0.15)
pressNote(1, "f")
pressNote(1, "f")
sleep(0.15)
releaseNote(1, "f")
releaseNote(1, "f")
sleep(0.15)
pressNote(1, "e")
pressNote(1, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(1, "e")
sleep(1.3499999999999999)
pressNote(1, "e")
pressNote(2, "e")
sleep(0.15)
releaseNote(1, "e")
releaseNote(2, "e")
sleep(0.15)
pressNote(1, "c")
pressNote(2, "c")
sleep(0.15)
releaseNote(1, "c")
releaseNote(2, "c")
sleep(0.15)
pressNote(1, "d#")
pressNote(2, "d#")
sleep(0.15)
releaseNote(1, "d#")
releaseNote(2, "d#")
sleep(0.15)
pressNote(1, "d")
pressNote(2, "d")
sleep(0.15)
releaseNote(1, "d")
releaseNote(2, "d")
sleep(0.15)
pressNote(1, "b")
pressNote(2, "b")
sleep(0.15)
releaseNote(1, "b")
releaseNote(2, "b")
sleep(0.15)
pressNote(1, "c")
pressNote(2, "c")
sleep(0.15)
releaseNote(1, "c")
releaseNote(2, "c")
sleep(0.15)
pressNote(1, "a")
pressNote(2, "a")
sleep(2.4)
releaseNote(1, "a")
releaseNote(2, "a")
