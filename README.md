# Python for Original Xbox
This repo contains Python 2.7.18 modified to work on Original Xbox using XBMC4Xbox custom DLL loader.

# How to build
- Run `download_requisites.sh` to download **bzip2**, **sqlite** and **openssl** libs and apply patches for each one
- Open **python/XBOXbuild/pcbuild.sln** using Visual Studio .NET 2003
- Select Release XBOX (or Debug XBOX) and build Python (Build->Rebuild Solution)
- After successful build run `build.sh` script

# How to install
- Copy content of `BUILD/python` to `Q:\system\python\`
