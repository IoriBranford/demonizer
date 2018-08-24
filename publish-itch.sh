#!/bin/sh
set -e

# Set to your itch username
ORG=ioribranford

VERSION=$1
if [ ! ${VERSION} ]
then
	echo "Usage: publish-itch.sh <VERSION>"
	exit 1
fi

PROJECT=${PROJECT:=${PWD##*/}}

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
publish ${PROJECT}-${VERSION}-linux-x86_64.zip linux-x86_64
publish ${PROJECT}-${VERSION}-linux-i686.zip linux-i686
publish ${PROJECT}-${VERSION}-data.zip data
publish ${PROJECT}-${VERSION}-demo-win32.zip demo-win-32
publish ${PROJECT}-${VERSION}-demo-win64.zip demo-win-64
publish ${PROJECT}-${VERSION}-demo-macosx.zip demo-osx
publish ${PROJECT}-${VERSION}-demo-android.zip demo-android
publish ${PROJECT}-${VERSION}-demo-linux-x86_64.zip demo-linux-x86_64
publish ${PROJECT}-${VERSION}-demo-linux-i686.zip demo-linux-i686
publish ${PROJECT}-${VERSION}-demo-data.zip demo-data
