# How to: Build LibreSSL on macOS

## Intro
This example is building [LibreSSL](https://www.libressl.org) as a Universal Binary for Intel-64Bit and ARM-64Bit.

## Requirements
It requires a macOS version and Xcode version that is capable of building these two targets.

The included built ```.dylib```'s (Version 3.x) have been built using:
- macOS 15.3
- Xcode 16.2

## Let's build LibreSSL
There are subfolders for different LibreSSL versions.  
- Version [3.9.2](./3.9.2)  
- Version [4.0.0](./4.0.0)  

How to build LibreSSL using the provided Shell Scripts:
1. Launch Terminal
2. Change to the LibreSSL build folder:  
   ```cd /path/to/where/you/have/saved/openssl-byo/libressl/4.0.0```
3. Delete all files in the folder, except for ```build.sh```
4. Edit the Build Script ```build.sh``` with a TextEditor of your choice
5. Change the variable to the LibreSSL version you're going to build:  
   - To build LibreSSL 4.0.x:  
     ```DOWNLOAD_LIBRESSL_VERSION="4.0.0"```
6. just in case: the build script needs to be executable:  
   ```chmod 755 ./build.sh```
7. Run the Script build.sh:  
   ```./build.sh```

The build script will perform the following steps:
1. Download the [LibreSSL source](https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/)
2. Create two sub-folders *(one for each build target)* and extract the source in there
3. Build the two Targets: ```arm64```, ```x86_64```
4. Combine the built .dylibs to a Universal ```.dylib``` containing both Targets

Note: The build script doesn't do error checking...  
Should you not see the expected ```.dylib```'s in the build folder once it finishes, you need to look into the Shell Output and figure out what didn't work as expected.

Result:
In your "libressl" folder you should now have 2 files:
1. `libssl.4(.x.y).dylib`
2. `libcrypto.4(.x.y).dylib`

Note: The version number in the filename is being set automatically according to the version you've built.
