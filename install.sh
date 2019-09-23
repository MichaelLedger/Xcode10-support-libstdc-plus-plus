#!/bin/bash

# Asking sudo
#if [ $EUID != 0 ]; then
#    sudo "$0" "$@"
#    exit $?
#fi

# $ cd 项目根目录
# $ sh install.sh

# Support iPhoneOS
sudo cp -rf c++ /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include
sudo cp libstdc++_tbd_iPhoneOS/* /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/lib/

# Support iPhoneSimulator
sudo cp -rf c++ /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/include
sudo cp libstdc++_tbd_iPhoneOS/* /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/lib/
sudo cp libstdc++_dylib_Simulator/* /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS.simruntime/Contents/Resources/RuntimeRoot/usr/lib/

# Support MacOSX
sudo cp -rf c++ /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
sudo cp libstdc++_tbd_iPhoneOS/* /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib/
