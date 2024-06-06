#!/bin/bash

DOWNLOAD_LIBRESSL_VERSION="3.9.2"

#Download
echo ----------------------------------------------
echo - Download: LibreSSL $DOWNLOAD_LIBRESSL_VERSION
echo ----------------------------------------------
curl -O https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-$DOWNLOAD_LIBRESSL_VERSION.tar.gz

echo ----------------------------------------------
echo - Extracting...
echo ----------------------------------------------

#Extract for Intel-64Bit build
tar -xvzf libressl-$DOWNLOAD_LIBRESSL_VERSION.tar.gz
mv libressl-$DOWNLOAD_LIBRESSL_VERSION libressl_x86_64

#Extract for ARM-64Bit build
tar -xvzf libressl-$DOWNLOAD_LIBRESSL_VERSION.tar.gz
mv libressl-$DOWNLOAD_LIBRESSL_VERSION libressl_arm64

#cleanup
rm libressl-$DOWNLOAD_LIBRESSL_VERSION.tar.gz


echo ----------------------------------------------
echo - Building x86_64
echo ----------------------------------------------
export ARCH=x86_64
export SDK=macosx
export DEPLOYMENT_TARGET=10.14
export CFLAGS="-arch $ARCH -isysroot $(xcrun -sdk $SDK --show-sdk-path) -m$SDK-version-min=$DEPLOYMENT_TARGET"

#Build x86_64
cd libressl_x86_64
./configure --host=$ARCH-apple-darwin
make -j8

cd ..


echo ----------------------------------------------
echo - Building arm64
echo ----------------------------------------------
export ARCH=arm64
export SDK=macosx
export DEPLOYMENT_TARGET=10.14
export CFLAGS="-arch $ARCH -isysroot $(xcrun -sdk $SDK --show-sdk-path) -m$SDK-version-min=$DEPLOYMENT_TARGET"

#Build arm64
cd libressl_arm64
./configure --host=$ARCH-apple-darwin
make -j8

cd ..


echo ----------------------------------------------
echo - Combine arm64 and x86_64
echo ----------------------------------------------


#combine
lipo -create ./libressl_arm64/crypto/.libs/libcrypto.dylib ./libressl_x86_64/crypto/.libs/libcrypto.dylib -output ./libcrypto.$DOWNLOAD_LIBRESSL_VERSION.dylib
lipo -create ./libressl_arm64/ssl/.libs/libssl.dylib ./libressl_x86_64/ssl/.libs/libssl.dylib -output ./libssl.$DOWNLOAD_LIBRESSL_VERSION.dylib

#end
echo ----------------------------------------------
echo - Built: LibreSSL $DOWNLOAD_LIBRESSL_VERSION
echo ----------------------------------------------
