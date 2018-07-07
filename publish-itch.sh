#!/bin/bash
set -e

VERSION=$1
if [ ! ${VERSION} ]
then
	echo "Usage: publish-itch.sh <VERSION>"
	exit 1
fi

ORG=ioribranford
PROJECT=${PWD##*/}

publish() {
	FILE=$1
	CHANNEL=$2
	if [ -e ${FILE} ]
	then butler push --userversion ${VERSION} ${FILE} ${ORG}/${PROJECT}:${CHANNEL}
	fi
}

publish ${PROJECT}-${VERSION}-win32.zip win-32
publish ${PROJECT}-${VERSION}-win64.zip win-64
publish ${PROJECT}-${VERSION}-macosx.zip osx
publish ${PROJECT}-${VERSION}-android.zip android
publish ${PROJECT}-${VERSION}-data.zip linux-other
