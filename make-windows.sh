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
	ARCH=x64
else
	ARCH=x86
fi

if [ ! -f ${GAME_ASSET} ]
then ./make-game.sh
fi

LOVE_VERSION=${LOVE_VERSION:="0.10.2"}
LOVE_DIR=love-${LOVE_VERSION}-win${ARCH_BITS}
LOVE_ZIP=${LOVE_DIR}.zip
LOVE_URL=https://bitbucket.org/rude/love/downloads/${LOVE_ZIP}

GME_VERSION=0.6.2
GME_MSVC=msvc12
GME_ZIP=libgme_${GME_VERSION}_${GME_MSVC}.zip
GME_URL=https://github.com/ShiftMediaProject/game-music-emu/releases/download/${GME_VERSION}/${GME_ZIP}

RESHACK_ZIP=resource_hacker.zip
RESHACK_URL=http://www.angusj.com/resourcehacker/${RESHACK_ZIP}

getZip () {
	ZIP=$1
	URL=$2
	if [ ! -f ${ZIP} ]
	then wget -N ${URL}
	fi
	unzip -o ${ZIP} -d .
}
getZip ${LOVE_ZIP} ${LOVE_URL}
getZip ${GME_ZIP} ${GME_URL}
getZip ${RESHACK_ZIP} ${RESHACK_URL}

cat ${LOVE_DIR}/love.exe ${GAME_ASSET} > ${LOVE_DIR}/${PROJECT}.exe
rm ${LOVE_DIR}/love.exe ${LOVE_DIR}/lovec.exe ${LOVE_DIR}/*.ico
mv ${LOVE_DIR}/readme.txt ${LOVE_DIR}/readme-love.txt

resHack () {
	xvfb-run wine ResourceHacker.exe -open ${LOVE_DIR}\\${PROJECT}.exe -save ${LOVE_DIR}\\${PROJECT}.exe $*
}
resHack -action delete -mask ICONGROUP,,
resHack -action add -res appicon.ico -mask ICONGROUP,MAINICON,

mv bin/${ARCH}/gme.dll ${LOVE_DIR}

cp README.md ${LOVE_DIR}

mv ${LOVE_DIR} "${GAME_DIR}"

#zip -r ${PROJECT_ZIP} "${GAME_DIR}"
