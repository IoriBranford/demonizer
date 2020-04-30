#!/bin/sh
set -e

# see https://love2d.org/wiki/Game_Distribution/APKTool

download() {
	URL=$1
	FILE=$2
	OUTFILE=$3
	if [ -z $OUTFILE ]
	then
		if [ ! -f ${FILE} ]
		then
			wget -N ${URL}/${FILE}
		fi
	else
		if [ ! -f $OUTFILE ]
		then
			wget -O $OUTFILE ${URL}/${FILE}
		fi
	fi
}

APKTOOL_WRAPPER_URL=https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux
APKTOOL_JAR_URL=https://bitbucket.org/iBotPeaches/apktool/downloads
APKTOOL_VERSION=2.4.1

download $APKTOOL_WRAPPER_URL apktool
download $APKTOOL_JAR_URL apktool_${APKTOOL_VERSION}.jar apktool.jar
chmod +x apktool
chmod +x apktool.jar

LOVE_APK=love-apk-src/app/build/outputs/apk/embed/release/app-embed-release-unsigned.apk

./make-apk.sh
./apktool d -f -s -o game-apk $LOVE_APK

GAME_ASSET_PATH=game-apk/assets
GAME_ASSET=game.love # Your packaged game must be named exactly game.love!
export GAME_ASSET

# In game-apk folder, create new folder named assets and put your game.love inside that folder.
./make-game.sh
mkdir -p $GAME_ASSET_PATH
cp -r $GAME_ASSET $GAME_ASSET_PATH

cp -r love-android/* game-apk

# Modify AndroidManifest.xml and use this template:
ANDROID_MANIFEST=game-apk/AndroidManifest.xml

PROJECT=${PROJECT:=${PWD##*/}}
PROJECT_TITLE=${PROJECT_TITLE:=${PROJECT}${GAME_TYPE}}
PROJECT_TITLE_NOSPACE=${PROJECT_TITLE_NOSPACE:="$(echo ${PROJECT_TITLE} | sed -e 's/\s\+/_/g')"}
APPLICATION_ID=${APPLICATION_ID:=org.unknown.${PROJECT_TITLE_NOSPACE}}
SCREEN_ORIENTATION=${SCREEN_ORIENTATION:=landscape}

set_property() {
	FILE=$1
	KEY=$2
	VALUE=$3
	if [ -z ${VALUE} ]
	then
		sed -i -r -e "/${KEY}/d" ${FILE}
	else
		sed -i -r -e "s/${KEY}/${VALUE}/" ${FILE}
	fi
}

set_property $ANDROID_MANIFEST GamePackageName $APPLICATION_ID
set_property $ANDROID_MANIFEST GameVersionSemantic `git describe --tags --always`
set_property $ANDROID_MANIFEST GameIcon appicon
set_property $ANDROID_MANIFEST GameName "$PROJECT_TITLE"
set_property $ANDROID_MANIFEST GameScreenOrientation $SCREEN_ORIENTATION

GAME_APK=${GAME_APK:="${PROJECT_TITLE_NOSPACE}.apk"}

./apktool b -o $GAME_APK game-apk

UBERAPKSIGNER_VERSION=1.1.0
UBERAPKSIGNER_URL=https://github.com/patrickfav/uber-apk-signer/releases/download/v${UBERAPKSIGNER_VERSION}
UBERAPKSIGNER_JAR=uber-apk-signer-${UBERAPKSIGNER_VERSION}.jar

download $UBERAPKSIGNER_URL $UBERAPKSIGNER_JAR uber-apk-signer.jar
if [ ! -z "$KEYSTORE_ALIAS" ] && [ ! -z "$KEYSTORE_PASSWORD" ]
then
	SIGNING_PARAMS="--ks release.keystore --ksAlias $KEYSTORE_ALIAS --ksPass $KEYSTORE_PASSWORD --ksKeyPass $KEYSTORE_PASSWORD"
fi
java -jar uber-apk-signer.jar --overwrite --apk $GAME_APK $SIGNING_PARAMS
