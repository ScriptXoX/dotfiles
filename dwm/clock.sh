#!/bin/sh
msg="=====================================================长时间看屏幕_记得眨眨眼哦====================================================="
notify(){
    notify-send -t 5000 -u normal "$1"
    sleep 3
    #~/.dwm/lock.sh
}
while true;
do
    sleep 300;
    notify $msg
    sleep 300;
    notify $msg
    sleep 300;
    notify $msg
    sleep 300;
    notify $msg
    sleep 300;
    notify $msg


    sleep 300;
    notify $msg
    sleep 300;
    notify $msg
    sleep 300;
    notify $msg
    sleep 300;
    notify $msg
    sleep 300;
    notify $msg


    notify-send -t 5000 -u normal "=====================================================倒数10秒,开始进入休息时间！！！====================================================="
    sleep 10;
    i3lock -c 000000 -i ~/wallpaper/0.png
    #~/.dwm/lock.sh &
    mpv --player-operation-mode=cplayer --volume=100 music/$(($RANDOM%5)).mp3
    mpv --player-operation-mode=cplayer --volume=100 music/$(($RANDOM%5)).mp3
    notify-send -t 5000 -u normal "=====================================================休息结束,开始干活吧。^v^====================================================="
    mpv --player-operation-mode=cplayer --volume=100 music/9.mp3

done;
