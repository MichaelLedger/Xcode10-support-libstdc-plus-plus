# Xcode10-support-libstdc-plus-plus
libstdc++适配Xcode10与iOS12

## 问题描述
当你开心得升级完新 macOS，以及新 Xcode，准备体验了一把 Dark Mode 编程模式，开心的打开自己的老项目的时候，发现编译不通过了╮(╯_╰)╭

如果你的工程中如果依赖 libstdc++，无论是你本身的功能用 C++ 跨平台编写，还是你引入了某个 SDK 其内部依赖这个 libstdc++,都会导致整个工程编译不通过，报出 Undefined symbols，C++ 的 List 找不到了。

## 原因
苹果在 XCode10 和 iOS12 中移除了 libstdc++ 这个库，由 libc++ 这个库取而代之，苹果的解释是 libstdc++ 已经标记为废弃有5年了，建议大家使用经过了 llvm 优化过并且全面支持C++11的 libc++ 库。

## 正确解决办法：

如果你自己的业务模块使用了 libstdc++ ，那么就把模块代码重新调整为依赖 libc++ ，然后重新检查是否存在问题，重新编译

如果你引用的三方库使用了 libstdc++ ，那么向三方库寻求支持，进行升级

### 脚本快速移除libstdc++
```
$ cd 当前项目根目录(.../Xcode10-support-libstdc-plus-plus-master)
$ sh uninstall.sh
```

## 临时解决办法:
从Xcode9.4拷贝缺失的libstdc++

### 脚本快速拷贝libstdc++
打开终端，cd到当前目录，执行脚本install.sh即可(需要输入管理员密码才有权限修改)
```
$ cd 当前项目根目录(.../Xcode10-support-libstdc-plus-plus-master)
$ sh install.sh
```

### 真机适配：
1. 复制文件夹

/Applications/Xcode9.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include/c++/4.2.1

为方便拷贝，已复制到同级目录下的c++文件夹

到Xcode10下相同的路径include下

即：/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include

2. 复制三个tbd文件（libstdc++.6.0.9.tbd、libstdc++.6.tbd、libstdc++.tbd）

/Applications/Xcode9.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/lib/

为方便拷贝，已复制到同级目录下的libstdc++_tbd_iPhoneOS文件夹

到xcode10同路径下：
即：/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/lib

注：后两个文件为快捷方式，其原身都是libstdc++.6.0.9.tbd


### 模拟器适配： 
1. 把上面两步中的文件夹iPhoneOS.platform替换为iPhoneSimulator.platform后同样操作

2. 把文件夹libstdc++_dylib_Simulator里面的dylib文件（libstdc++.6.0.9.dylib、libstdc++.6.dylib、libstdc++.dylib）拷贝到/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/CoreSimulator/Profiles/Runtimes/iOS.simruntime/Contents/Resources/RuntimeRoot/usr/lib/ 下。

**有用的记得给个❤️哦~**
