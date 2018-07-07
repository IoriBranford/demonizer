#!/bin/bash
set -e

PROJECT=${PROJECT:=${PWD##*/}}
GAME_ASSET=${GAME_ASSET:=game.love}
LOVE_ANDROID_ASSET_PATH="love-android-sdl2/app/src/main/assets"
LOVE_ANDROID_DEBUG_APK="love-android-sdl2/app/build/outputs/apk/app-debug.apk"
LOVE_ANDROID_RELEASE_APK="love-android-sdl2/app/build/outputs/apk/app-release.apk"
GAME_APK=${GAME_APK:="${PROJECT}-android.apk"}

if [ ! -f ${GAME_ASSET} ]
then ./make-game.sh
fi

mkdir -p $LOVE_ANDROID_ASSET_PATH
cp $GAME_ASSET $LOVE_ANDROID_ASSET_PATH

cd love-android-sdl2
./gradlew assembleRelease
cd ..
cp $LOVE_ANDROID_RELEASE_APK $GAME_APK
