#!/bin/bash

PROJECT=${PROJECT:=${PWD##*/}}
GAME_ASSET=${GAME_ASSET:=game.love}

cd game
find -name "*.lua" -exec luajit -bl {} > /dev/null \;
find -name "examples" -prune -o -name "tests" -prune -o -name "*.lua" | zip ${GAME_ASSET} -@
find -name "tests" -prune -o -name "*.png" | zip ${GAME_ASSET} -@
find -name "*.vgm" -o -name "*.vgz" | zip ${GAME_ASSET} -@
find -name "*.wav" | zip ${GAME_ASSET} -@
find -name "*.fnt" | zip ${GAME_ASSET} -@
find -name "*.txt" | zip ${GAME_ASSET} -@
find -name "*.xml" | zip ${GAME_ASSET} -@
git describe --tags --always > version
zip ${GAME_ASSET} version
mv ${GAME_ASSET} ..
cd ..

