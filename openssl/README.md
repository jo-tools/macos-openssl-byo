# How to: Build OpenSSL on macOS

## Intro
This example is building OpenSSL as a Universal Binary for Intel-64Bit and ARM-64Bit.

## Requirements
It requires a macOS Version and Xcode version that is capable of building these two targets.

The included built ```.dylib```'s (Version 3.5 and 4.1) have been built using:
- macOS 26.6.2
- Xcode 27.2

The build scripts set a deployment target of macOS 11.0 *(matching the minimum macOS version of the Xojo example project)*.  
Exception: The scripts for the legacy versions [0.9.8zh](./0.9.8zh) and [1.1](./1.1) use macOS 10.10.

## Let's build OpenSSL
There are subfolders for different OpenSSL versions.  
- Version [0.9.8](./0.9.8zh) needs some manual modifications in order to compile it for ARM-64Bit.  
  However - it's an outdated OpenSSL version. It should no longer be used.
- Version [1.1](./1.1)  
  Note: This version is out of support and should no longer be used.
- Version [3.5 (LTS)](./3.5)  
  Long Term Support release *(supported until 2030-04-08)*. This is the recommended version.
- Version [4.1](./4.1)  
  The current release *(supported until 2027-11-23)*.

For Version [3.5 (LTS)](./3.5) and [4.1](./4.1) the script modifies `VERSION.dat` so that .dylibs will have `3.5` / `4.1` in the filename.  
*Without that modification all 3.x versions would build `libcrypto.3.dylib` and all 4.x versions `libcrypto.4.dylib`.*

How to build OpenSSL using the provided Shell Scripts:
1. Launch Terminal
2. Change to the OpenSSL build folder:  
   ```cd /path/to/where/you/have/saved/openssl-byo/openssl/3.5```
3. Delete all files in the folder, except for ```build.sh```
4. Edit the Build Script ```build.sh``` with a TextEditor of your choice
5. Change the variable to the OpenSSL version you're going to build:  
   ```DOWNLOAD_OPENSSL_VERSION="3.5.9"```
6. Just in case: the build script needs to be executable:  
   ```chmod 755 ./build.sh```
7. Run the Script build.sh:  
   ```./build.sh```

The build script will perform the following steps:
1. Download the [OpenSSL source](https://openssl-library.org/source/)
2. Create two sub-folders *(one for each build target)* and extract the source in there
3. Build the two Targets: ```arm64```, ```x86_64```
4. Combine the built .dylibs to a Universal ```.dylib``` containing both Targets
5. Set the install names to ```@loader_path/...```, so that ```libssl``` finds ```libcrypto``` next to itself *(e.g. in the Frameworks folder of your application)*

Note: The build script doesn't do error checking...  
Should you not see the expected ```.dylib```'s in the build folder once it finishes, you need to look into the Shell Output and figure out what didn't work as expected.

Result:
In your "openssl" folder you should now have 2 files:
1. `libssl.3.5.dylib`
2. `libcrypto.3.5.dylib`

Note: The version number in the filename is being set automatically according to the version you've built.
