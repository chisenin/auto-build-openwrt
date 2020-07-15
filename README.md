# auto-build-openwrt
- 本项目来自 [P3TERX/Actions-OpenWrt]（https://github.com/P3TERX/Actions-OpenWrt）

## 用法
### 搭建本地编译环境，在ubuntu server环境操作,整个过程最好准备梯子
- 更新系统 
  > sudo apt-get update && sudo apt-get -y update 
  
- 安装必要工具和依赖库
  > sudo apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3.5 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf wget swig
  
- 克隆源代码
  > git clone https://github.com/coolsnowwolf/lede openwrt
  
- 进入工作目录
  > cd openwrt
  
- 最新源代码去掉了酸酸乳，从其它地方克隆，还包含一些常用软件包
  > git clone https://github.com/kenzok8/openwrt-packages.git ./package/packages
  
- 此软件包还包含passwall,编译则需要安装另一个依赖库
  > git clone https://github.com/kenzok8/small.git ./package/small
  
- 下载和安装feeds软件包
  > ./scripts/feeds update -a &&   ./scripts/feeds install -a
  
- 配置固件
  > make menuconfig
  
- 下载dl库
  > make -j8 download V=s
  
- 编译固件,首次编译用单线程，减少出错概率
  > make -j1 V=s 
  
- 第一次编译最好什么也不配置，直接单线程编译
  
