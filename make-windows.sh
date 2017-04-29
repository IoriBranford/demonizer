#!/bin/bash
set -e

PROJECT=${PWD##*/}
GAME_ASSET=${GAME_ASSET:=game.love}
ARCH_BITS=${ARCH_BITS:=64}

if [ ${ARCH_BITS} = 64 ]
then ARCH=x86_64
else ARCH=i686
fi

PROJECT_DIR=${PROJECT}-win${ARCH_BITS}
PROJECT_ZIP=${PROJECT}-win${ARCH_BITS}.zip

LOVE_VERSION=0.10.2
LOVE_DIR=love-${LOVE_VERSION}-win${ARCH_BITS}
LOVE_ZIP=${LOVE_DIR}.zip
LOVE_URL=https://bitbucket.org/rude/love/downloads/${LOVE_ZIP}

LIBGME_TAR=mingw-w64-${ARCH}-libgme-0.6.0-1-any.pkg.tar
LIBGME_TAR_XZ=${LIBGME_TAR}.xz
LIBGME_URL=https://downloads.sourceforge.net/project/msys2/REPOS/MINGW/${ARCH}/${LIBGME_TAR_XZ}
LIBWINPTHREAD_TAR=mingw-w64-${ARCH}-libwinpthread-git-5.0.0.4816.8692be6a-1-any.pkg.tar
LIBWINPTHREAD_TAR_XZ=${LIBWINPTHREAD_TAR}.xz
LIBWINPTHREAD_URL=https://downloads.sourceforge.net/project/msys2/REPOS/MINGW/${ARCH}/${LIBWINPTHREAD_TAR_XZ}

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

cp README.md ${PROJECT_DIR}

wget -N ${LIBGME_URL}
wget -N ${LIBWINPTHREAD_URL}
unxz -f ${LIBGME_TAR_XZ}
unxz -f ${LIBWINPTHREAD_TAR_XZ}
tar -xf ${LIBGME_TAR} mingw${ARCH_BITS}/bin
tar -xf ${LIBWINPTHREAD_TAR} mingw${ARCH_BITS}/bin
mv mingw${ARCH_BITS}/bin/*.dll ${PROJECT_DIR}

zip -r ${PROJECT_ZIP} ${PROJECT_DIR}
