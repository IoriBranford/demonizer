#!/bin/bash
set -e

PROJECT=${PROJECT:=${PWD##*/}}
LOVE_ANDROID_VERSION="a1aca69"
LOVE_ANDROID_URL="https://bitbucket.org/MartinFelis/love-android-sdl2.git"
LOVE_ANDROID_NATIVE_SRC_PATH="love-android-sdl2/love/src/jni"
LIBGME_PATH="${LOVE_ANDROID_NATIVE_SRC_PATH}/gme/gme"
LIBGME_VERSION="0.6.2"
LIBGME_URL="https://bitbucket.org/mpyne/game-music-emu.git"

git clone $LOVE_ANDROID_URL
git -C love-android-sdl2 checkout $LOVE_ANDROID_VERSION
git clone --depth=1 -b $LIBGME_VERSION $LIBGME_URL $LIBGME_PATH
cp -r love-android/* love-android-sdl2

git describe --tags --always >> love-android-sdl2/version

cd love-android-sdl2
git apply love-android-game.patch

APPLICATION_JAVA_SRC_PATH=love/src/main/java/$(echo ${APPLICATION_ID} | sed 's/\./\//g')
echo "package ${APPLICATION_ID};" >> MainActivity.java
cat MainActivity.java.in >> MainActivity.java
mkdir -p ${APPLICATION_JAVA_SRC_PATH}
mv MainActivity.java ${APPLICATION_JAVA_SRC_PATH}

echo ndk.dir=$ANDROID_NDK_HOME >> local.properties
echo sdk.dir=$ANDROID_HOME >> local.properties

echo storePassword=$KEYSTORE_PASSWORD >> keystore.properties
echo keyPassword=$KEYSTORE_PASSWORD >> keystore.properties
echo keyAlias=$KEYSTORE_ALIAS >> keystore.properties
echo storeFile=release.keystore >> keystore.properties

echo my_applicationId=$APPLICATION_ID >> app/gradle.properties
echo my_versionName=`cat version` >> app/gradle.properties
echo my_icon=@drawable/appicon >> app/gradle.properties
echo my_label=$PROJECT_TITLE >> app/gradle.properties

cd ..
