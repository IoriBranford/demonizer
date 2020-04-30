#!/bin/sh
set -e

GAME_TYPE=${GAME_TYPE:=demo}
GAME_ASSET=${GAME_ASSET:=${GAME_TYPE}.love}

cd game
LUA_PATH="${LUA_PATH};./?.lua;./levity/pl/lua/?.lua" luajit make-game.lua gamefiles-${GAME_TYPE}.txt ../${GAME_ASSET}
cd ..

