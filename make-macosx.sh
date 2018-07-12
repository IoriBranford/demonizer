#!/bin/bash
set -e

PROJECT=${PROJECT:=${PWD##*/}}
GAME_TYPE=${GAME_TYPE:=demo}
GAME_ASSET=${GAME_ASSET:=${GAME_TYPE}.love}
PROJECT_TITLE=${PROJECT_TITLE:=${PROJECT}-${GAME_TYPE}}
GAME_APP=${GAME_APP:="${PROJECT_TITLE}.app"}

CFBundleName=${CFBundleName:=${PROJECT_TITLE}}
CFBundleIdentifier=${CFBundleIdentifier:=org.unknown.${PROJECT}${GAME_TYPE}}
NSHumanReadableCopyright=${NSHumanReadableCopyright:="© 2xxx unknown"}

INSTALL_NAME_TOOL=${INSTALL_NAME_TOOL:=install_name_tool}

#PROJECT_ZIP=${PROJECT}-macosx.zip

LOVE_VERSION=${LOVE_VERSION:=0.10.2}
LOVE_APP=love.app
LOVE_ZIP=love-${LOVE_VERSION}-macosx-x64.zip
LOVE_URL=https://bitbucket.org/rude/love/downloads/${LOVE_ZIP}
# if bitbucket fails use temp Google Drive link
LOVE_APP_INFO=${LOVE_APP}/Contents/Info.plist
LOVE_MACOSX_ASSET_PATH=${LOVE_APP}/Contents/Resources
LOVE_MACOSX_LIB_PATH=${LOVE_APP}/Contents/Frameworks

if [ ! -f ${GAME_ASSET} ]
then ./make-game.sh
fi

# Download and extract the Mac version of LÖVE from the LÖVE homepage
if [ ! -f ${LOVE_ZIP} ]
then wget ${LOVE_URL} -O ${LOVE_ZIP}
fi
unzip ${LOVE_ZIP} -d .

# Modify SuperGame.app/Contents/Info.plist
patch -p0 < love-macosx-game.patch
sed -i -e "s/myCFBundleIdentifier/${CFBundleIdentifier}/" ${LOVE_APP_INFO}
sed -i -e "s/myCFBundleName/${CFBundleName}/" ${LOVE_APP_INFO}
sed -i -e "s/myNSHumanReadableCopyright/${NSHumanReadableCopyright}/" ${LOVE_APP_INFO}

# Copy your SuperGame.love to SuperGame.app/Contents/Resources/
mkdir -p $LOVE_MACOSX_ASSET_PATH
cp ${GAME_ASSET} ${LOVE_MACOSX_ASSET_PATH}

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
mv ${LOVE_APP} "${GAME_APP}"

# Zip the SuperGame.app folder (e.g. to SuperGame_osx.zip) and distribute it.
# Enable the -y flag of zip to keep the symlinks.
#zip -y -r ${PROJECT_ZIP} "${GAME_APP}"
