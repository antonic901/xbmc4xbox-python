#!/bin/sh
OPENSSL="openssl-1.0.2u"
BZIP2="bzip2-1.0.6"
SQLITE="sqlite-amalgamation"
SQLITEVER="3081101"

DOWNLOAD_PATH="libs"

set -x

mkdir -p $DOWNLOAD_PATH

[ ! -f "$DOWNLOAD_PATH/$OPENSSL.tar.gz" ] && wget -P $DOWNLOAD_PATH "https://api.antonicnikola.com/website/files/$OPENSSL.tar.gz"
rm -rf openssl
tar xvzf "$DOWNLOAD_PATH/$OPENSSL.tar.gz"
mv $OPENSSL openssl
cd openssl && patch -p1 <../patches/$OPENSSL.diff && cd ..

[ ! -f "$DOWNLOAD_PATH/$BZIP2.tar.gz" ] && wget -P $DOWNLOAD_PATH "https://api.antonicnikola.com/website/files/$BZIP2.tar.gz"
rm -rf bzip2
tar xvzf "$DOWNLOAD_PATH/$BZIP2.tar.gz"
mv $BZIP2 bzip2

[ ! -f "$DOWNLOAD_PATH/$SQLITE-$SQLITEVER.zip" ] && wget -P $DOWNLOAD_PATH "https://api.antonicnikola.com/website/files/$SQLITE-$SQLITEVER.zip"
rm -rf sqlite
unzip -o "$DOWNLOAD_PATH/$SQLITE-$SQLITEVER.zip"
mv $SQLITE-$SQLITEVER sqlite
cd sqlite && patch -p1 <../patches/sqlite-$SQLITEVER.diff && cd ..
