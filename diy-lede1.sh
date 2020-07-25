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

# 添加adguardhome
# svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome ./package/luci-app-adguardhome
# svn co https://github.com/kenzok8/openwrt-packages/trunk/adguardhome ./package/AdGuardHome

# 添加passwall
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-passwall ./package/luci-app-passwall

# 添加编译passwall的依赖包
git clone https://github.com/kenzok8/small.git ./package/small

# 添加smartdns
svn co https://github.com/kenzok8/openwrt-packages/trunk/smartdns ./package/smartdns
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns ./package/luci-app-smartdns
