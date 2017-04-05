#!/bin/bash
TILED=${TILED:-tiled}
GAME=game

for TMX in $GAME/*.tmx
do
	MAP=$(basename -s .tmx $TMX)
	$TILED --export-map $TMX $GAME/$MAP.lua
done
