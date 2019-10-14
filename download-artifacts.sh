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

URL=https://gitlab.com/api/v4/projects/$ORG%2F$PROJECT/jobs/artifacts/$VERSION/download

download() {
	JOB=$1
	wget -O $PROJECT-$VERSION-$JOB.zip --content-disposition --header "PRIVATE-TOKEN: $(cat pat)" "$URL?job=$JOB"
}

download win-64
download win-32
download linux-x86_64
download linux-i686
download macosx
download android
download data
download demo-win-64
download demo-win-32
download demo-linux-x86_64
download demo-linux-i686
download demo-macosx
download demo-android
download demo-data
