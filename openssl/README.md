# How to: Build OpenSSL on macOS

## Intro
This example is building OpenSSL as a Universal Binary for Intel-64Bit and ARM-64Bit.

## Requirements
It requires a macOS Version and Xcode version that is capable of building these two targets.

The included built ```.dylib```'s have been built using:
- macOS 13.6
- Xcode 15.0

## Let's build OpenSSL
There are subfolders for different OpenSSL versions.  
- Version [0.9.8](./0.9.8zh) needs some manual modifications in order to compile it for ARM-64Bit.  
  However - it's an outdated OpenSSL version.
- For Version [3.1](./3.1) the script modifies `VERSION.dat` so that .dylibs will have `3.1` in the filename.
- So best look in the folders [3.0 (LTS)](./3.0), [3.1](./3.1) and [1.1](./1.1).

How to build OpenSSL using the provided Shell Scripts:
1. Launch Terminal
2. Change to the OpenSSL build folder:  
   ```cd /path/to/where/you/have/saved/openssl-byo/openssl/3.0```
3. Delete all files in the folder, except for ```build.sh```
4. Edit the Build Script ```build.sh``` with a TextEditor of your choice
5. Change the variable to the OpenSSL version you're going to build:  
   - To build OpenSSL 3.0.x (LTS):  
     ```DOWNLOAD_OPENSSL_VERSION="3.0.11"```
   - To build OpenSSL 3.1.x:  
     ```DOWNLOAD_OPENSSL_VERSION="3.1.3"```
   - To build OpenSSL 1.1.1x:  
     ```DOWNLOAD_OPENSSL_VERSION="1.1.1w"```
6. just in case: the build script needs to be executable:  
   ```chmod 755 ./build.sh```
7. Run the Script build.sh:  
   ```./build.sh```

The build script will perform the following steps:
1. Download the [OpenSSL source](https://www.openssl.org/source/)
2. Create two sub-folders *(one for each build target)* and extract the source in there
3. Build the two Targets: ```arm64```, ```x86_64```
4. Combine the built .dylibs to a Universal ```.dylib``` containing both Targets

Note: The build script doesn't do error checking...  
Should you noot see the expected ```.dylib```'s in the build folder once it finishes, you need to look into the Shell Output and figure out what didn't work as expected.

Result:
In your "openssl" folder you should now have 2 files:
1. libssl.3.dylib
2. libcrypto.3.dylib

Note: The version number in the filename is being set automatically according to the version you've built.
