#!/bin/sh

for FILE in *.mid
do
	echo "Converting $FILE..."
	SONG_NAME=$(basename $FILE .mid)
	python convert.py $FILE > $SONG_NAME.lua
done
