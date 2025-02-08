# OpenSSL - byo
Xojo example project

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## Description
This example project shows how you can build the [OpenSSL Library](https://openssl-library.org) from Source as a Universal ```.dylib``` *(arm64 and x86_64)*, include it in a Xojo project - and finally use it in your application.

Included in this repository:
- [How to: Build OpenSSL on macOS](./openssl)  
  - A [Shell Script](./openssl/3.0/build.sh) you can use as a template to build the [OpenSSL Library](https://openssl-library.org) yourself
- Example Xojo Project - showing how to bundle your own built ```.dylib```'s in your application

### ScreenShots
Using OpenSSL 3.0.x in a Xojo built application  
![ScreenShot: OpenSSL - byo](screenshots/example_openssl-3.png?raw=true)


## Xojo
### Requirements
[Xojo](https://www.xojo.com/) is a rapid application development for Desktop, Web, Mobile & Raspberry Pi.  

The Desktop application Xojo example project ```openssl-byo.xojo_project``` is using:
- Xojo 2024r4.2
- API 2

### How to use in your own Xojo project?
1. Open the example project ```openssl-byo.xojo_project```, create a new project - or open your existing project
2. In the Navigator, go to: ```Build Settings -> macOS```
3. Add a ```Post Build Step: Copy Files```
4. Drag in the two built .dylibs: ```libssl.3.dylib``` and ```libcrypto.3.dylib```
5. Set the Post Build Script behavior in the Inspector:
   - Applies to: ```both```
   - Subdirectory: ```(empty)```
   - Destination: ```Framework folder```

You then can use the bundled OpenSSL Library that you have just built in your own project.

For example: Get the OpenSSL Version like this:

```
Const cryptoLib = "@executable_path/../Frameworks/libcrypto.3.dylib"
Declare Function OpenSSL_version Lib cryptoLib (i As Integer) As CString
SomeLabel.Text = OpenSSL_version(0)
```

## About
Juerg Otter is a long term user of Xojo and working for [CM Informatik AG](https://cmiag.ch/). Their Application [CMI LehrerOffice](https://cmi-bildung.ch/) is a Xojo Design Award Winner 2018. In his leisure time Juerg provides some [bits and pieces for Xojo Developers](https://www.jo-tools.ch/).

### Contact
[![E-Mail](https://img.shields.io/static/v1?style=social&label=E-Mail&message=xojo@jo-tools.ch)](mailto:xojo@jo-tools.ch)
&emsp;&emsp;
[![Follow on Facebook](https://img.shields.io/static/v1?style=social&logo=facebook&label=Facebook&message=juerg.otter)](https://www.facebook.com/juerg.otter)
&emsp;&emsp;
[![Follow on Twitter](https://img.shields.io/twitter/follow/juergotter?style=social)](https://twitter.com/juergotter)

### Donation
Do you like this project? Does it help you? Has it saved you time and money?  
You're welcome - it's free... If you want to say thanks I'd appreciate a [message](mailto:xojo@jo-tools.ch) or a small [donation via PayPal](https://paypal.me/jotools).  

[![PayPal Dontation to jotools](https://img.shields.io/static/v1?style=social&logo=paypal&label=PayPal&message=jotools)](https://paypal.me/jotools)
