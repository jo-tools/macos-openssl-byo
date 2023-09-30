#!/bin/bash

DOWNLOAD_OPENSSL_VERSION="3.1.3"

#Download
echo ----------------------------------------------
echo - Download: OpenSSL $DOWNLOAD_OPENSSL_VERSION
echo ----------------------------------------------

curl -O https://www.openssl.org/source/openssl-$DOWNLOAD_OPENSSL_VERSION.tar.gz

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
#modify SHLIB_VERSION so that .dylibs will have "3.1" in filename
sed -i -- 's/SHLIB_VERSION=3$/SHLIB_VERSION=3.1/g' ./VERSION.dat
#configure
./Configure darwin64-x86_64-cc -shared -mmacosx-version-min=10.10
#edit paths
sed -i -- 's/INSTALLTOP=\/.*/INSTALLTOP=./g' ./Makefile
sed -i -- 's/OPENSSLDIR=\/.*/OPENSSLDIR=./g' ./Makefile
sed -i -- 's/LIBDIR=lib.*/LIBDIR=./g' ./Makefile
make
FILENAME_VERSION_NUMBER=`grep -o "\"shlib_version\".*" ./configdata.pm | awk -F'"' '{print $4}'`
cd ../

echo ----------------------------------------------
echo - Building arm64
echo ----------------------------------------------

#Build arm64
cd openssl_arm64
#modify SHLIB_VERSION so that .dylibs will have "3.1" in filename
sed -i -- 's/SHLIB_VERSION=3$/SHLIB_VERSION=3.1/g' ./VERSION.dat
#configure
./Configure darwin64-arm64-cc -shared -mmacosx-version-min=10.10
#edit paths
sed -i -- 's/INSTALLTOP=\/.*/INSTALLTOP=./g' ./Makefile
sed -i -- 's/OPENSSLDIR=\/.*/OPENSSLDIR=./g' ./Makefile
sed -i -- 's/LIBDIR=lib.*/LIBDIR=./g' ./Makefile
make
FILENAME_VERSION_NUMBER=`grep -o "\"shlib_version\".*" ./configdata.pm | awk -F'"' '{print $4}'`
cd ../


echo ----------------------------------------------
echo - Combine arm64 and x86_64
echo ----------------------------------------------


#combine
lipo -create openssl_arm64/libcrypto.$FILENAME_VERSION_NUMBER.dylib openssl_x86_64/libcrypto.$FILENAME_VERSION_NUMBER.dylib -output libcrypto.$FILENAME_VERSION_NUMBER.dylib
lipo -create openssl_arm64/libssl.$FILENAME_VERSION_NUMBER.dylib openssl_x86_64/libssl.$FILENAME_VERSION_NUMBER.dylib -output libssl.$FILENAME_VERSION_NUMBER.dylib

#end
echo ----------------------------------------------
echo - Built: OpenSSL $DOWNLOAD_OPENSSL_VERSION
echo ----------------------------------------------

