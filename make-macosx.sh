#!/bin/bash
set -e

PROJECT=${PROJECT:=${PWD##*/}}
PROJECT_TITLE=${PROJECT_TITLE:=${PROJECT}}
GAME_ASSET=${GAME_ASSET:=game.love}
INSTALL_NAME_TOOL=${INSTALL_NAME_TOOL:=install_name_tool}

PROJECT_DIR=${PROJECT_DIR:=${PROJECT_TITLE}.app}
#PROJECT_ZIP=${PROJECT}-macosx.zip

LOVE_VERSION=0.10.2
LOVE_DIR=love.app
LOVE_ZIP=love-${LOVE_VERSION}-macosx-x64.zip
LOVE_URL=https://bitbucket.org/rude/love/downloads/${LOVE_ZIP}
# if bitbucket fails use temp Google Drive link
LOVE_MACOSX_ASSET_PATH=${LOVE_DIR}/Contents/Resources
LOVE_MACOSX_LIB_PATH=${LOVE_DIR}/Contents/Frameworks

if [ ! -f ${GAME_ASSET} ]
then ./make-game.sh
fi

# Download and extract the Mac version of LÖVE from the LÖVE homepage
if [ ! -f ${LOVE_ZIP} ]
then wget ${LOVE_URL} -O ${LOVE_ZIP}
fi
unzip ${LOVE_ZIP} -d .

# Copy your SuperGame.love to SuperGame.app/Contents/Resources/
mkdir -p $LOVE_MACOSX_ASSET_PATH
cp ${GAME_ASSET} ${LOVE_MACOSX_ASSET_PATH}

# Modify SuperGame.app/Contents/Info.plist
cp -r love-macosx/* ${LOVE_DIR}

# Extra libraries
getHomebrewDyLib() {
	PKG_NAME=$1
	PKG_VERSION=$2
	PKG_OSX_VERSION=yosemite
	PKG_TAR_GZ=${PKG_NAME}-${PKG_VERSION}.${PKG_OSX_VERSION}.bottle.tar.gz
	PKG_URL=https://bintray.com/homebrew/bottles/download_file?file_path=${PKG_TAR_GZ}
	PKG_LIB=${PKG_NAME}/${PKG_VERSION}/lib
	if [ ! -f ${PKG_TAR_GZ} ]
	then wget ${PKG_URL} -O ${PKG_TAR_GZ}
	fi
	tar -zxf ${PKG_TAR_GZ} ${PKG_LIB}
	mv ${PKG_LIB}/*.dylib ${LOVE_MACOSX_LIB_PATH}
}

getHomebrewDyLib game-music-emu 0.6.1
$INSTALL_NAME_TOOL -id @rpath/libgme.0.dylib ${LOVE_MACOSX_LIB_PATH}/libgme.0.6.1.dylib

# Rename love.app to SuperGame.app
mv ${LOVE_DIR} ${PROJECT_DIR}

# Zip the SuperGame.app folder (e.g. to SuperGame_osx.zip) and distribute it.
# Enable the -y flag of zip to keep the symlinks.
#zip -y -r ${PROJECT_ZIP} ${PROJECT_DIR}
