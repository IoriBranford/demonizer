#!/bin/sh
set -e

PROJECT=${PROJECT:=${PWD##*/}}
GAME_TYPE=${GAME_TYPE:=demo}
APPLICATION_ID=${APPLICATION_ID:=org.unknown.${PROJECT}${GAME_TYPE}}
PROJECT_TITLE=${PROJECT_TITLE:=${PROJECT}-${GAME_TYPE}}
SCREEN_ORIENTATION=${SCREEN_ORIENTATION:=landscape}

LOVE_ANDROID_COMMIT="3ecea2b"
LOVE_ANDROID_URL="https://bitbucket.org/IoriBranford/love-android-0.10.git"
LOVE_ANDROID_NATIVE_SRC_PATH="love-android-sdl2/love/src/jni"
LIBGME_PATH="${LOVE_ANDROID_NATIVE_SRC_PATH}/gme/gme"
LIBGME_COMMIT="67192a0"
LIBGME_URL="https://bitbucket.org/mpyne/game-music-emu.git"

if [ ! -d love-android-sdl2 ]
then
	git clone $LOVE_ANDROID_URL love-android-sdl2
fi

if [ ! -d $LIBGME_PATH ]
then
	git clone $LIBGME_URL $LIBGME_PATH
fi

if ! expr match `git -C love-android-sdl2 rev-parse --short HEAD` $LOVE_ANDROID_COMMIT
then
	git -C love-android-sdl2 checkout .
	git -C love-android-sdl2 checkout $LOVE_ANDROID_COMMIT
fi

if ! expr match `git -C $LIBGME_PATH rev-parse --short HEAD` $LIBGME_COMMIT
then
	git -C $LIBGME_PATH checkout .
	git -C $LIBGME_PATH checkout $LIBGME_COMMIT
fi

cp -r love-android/* love-android-sdl2

cd love-android-sdl2

# Patch is known to only modify this directory.
# If it starts to modify anything else, check those out too.
git checkout app

git apply love-android-game.patch

APPLICATION_JAVA_SRC_PATH=love/src/main/java/$(echo ${APPLICATION_ID} | sed 's/\./\//g')
echo "package ${APPLICATION_ID};" > GameActivity.java
cat GameActivity.java.in >> GameActivity.java
mkdir -p ${APPLICATION_JAVA_SRC_PATH}
mv GameActivity.java ${APPLICATION_JAVA_SRC_PATH}

echo ndk.dir=$ANDROID_NDK_HOME > local.properties
echo sdk.dir=$ANDROID_HOME >> local.properties

echo storePassword=$KEYSTORE_PASSWORD > keystore.properties
echo keyPassword=$KEYSTORE_PASSWORD >> keystore.properties
echo keyAlias=$KEYSTORE_ALIAS >> keystore.properties
echo storeFile=release.keystore >> keystore.properties

echo my_applicationId=$APPLICATION_ID > app/gradle.properties
echo my_versionName=`git -C .. describe --tags --always` >> app/gradle.properties
echo my_icon=@drawable/appicon >> app/gradle.properties
echo my_label=$PROJECT_TITLE >> app/gradle.properties
echo my_screenOrientation=$SCREEN_ORIENTATION >> app/gradle.properties

cd ..
