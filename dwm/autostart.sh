#! /bin/bash

echo 禁用笔记本触摸板
xinput set-prop  $(xinput list |grep "ETPS/2 Elantech Touchpad" |awk -F "=" '{print $2}' | awk -F " " '{print $1}') "Device Enabled" 0
echo 禁用笔记本键盘
xinput set-prop $(xinput list |grep "AT Translated Set 2 keyboard" |awk -F "=" '{print $2}' | awk -F " " '{print $1}') "Device Enabled" 0

#设置红移 3100
redshift -P -O  4500

#输入法框架
fcitx5 &

#渲染混合器
picom -b &

echo 3 | sudo tee /proc/sys/net/ipv4/tcp_fastopen

wmname LG3D

#~/.dwm/clock.sh &

xautolock -time 10 -locker ~/.dwm/lock.sh &

#hsetroot -solid "#111111"
hsetroot -solid "#444444"
#feh --randomize --bg-scale ~/wallpaper/BingWallpaper-2020-06-30.jpg
#feh  --bg-scale ~/wallpaper/BingWallpaper-2020-06-30.jpg
