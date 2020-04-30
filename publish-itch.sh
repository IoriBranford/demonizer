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
BUTLER=${BUTLER:=butler}

publish() {
	CHANNEL=$1
	FILE=${PROJECT}-${VERSION}-${CHANNEL}.zip
	if [ -e ${FILE} ]
	then $BUTLER push --userversion ${VERSION} ${FILE} ${ORG}/${PROJECT}:${CHANNEL}
	fi
}

publish win-32
publish win-64
publish osx
publish android
publish linux-x86_64
publish linux-i686
publish data
publish demo-win-32
publish demo-win-64
publish demo-osx
publish demo-android
publish demo-linux-x86_64
publish demo-linux-i686
publish demo-data
