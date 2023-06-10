notes = { "f#-1", "g", "g#", "a", "a#", "b", "c", "c#", "d", "d#", "e", "f", "f#-2" }
visualizerID = rednet.lookup("visual", "visualizer")
state = (arg[1] == "true" and true or false)
for i=1,3 do
    proto = "octave-" .. i
    for j, note in ipairs(notes) do
        controllerID = rednet.lookup(proto, note)
        if (controllerID ~= nil)
        then
            rednet.send(controllerID, state, proto)
			rednet.send(visualizerID, { note, i, state }, "visual")
        end
    end
end
