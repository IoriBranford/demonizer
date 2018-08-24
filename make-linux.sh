#!/bin/sh
set -e

PROJECT=${PROJECT:=${PWD##*/}}
GAME_TYPE=${GAME_TYPE:="demo"}
GAME_ASSET=${GAME_ASSET:="${GAME_TYPE}.love"}
PROJECT_TITLE=${PROJECT_TITLE:="${PROJECT}-${GAME_TYPE}"}
PROJECT_TITLE_NOSPACE=${PROJECT_TITLE_NOSPACE:="$(echo ${PROJECT_TITLE} | sed -e 's/\s\+/_/g')"}
DESCRIPTION=${DESCRIPTION:="No description"}

LOVE_VERSION=${LOVE_VERSION:="0.10.2"}

ARCH=${ARCH:="x86_64"}
if [ ${ARCH} = x86_64 ]; then
	DEB_ARCH=amd64
	LOVE_APPIMAGE=love-${LOVE_VERSION}-${ARCH}.AppImage
	LOVE_APPIMAGE_URL=https://bitbucket.org/bartbes/love-linux-builder/downloads
elif [ ${ARCH} = i686 ]; then
	DEB_ARCH=i386
	LOVE_APPIMAGE=love-${LOVE_VERSION}-${ARCH}.AppImage
	LOVE_APPIMAGE_URL=https://bitbucket.org/rude/love/issues/attachments/1168/rude/love/1504717863.83/1168
fi

APPIMAGETOOL=appimagetool-${ARCH}.AppImage
APPIMAGETOOL_RELEASE=10
APPIMAGETOOL_URL=https://github.com/AppImage/AppImageKit/releases/download/${APPIMAGETOOL_RELEASE}

GAME_APPDIR=${PROJECT_TITLE_NOSPACE}.AppDir
GAME_DESKTOPFILE=${PROJECT_TITLE_NOSPACE}.desktop
GAME_APPIMAGE=${GAME_APPIMAGE:="${PROJECT_TITLE_NOSPACE}-${ARCH}.AppImage"}

LIBGME_VERSION=0.5.5-2+deb7u1
LIBGME_DEB=libgme0_${LIBGME_VERSION}_${DEB_ARCH}.deb
LIBGME_DEV_DEB=libgme-dev_${LIBGME_VERSION}_${DEB_ARCH}.deb
LIBGME_URL=http://security.debian.org/debian-security/pool/updates/main/g/game-music-emu

if [ ! -f ${GAME_ASSET} ]
then ./make-game.sh
fi

download() {
	URL=$1
	FILE=$2
	if [ ! -f ${FILE} ]
	then
		wget -N ${URL}/${FILE}
	fi
}
download ${APPIMAGETOOL_URL} ${APPIMAGETOOL}
download ${LOVE_APPIMAGE_URL} ${LOVE_APPIMAGE}
chmod a+x ${APPIMAGETOOL}
chmod a+x ${LOVE_APPIMAGE}

./${LOVE_APPIMAGE} --appimage-extract
mv squashfs-root ${GAME_APPDIR}

cp love-appimage/* ${GAME_APPDIR}
download ${LIBGME_URL} ${LIBGME_DEB}
download ${LIBGME_URL} ${LIBGME_DEV_DEB}
dpkg -x ${LIBGME_DEB} ${GAME_APPDIR}
dpkg -x ${LIBGME_DEV_DEB} ${GAME_APPDIR}
cd ${GAME_APPDIR}

rm -rf love.desktop love.svg usr/share/doc .DirIcon
ln -s game.svg .DirIcon
sed -e "s/%NAME%/${PROJECT_TITLE}/" -e "s/%COMMENT%/${DESCRIPTION}/" game.desktop.in > ${GAME_DESKTOPFILE}
cat usr/bin/love ../${GAME_ASSET} > love-fused
mv love-fused usr/bin/love
chmod +x usr/bin/love

cd ..

./${APPIMAGETOOL} --appimage-extract
mv squashfs-root appimagetool
appimagetool/AppRun ${GAME_APPDIR} ${GAME_APPIMAGE}
