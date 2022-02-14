# macos-openssl-byo
Xojo example project: OpenSSL - byo


***********************************
* OpenSSL - Bring your own .dylib *
***********************************

How to: Build OpenSSL
---------------------
This example is building OpenSSL as a Universal Binary for Intel-64Bit and ARM-64Bit.
It requires a macOS Version and Xcode version that is capable of building these two targets.
I am currently using: macOS 11.2, Xcode 12.4

1. Delete all files in the folder 'openssl', except for "build.sh"
2. Edit the Build Script "build.sh" with a TextEditor of your choice
3. change the variable to the OpenSSL version you're going to build
   DOWNLOAD_OPENSSL_VERSION="1.1.1k"
4. Launch Terminal
5. Change to the openssl folder:
   cd /path/to/where/you/have/saved/openssl-byo/openssl
6. just in case: the build script needs to be executable:
   chmod 755 ./build.sh
7. Run the Script build.sh:
   ./build.sh

The build script will perform the following steps:
1. Download the OpenSSL source
2. Create 2 sub-folders (one for each build target) and extract the source in there
3. Build the 2 Targets: arm64, x86_64
4. Combine the built .dylibs to a Universal .dylib containing both Targets

Note: The build script doesn't do error checking...
Should you noot see the expected .dylibs once it finishes, you might want to look into the Shell Output.

Result:
In your "openssl" folder you should now have 2 files:
1. libssl.1.1.dylib
2. libcrypto.1.1.dylib

Note: The version number in the filename is being set automatically according to the version you've built.


How to: Use your own Openssl .dylib's in a Xojo project
-------------------------------------------------------
1. Open the example project "openssl-byo.xojo_binary_project"
   Or create a new project, use your own, ...
2. In the Navigator, go to: Build Settings -> macOS
3. Use a "Post Build Step: Copy Files"
4. Drag in the two built .dylibs: libssl.1.1.dylib and libcrypto.1.1.dylib
5. Set the Post Build Script behavior in the Inspector:
   1. Applies to: both
   2. Subdirectory: (empty)
   3. Destination: Framework folder

Congratulations - you're ready and set up.
You can now use the bundled OpenSSL Library that you have just built in your own project.

As an example: Get the OpenSSL Version like this:

Const cryptoLib = "@executable_path/../Frameworks/libcrypto.1.1.dylib"
Declare Function OpenSSL_version Lib cryptoLib (i As Integer) As CString
Me.Text = OpenSSL_version(0)
