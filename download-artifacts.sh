#!/bin/sh
set -e

# Set to your itch username
ORG=ioribranford

VERSION=$1
if [ ! ${VERSION} ]
then
	echo "Usage: download-artifacts.sh <VERSION>"
	exit 1
fi

if [ ! -e pat ]
then
	echo "Need a personal access token file 'pat'"
	exit 1
fi

PROJECT=${PROJECT:=${PWD##*/}}

download() {
	TAG=$1
	JOB=$2
	URL="https://gitlab.com/api/v4/projects/$ORG%2F$PROJECT/jobs/artifacts/$TAG/download?job=$JOB"
	curl -Lk -o $PROJECT-$VERSION-$JOB.zip --header "PRIVATE-TOKEN: $(cat pat)" "$URL"
}

download ${VERSION} win-64
download ${VERSION} win-32
download ${VERSION} linux-x86_64
download ${VERSION} linux-i686
download ${VERSION} osx
download ${VERSION} android
download ${VERSION} data
download ${VERSION}-demo demo-win-64
download ${VERSION}-demo demo-win-32
download ${VERSION}-demo demo-linux-x86_64
download ${VERSION}-demo demo-linux-i686
download ${VERSION}-demo demo-osx
download ${VERSION}-demo demo-android
download ${VERSION}-demo demo-data
