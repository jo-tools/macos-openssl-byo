# How to: Build LibreSSL on macOS

## Intro
This example is building [LibreSSL](https://www.libressl.org) as a Universal Binary for Intel-64Bit and ARM-64Bit.

## Requirements
It requires a macOS version and Xcode version that is capable of building these two targets.

The included built ```.dylib```'s have been built using:
- macOS 26.6.2
- Xcode 27.2

The build scripts set a deployment target of macOS 11.0 *(matching the minimum macOS version of the Xojo example project)*.

## Let's build LibreSSL
There are subfolders for different LibreSSL versions.  
- Version [4.2](./4.2)  
- Version [4.4](./4.4)  

These are the two maintained stable release branches *(LibreSSL transitions to a new stable release branch every 6 months, and stable branches receive fixes for one year)*.

The build scripts only use `major.minor` of the LibreSSL version in the filename of the .dylibs *(e.g. `libcrypto.4.4.dylib` when building 4.4.x)*.  
*So the filenames don't change with each bugfix release of the same branch.*

How to build LibreSSL using the provided Shell Scripts:
1. Launch Terminal
2. Change to the LibreSSL build folder:  
   ```cd /path/to/where/you/have/saved/openssl-byo/libressl/4.4```
3. Delete all files in the folder, except for ```build.sh```
4. Edit the Build Script ```build.sh``` with a TextEditor of your choice
5. Change the variable to the LibreSSL version you're going to build:  
   ```DOWNLOAD_LIBRESSL_VERSION="4.4.0"```
6. Just in case: the build script needs to be executable:  
   ```chmod 755 ./build.sh```
7. Run the Script build.sh:  
   ```./build.sh```

The build script will perform the following steps:
1. Download the [LibreSSL source](https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/)
2. Create two sub-folders *(one for each build target)* and extract the source in there
3. Build the two Targets: ```arm64```, ```x86_64```
4. Combine the built .dylibs to a Universal ```.dylib``` containing both Targets
5. Set the install names to ```@loader_path/...```, so that ```libssl``` finds ```libcrypto``` next to itself *(e.g. in the Frameworks folder of your application)*

Note: The build script doesn't do error checking...  
Should you not see the expected ```.dylib```'s in the build folder once it finishes, you need to look into the Shell Output and figure out what didn't work as expected.

Result:
In your libressl folder you should now have 2 files:
1. `libssl.4.4.dylib`
2. `libcrypto.4.4.dylib`

Note: The version number in the filename is being set automatically according to the version you've built.
