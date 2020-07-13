#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 添加科学上网和依赖库 | 2020/7/3 by chisenin
git clone https://github.com/rufengsuixing/luci-app-adguardhome ./package/luci-app-adguardhome
git clone https://github.com/fw876/helloworld  ./package/helloworld
git clone https://github.com/AdguardTeam/AdGuardHome ./package/AdGuardHome
git clone https://github.com/zeruns/openwrt-r8168.git ./package/r8168
