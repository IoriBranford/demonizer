#!/bin/bash

GAME_TYPE=${GAME_TYPE:=demo}

cd game
luajit make-game.lua gamefiles-${GAME_TYPE}.txt ${GAME_TYPE}.love
mv ${GAME_TYPE}.love ..
cd ..

