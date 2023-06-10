rednet.open("front")
note = settings.get("note")
octave = settings.get("octave")
proto = "octave-" .. octave
rednet.host(proto, note)
while (true)
do
	senderID, message, incomingProto = rednet.receive(proto)
	if (incomingProto ~= proto) then break end
	redstone.setOutput("back", message)
end
