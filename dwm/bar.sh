#!/bin/bash

while true;
do
    date="$(date '+%Y-%m-%d %A %H:%M:%S')";
    
    cpu="cpu:$(sensors | awk '/Core 0/ {print  $3}')";
    
    
    mem="Mem:$(free --mebi | sed -n '2{p;q}' | awk '{printf ("MeM:%2.2fGiB/%2.2fGiB\n", ( $3 / 1024), ($2 / 1024))}')"
    
    disk=$(printf "%s: %s\n"  "$(df -h "/" | awk ' /[0-9]/ {print $3 "/" $2}')")
    #disk2=$(printf "%s: %s\n"  "$(df -h "/home/xox/mnt" | awk ' /[0-9]/ {print $3 "/" $2}')")
    #disk3=$(printf "%s: %s\n"  "$(df -h "/" | awk ' /[0-9]/ {print $3 "/" $2}')")
    
    dwm -s  "$(nettraf)|$mem|Disk:$disk|vol:$(volume)|$cpu|$date"

    sleep 1

done;
