# How to: Build OpenSSL 0.9.8zh on macOS

## Intro
This folder is just to try compiling OpenSSL 0.9.8zh for x86_64 and arm64.  
It requires a manual change in ```Configure``` to be able to build.  
That's because that version is outdated, and doesn't contain a build configuration for ```darwin64-arm64```.  
So don't use this for production!

## Let's build OpenSSL 0.9.8zh
The modified ```Configure_098_arm64``` is already included in this folder. You only need the following steps if you want to create it yourself:

1. Extract the downloaded [openssl-0.9.8zh.tar.gz](https://www.openssl.org/source/old/0.9.x/openssl-0.9.8zh.tar.gz)
2. Search for the line in ```Configure``` containing:  
   ```darwin64-x86_64-cc```
3. Duplicate that line
4. In that duplicated line: replace the following:  
   ```
   darwin64-x86_64-cc   ->   darwin64-arm64-cc  
   arch x86_64          ->   arch arm64
   ```
5. Copy the modified file ```Configure``` next to the ```build.sh```
   and rename it to ```Configure_098_arm64```
6. Note: ```build.sh``` will replace ```Configure``` with your modified version for the arm64 build.

Note: The OpenSSL API is different in 0.9.8 compared to 1.1 and 3.x.  
Even just getting the OpenSSL Version requires different calls...  
See the example project, which includes several OpenSSL Versions.
