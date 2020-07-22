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

# 添加adguardhome和ssrPLUS+ | 2020/7/22 by chisenin
svn co https://github.com/kenzok8/openwrt-packages/tree/master/adguardhome ./package/adguardhome
svn co https://github.com/kenzok8/openwrt-packages/tree/master/luci-app-adguardhome ./package/luci-app-adguardhome
svn co https://github.com/kenzok8/openwrt-packages/tree/master/luci-app-ssr-plus ./package/luci-app-ssr-plus
