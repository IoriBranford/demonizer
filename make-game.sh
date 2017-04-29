#!/bin/bash
set -e

PROJECT=${PWD##*/}
GAME_ASSET=${GAME_ASSET:=game.love}

cd game
find -name "*.lua" | zip ${GAME_ASSET} -@
find -name "*.png" | zip ${GAME_ASSET} -@
find -name "*.vgm" | zip ${GAME_ASSET} -@
find -name "*.wav" | zip ${GAME_ASSET} -@
find -name "*.fnt" | zip ${GAME_ASSET} -@
find -name "*.txt" | zip ${GAME_ASSET} -@
find -name "*.xml" | zip ${GAME_ASSET} -@
mv ${GAME_ASSET} ..
cd ..

