#!/bin/sh
set -e

PROJECT=${PROJECT:=${PWD##*/}}
PROJECT_TITLE=${PROJECT_TITLE:=${PROJECT}${GAME_TYPE}}
GAME_TYPE=${GAME_TYPE:=game}
GAME_ASSET=${GAME_ASSET:=${GAME_TYPE}.love}
GAME_APP=${GAME_APP:="${PROJECT_TITLE}.app"}

CFBundleName=${CFBundleName:=${PROJECT_TITLE}}
CFBundleIdentifier=${CFBundleIdentifier:=org.unknown.${PROJECT}${GAME_TYPE}}
NSHumanReadableCopyright=${NSHumanReadableCopyright:="© 2xxx unknown"}

INSTALL_NAME_TOOL=${INSTALL_NAME_TOOL:=install_name_tool}

LOVE_VERSION=${LOVE_VERSION:=11.3}
LOVE_APP=love.app
LOVE_ZIP=love-${LOVE_VERSION}-macos.zip
LOVE_URL=https://github.com/love2d/love/releases/download/${LOVE_VERSION}/${LOVE_ZIP}
LOVE_APP_INFO=game.app/Contents/Info.plist
GAME_ASSET_PATH=game.app/Contents/Resources
GAME_LIB_PATH=game.app/Contents/Frameworks

./make-game.sh

# Download and extract the Mac version of LÖVE from the LÖVE homepage
if [ ! -e ${LOVE_APP} ]
then
	wget ${LOVE_URL} -O ${LOVE_ZIP}
	unzip ${LOVE_ZIP} -d .
fi

# Rename love.app to SuperGame.app
cp -r ${LOVE_APP} game.app

# Modify SuperGame.app/Contents/Info.plist
#patch -p0 < love-macosx-game.patch
cp -r love-macosx/* game.app/
sed -i -e "s/myCFBundleIdentifier/${CFBundleIdentifier}/" ${LOVE_APP_INFO}
sed -i -e "s/myCFBundleName/${CFBundleName}/" ${LOVE_APP_INFO}
sed -i -e "s/myNSHumanReadableCopyright/${NSHumanReadableCopyright}/" ${LOVE_APP_INFO}

# Copy your SuperGame.love to SuperGame.app/Contents/Resources/
mkdir -p $GAME_ASSET_PATH
cp ${GAME_ASSET} ${GAME_ASSET_PATH}

# Extra libraries
getHomebrewDyLib() {
	PKG_NAME=$1
	PKG_VERSION=$2
	PKG_OSX_VERSION=high_sierra
	PKG_TAR_GZ=${PKG_NAME}-${PKG_VERSION}.${PKG_OSX_VERSION}.bottle.tar.gz
	PKG_URL=https://bintray.com/homebrew/bottles/download_file?file_path=${PKG_TAR_GZ}
	PKG_LIB=${PKG_NAME}/${PKG_VERSION}/lib
	if [ ! -e ${PKG_LIB} ]
	then
		wget ${PKG_URL} -O ${PKG_TAR_GZ}
		tar -zxf ${PKG_TAR_GZ} ${PKG_LIB}
	fi
	cp ${PKG_LIB}/*.dylib ${GAME_LIB_PATH}
}

getHomebrewDyLib game-music-emu 0.6.3
$INSTALL_NAME_TOOL -id @rpath/libgme.0.dylib ${GAME_LIB_PATH}/libgme.0.6.3.dylib

mv game.app "${GAME_APP}"
