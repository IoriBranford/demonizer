#!/bin/sh
set -e

PROJECT=${PROJECT:=${PWD##*/}}
PROJECT_TITLE=${PROJECT_TITLE:="${PROJECT}${GAME_TYPE}"}
PROJECT_TITLE_NOSPACE=${PROJECT_TITLE_NOSPACE:="$(echo ${PROJECT_TITLE} | sed -e 's/\s\+/_/g')"}
GAME_TYPE=${GAME_TYPE:=game}
GAME_ASSET=${GAME_ASSET:="${GAME_TYPE}.love"}
DESCRIPTION=${DESCRIPTION:="No description"}

LOVE_VERSION=${LOVE_VERSION:="11.3"}

ARCH=${ARCH:="x86_64"}
if [ ${ARCH} = x86_64 ]; then
	DEB_ARCH=amd64
elif [ ${ARCH} = i686 ]; then
	DEB_ARCH=i386
fi
LOVE_APPIMAGE_URL=https://github.com/love2d/love/releases/download/${LOVE_VERSION}
LOVE_APPIMAGE=love-${LOVE_VERSION}-${ARCH}.AppImage

APPIMAGETOOL=appimagetool-${ARCH}.AppImage
APPIMAGETOOL_RELEASE=12
APPIMAGETOOL_URL=https://github.com/AppImage/AppImageKit/releases/download/${APPIMAGETOOL_RELEASE}

GAME_APPDIR=${PROJECT_TITLE_NOSPACE}.AppDir
GAME_DESKTOPFILE=${PROJECT_TITLE_NOSPACE}.desktop
GAME_APPIMAGE=${GAME_APPIMAGE:="${PROJECT_TITLE_NOSPACE}-${ARCH}.AppImage"}

LIBGME_VERSION=0.5.5-2+deb8u1
LIBGME_DEB=libgme0_${LIBGME_VERSION}_${DEB_ARCH}.deb
LIBGME_DEV_DEB=libgme-dev_${LIBGME_VERSION}_${DEB_ARCH}.deb
LIBGME_URL=http://security.debian.org/debian-security/pool/updates/main/g/game-music-emu

./make-game.sh

download() {
	URL=$1
	FILE=$2
	if [ ! -f ${FILE} ]
	then
		wget -N ${URL}/${FILE}
	fi
}

if [ ! -e appimagetool ]
then
	download ${APPIMAGETOOL_URL} ${APPIMAGETOOL}
	chmod a+x ${APPIMAGETOOL}
	./${APPIMAGETOOL} --appimage-extract
	mv squashfs-root appimagetool
fi

download ${LOVE_APPIMAGE_URL} ${LOVE_APPIMAGE}
chmod a+x ${LOVE_APPIMAGE}

./${LOVE_APPIMAGE} --appimage-extract
mv squashfs-root ${GAME_APPDIR}

download ${LIBGME_URL} ${LIBGME_DEB}
download ${LIBGME_URL} ${LIBGME_DEV_DEB}
dpkg -x ${LIBGME_DEB} ${GAME_APPDIR}
dpkg -x ${LIBGME_DEV_DEB} ${GAME_APPDIR}

set_property() {
	FILE=$1
	KEY=$2
	VALUE=$3
	if [ -z ${VALUE} ]
	then
		sed -i -r -e "/^${KEY}=/d" ${FILE}
	else
		sed -i -r -e "s/^${KEY}=.*/${KEY}=${VALUE}/" ${FILE}
	fi
}

cp appicon.png ${GAME_APPDIR}
cd ${GAME_APPDIR}
set_property love.desktop Name "${PROJECT_TITLE}"
set_property love.desktop Comment "${DESCRIPTION}"
set_property love.desktop MimeType
set_property love.desktop Categories "Game;"
set_property love.desktop NoDisplay "false"
set_property love.desktop Icon "appicon"
mv love.desktop ${PROJECT_TITLE_NOSPACE}.desktop
cat usr/bin/love ../${GAME_ASSET} > love-fused
mv love-fused usr/bin/love
chmod +x usr/bin/love
cd ..

appimagetool/AppRun ${GAME_APPDIR} ${GAME_APPIMAGE}
