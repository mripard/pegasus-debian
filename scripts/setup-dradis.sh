#! /bin/bash

VERSION=$1
FILENAME=dradis-raspberrypi4_${VERSION}_arm64.deb
URL=https://github.com/mripard/dradis/releases/download/dradis-v${VERSION}/${FILENAME}

wget ${URL}
apt-get install -y ./${FILENAME}
rm -f ${FILENAME}
