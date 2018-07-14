#!/bin/sh
set -e

PROJECT=${PROJECT:=${PWD##*/}}
GAME_TYPE=${GAME_TYPE:="demo"}
GAME_ASSET=${GAME_ASSET:="${GAME_TYPE}.love"}
PROJECT_TITLE=${PROJECT_TITLE:="${PROJECT}-${GAME_TYPE}"}
PROJECT_TITLE_NOSPACE=${PROJECT_TITLE_NOSPACE:="$(echo ${PROJECT_TITLE} | sed -e 's/\s\+/_/g')"}
DESCRIPTION=${DESCRIPTION:="No description"}

ARCH_BITS=${ARCH_BITS:=64}
if [ ${ARCH_BITS} = 64 ]; then
	ARCH=x86_64
	DEB_ARCH=amd64
else
	ARCH=i686
	DEB_ARCH=i386
fi

APPIMAGETOOL=appimagetool-x86_64.AppImage
APPIMAGETOOL_RELEASE=10
APPIMAGETOOL_URL=https://github.com/AppImage/AppImageKit/releases/download/${APPIMAGETOOL_RELEASE}/${APPIMAGETOOL}

LOVE_VERSION=${LOVE_VERSION:="0.10.2"}
LOVE_APPIMAGE=love-${LOVE_VERSION}-${ARCH}.AppImage
LOVE_APPIMAGE_URL=https://bitbucket.org/bartbes/love-linux-builder/downloads/${LOVE_APPIMAGE}

GAME_APPDIR=${PROJECT_TITLE_NOSPACE}.AppDir
GAME_DESKTOPFILE=${PROJECT_TITLE_NOSPACE}.desktop
GAME_APPIMAGE=${GAME_APPIMAGE:="${PROJECT_TITLE_NOSPACE}-${ARCH}.AppImage"}

LIBGME_VERSION=0.5.5-2+deb7u1
LIBGME_DEB=libgme0_${LIBGME_VERSION}_${DEB_ARCH}.deb
LIBGME_URL=http://security.debian.org/debian-security/pool/updates/main/g/game-music-emu/${LIBGME_DEB}

if [ ! -f ${GAME_ASSET} ]
then ./make-game.sh
fi

downloadAppImage() {
	URL=$1
	APPIMAGE=$2
	if [ ! -f ${APPIMAGE} ]
	then
		wget -N ${URL}
		chmod a+x ${APPIMAGE}
	fi
}
downloadAppImage ${APPIMAGETOOL_URL} ${APPIMAGETOOL}
downloadAppImage ${LOVE_APPIMAGE_URL} ${LOVE_APPIMAGE}

./${LOVE_APPIMAGE} --appimage-extract
mv squashfs-root ${GAME_APPDIR}

cp love-appimage/* ${GAME_APPDIR}
wget -N ${LIBGME_URL}
dpkg -x ${LIBGME_DEB} ${GAME_APPDIR}
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
