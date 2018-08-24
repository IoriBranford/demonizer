#!/bin/sh
set -e

PROJECT=${PROJECT:=${PWD##*/}}
GAME_TYPE=${GAME_TYPE:=demo}
GAME_ASSET=${GAME_ASSET:=${GAME_TYPE}.love}
PROJECT_TITLE=${PROJECT_TITLE:=${PROJECT}-${GAME_TYPE}}
GAME_DIR=${GAME_DIR:="${PROJECT_TITLE}"}
#PROJECT_ZIP=${PROJECT}-win${ARCH_BITS}.zip

ARCH_BITS=${ARCH_BITS:=64}
if [ ${ARCH_BITS} = 64 ]; then
	ARCH=x86_64
	EH_SYSTEM=seh
else
	ARCH=i686
	EH_SYSTEM=dw2
fi

if [ ! -f ${GAME_ASSET} ]
then ./make-game.sh
fi

LOVE_VERSION=${LOVE_VERSION:="0.10.2"}
LOVE_DIR=love-${LOVE_VERSION}-win${ARCH_BITS}
LOVE_ZIP=${LOVE_DIR}.zip
LOVE_URL=https://bitbucket.org/rude/love/downloads/${LOVE_ZIP}

RESHACK_ZIP=resource_hacker.zip
RESHACK_URL=http://www.angusj.com/resourcehacker/${RESHACK_ZIP}

getZip () {
	ZIP=$1
	URL=$2
	if [ ! -f ${ZIP} ]
	then wget -N ${URL}
	fi
	unzip ${ZIP} -d .
}
getZip ${LOVE_ZIP} ${LOVE_URL}
getZip ${RESHACK_ZIP} ${RESHACK_URL}

cat ${LOVE_DIR}/love.exe ${GAME_ASSET} > ${LOVE_DIR}/${PROJECT}.exe
rm ${LOVE_DIR}/love.exe ${LOVE_DIR}/lovec.exe ${LOVE_DIR}/*.ico
mv ${LOVE_DIR}/readme.txt ${LOVE_DIR}/readme-love.txt

resHack () {
	xvfb-run wine ResourceHacker.exe -open ${LOVE_DIR}\\${PROJECT}.exe -save ${LOVE_DIR}\\${PROJECT}.exe $*
}
resHack -action delete -mask ICONGROUP,,
resHack -action add -res appicon.ico -mask ICONGROUP,MAINICON,

getMSYS2dll () {
	PKG_TAR_XZ=mingw-w64-$ARCH-$1-any.pkg.tar.xz
	PKG_URL=https://downloads.sourceforge.net/project/msys2/REPOS/MINGW/$ARCH/${PKG_TAR_XZ}
	if [ ! -f ${PKG_TAR_XZ} ]
	then wget -N ${PKG_URL}
	fi
	tar -Jxf ${PKG_TAR_XZ} mingw${ARCH_BITS}/bin
}

getMSYS2dll gcc-libs-7.3.0-2
mv mingw${ARCH_BITS}/bin/libgcc_s_${EH_SYSTEM}-1.dll ${LOVE_DIR}
mv mingw${ARCH_BITS}/bin/libstdc++-6.dll ${LOVE_DIR}
getMSYS2dll libwinpthread-git-6.0.0.5134.2416de71-1
mv mingw${ARCH_BITS}/bin/libwinpthread-1.dll ${LOVE_DIR}

getMSYS2dll libgme-0.6.2-1
mv mingw${ARCH_BITS}/bin/libgme.dll ${LOVE_DIR}

cp README.md ${LOVE_DIR}

mv ${LOVE_DIR} "${GAME_DIR}"

#zip -r ${PROJECT_ZIP} "${GAME_DIR}"
