#!/bin/bash

DOWNLOAD_OPENSSL_VERSION="0.9.8zh"

#Download
echo ----------------------------------------------
echo - Download: OpenSSL $DOWNLOAD_OPENSSL_VERSION
echo ----------------------------------------------

curl -O -L https://github.com/openssl/openssl/releases/download/OpenSSL_${DOWNLOAD_OPENSSL_VERSION//./_}/openssl-$DOWNLOAD_OPENSSL_VERSION.tar.gz

echo ----------------------------------------------
echo - Extracting...
echo ----------------------------------------------

#Extract for Intel-64Bit build
tar -xvzf openssl-$DOWNLOAD_OPENSSL_VERSION.tar.gz
mv openssl-$DOWNLOAD_OPENSSL_VERSION openssl_x86_64

#Extract for ARM-64Bit build
tar -xvzf openssl-$DOWNLOAD_OPENSSL_VERSION.tar.gz
mv openssl-$DOWNLOAD_OPENSSL_VERSION openssl_arm64


#cleanup
rm openssl-$DOWNLOAD_OPENSSL_VERSION.tar.gz

echo ----------------------------------------------
echo - Building x86_64
echo ----------------------------------------------

#Build x86_64
cd openssl_x86_64
FILENAME_VERSION_NUMBER=`grep -o "SHLIB_VERSION_NUMBER=.*" ./Makefile | awk -F'=' '{print $2}'`
./Configure darwin64-x86_64-cc -shared -mmacosx-version-min=10.10 --openssldir=.
make
FILENAME_VERSION_NUMBER=`grep -o "SHLIB_VERSION_NUMBER=.*" ./Makefile | awk -F'=' '{print $2}'`
cd ../

echo ----------------------------------------------
echo - Building arm64
echo ----------------------------------------------

#Build arm64
cd openssl_arm64
#Replace modified Configuration for arm64
rm ./Configure
cp ../Configure_098_arm64 ./Configure
FILENAME_VERSION_NUMBER=`grep -o "SHLIB_VERSION_NUMBER=.*" ./Makefile | awk -F'=' '{print $2}'`
./Configure darwin64-arm64-cc -shared -mmacosx-version-min=10.10 --openssldir=.
make
FILENAME_VERSION_NUMBER=`grep -o "SHLIB_VERSION_NUMBER=.*" ./Makefile | awk -F'=' '{print $2}'`
cd ../


echo ----------------------------------------------
echo - Combine arm64 and x86_64
echo ----------------------------------------------


#combine
lipo -create openssl_arm64/libcrypto.$FILENAME_VERSION_NUMBER.dylib openssl_x86_64/libcrypto.$FILENAME_VERSION_NUMBER.dylib -output libcrypto.$FILENAME_VERSION_NUMBER.dylib
lipo -create openssl_arm64/libssl.$FILENAME_VERSION_NUMBER.dylib openssl_x86_64/libssl.$FILENAME_VERSION_NUMBER.dylib -output libssl.$FILENAME_VERSION_NUMBER.dylib

#end
echo ----------------------------------------------
echo - Built: OpenSSL $FILENAME_VERSION_NUMBER
echo ----------------------------------------------

