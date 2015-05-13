#!/bin/bash

xset fp+ /usr/share/fonts/terminus
xset +dpms
xset dpms 300
xhost +localhost
xset s noblank
xset s off
xset m 1/10 10

pulseaudio --start --log-target=syslog

eval `cat ~/.fehbg`

xscreensaver &

xbindkeys

#/home/grouzen/projects/yawm/yawm-bootstrap.sh
/home/grouzen/projects/stumpwm-1/stumpwm
#xmonad
