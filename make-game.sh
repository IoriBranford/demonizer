#!/bin/sh
set -e

GAME_TYPE=${GAME_TYPE:=demo}

cd game
LUA_PATH="${LUA_PATH};./levity/pl/lua/?.lua" luajit make-game.lua gamefiles-${GAME_TYPE}.txt ${GAME_TYPE}.love
mv ${GAME_TYPE}.love ..
cd ..

