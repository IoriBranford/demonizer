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

publish ${PROJECT}-${VERSION}-full-win32.zip win-32
publish ${PROJECT}-${VERSION}-full-win64.zip win-64
publish ${PROJECT}-${VERSION}-full-macosx.zip osx
publish ${PROJECT}-${VERSION}-full-android.zip android
publish ${PROJECT}-${VERSION}-full-data.zip linux-other
publish ${PROJECT}-${VERSION}-demo-win32.zip demo-win-32
publish ${PROJECT}-${VERSION}-demo-win64.zip demo-win-64
publish ${PROJECT}-${VERSION}-demo-macosx.zip demo-osx
publish ${PROJECT}-${VERSION}-demo-android.zip demo-android
publish ${PROJECT}-${VERSION}-demo-data.zip demo-linux-other
