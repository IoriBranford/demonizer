#!/bin/bash
TILED=${TILED:-tiled}

for TMX in *.tmx
do
	MAP=$(basename -s .tmx "$TMX")
	"$TILED" --export-map "$TMX" "$MAP.lua"
done
