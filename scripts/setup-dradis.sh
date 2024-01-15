#! /bin/bash

VERSION=$1
FILENAME=dradis_${VERSION}-1_arm64.deb
URL=https://github.com/mripard/dradis/releases/download/v${VERSION}/${FILENAME}

wget ${URL}
apt-get install -y ./${FILENAME}
rm -f ${FILENAME}
