#!/bin/bash
set -e

PROJECT=${PWD##*/}
GAME_ASSET=${GAME_ASSET:=game.love}
ARCH_BITS=${ARCH_BITS:=64}

if [ ${ARCH_BITS} = 64 ]; then
	ARCH=x86_64
	EH_SYSTEM=seh
else
	ARCH=i686
	EH_SYSTEM=dw2
fi

PROJECT_DIR=${PROJECT}-win${ARCH_BITS}
PROJECT_ZIP=${PROJECT}-win${ARCH_BITS}.zip

LOVE_VERSION=0.10.2
LOVE_DIR=love-${LOVE_VERSION}-win${ARCH_BITS}
LOVE_ZIP=${LOVE_DIR}.zip
LOVE_URL=https://bitbucket.org/rude/love/downloads/${LOVE_ZIP}

if [ ! -f ${GAME_ASSET} ]
then ./make-game.sh
fi

wget -N ${LOVE_URL}
unzip ${LOVE_ZIP} -d .
mv ${LOVE_DIR} ${PROJECT_DIR}
cat ${PROJECT_DIR}/love.exe ${GAME_ASSET} > ${PROJECT_DIR}/${PROJECT}.exe
cat ${PROJECT_DIR}/lovec.exe ${GAME_ASSET} > ${PROJECT_DIR}/${PROJECT}_c.exe
rm ${PROJECT_DIR}/love*.exe
mv ${PROJECT_DIR}/readme.txt ${PROJECT_DIR}/readme-love.txt

getMSYS2dll () {
	PKG_TAR_XZ=mingw-w64-$ARCH-$1-any.pkg.tar.xz
	PKG_URL=https://downloads.sourceforge.net/project/msys2/REPOS/MINGW/$ARCH/${PKG_TAR_XZ}
	wget -N ${PKG_URL}
	tar -Jxf ${PKG_TAR_XZ} mingw${ARCH_BITS}/bin
}

getMSYS2dll gcc-libs-6.3.0-2
mv mingw${ARCH_BITS}/bin/libgcc_s_${EH_SYSTEM}-1.dll ${PROJECT_DIR}
mv mingw${ARCH_BITS}/bin/libstdc++-6.dll ${PROJECT_DIR}

getMSYS2dll libwinpthread-git-5.0.0.4816.8692be6a-1
mv mingw${ARCH_BITS}/bin/libwinpthread-1.dll ${PROJECT_DIR}

getMSYS2dll libgme-0.6.0-1
mv mingw${ARCH_BITS}/bin/libgme.dll ${PROJECT_DIR}

cp README.md ${PROJECT_DIR}

zip -r ${PROJECT_ZIP} ${PROJECT_DIR}
