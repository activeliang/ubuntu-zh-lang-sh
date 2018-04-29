#!/bin/bash
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
echo "TZ='Asia/Shanghai'; export TZ" >> /etc/profile
locale-gen zh_CN.UTF-8
locale-gen zh_CN.GBK GBK
locale-gen zh_CN GB2312
update-locale LANG=zh_CN.UTF-8
dpkg-reconfigure locales
locale-gen
apt-get update
apt-get -y install language-pack-zh-hans language-pack-zh-hans-base
