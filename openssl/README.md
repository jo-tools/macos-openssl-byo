# How to: Build OpenSSL on macOS

## Intro
This example is building OpenSSL as a Universal Binary for Intel-64Bit and ARM-64Bit.

## Requirements
It requires a macOS Version and Xcode version that is capable of building these two targets.

The included built ```.dylib```'s have been built using:
- macOS 12.2.1
- Xcode 13.2.1

## Let's build OpenSSL
There are subfolders for different OpenSSL versions.  
Version 0.9.8 needs some manual modifications in order to compile it for ARM-64Bit. However - it's an outdated version. So best look in the folders ```1.1``` and ```3.0```

1. Delete all files in the folder, except for ```build.sh```
2. Edit the Build Script "build.sh" with a TextEditor of your choice
3. change the variable to the OpenSSL version you're going to build:  
   ```DOWNLOAD_OPENSSL_VERSION="1.1.1l"```
4. Launch Terminal
5. Change to the openssl folder:  
   ```cd /path/to/where/you/have/saved/openssl-byo/openssl```
6. just in case: the build script needs to be executable:  
   ```chmod 755 ./build.sh```
7. Run the Script build.sh:  
   ```./build.sh```

The build script will perform the following steps:
1. Download the OpenSSL source
2. Create 2 sub-folders (one for each build target) and extract the source in there
3. Build the 2 Targets: ```arm64```, ```x86_64```
4. Combine the built .dylibs to a Universal ```.dylib``` containing both Targets

Note: The build script doesn't do error checking...  
Should you noot see the expected .dylibs once it finishes, you might want to look into the Shell Output.

Result:
In your "openssl" folder you should now have 2 files:
1. libssl.1.1.dylib
2. libcrypto.1.1.dylib

Note: The version number in the filename is being set automatically according to the version you've built.
