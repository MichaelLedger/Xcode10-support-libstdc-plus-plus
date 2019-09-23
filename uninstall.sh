#!/bin/bash

# Asking sudo
#if [ $EUID != 0 ]; then
#    sudo "$0" "$@"
#    exit $?
#fi

# $ cd 项目根目录
# $ sh uninstall.sh

# Unsupport iPhoneOS
sudo rm -rf /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include/c++
cd /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/lib/
sudo rm libstdc++.6.0.9.tbd libstdc++.6.tbd libstdc++.tbd

# Unspport iPhoneSimulator
sudo rm -rf /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/include/c++
cd /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/lib/
sudo rm libstdc++.6.0.9.tbd libstdc++.6.tbd libstdc++.tbd
cd /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS.simruntime/Contents/Resources/RuntimeRoot/usr/lib
sudo rm libstdc++.6.0.9.dylib libstdc++.6.dylib libstdc++.dylib

# Unsupport MacOSX
sudo rm -rf /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++
cd /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib/
sudo rm libstdc++.6.0.9.tbd libstdc++.6.tbd libstdc++.tbd
