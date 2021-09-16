#!/bin/bash

[ -f ~/.Xresources ] && xrdb -merge "$HOME/.Xresources"

# tell java application wm is nonreparenting
export _JAVA_AWT_WM_NONREPARENTING=1

# set background
feh --randomize --bg-fill "$HOME/pictures/wallpapers" &

# redshift
redshift > /dev/null &

# urxvt daemon
urxvtd -q -f -o &

# autolock
#xautolock -time 10 -locker 'physlock -s -m' &

# for xidlehook
export PRIMARY_DISPLAY="$(xrandr | awk '/ connected/{print $1;exit;}')"

# run xidlehook
xidlehook \
  --not-when-fullscreen \
  --not-when-audio \
  --timer 300 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness .5' \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1' \
  --timer 5 \
    'physlock -s -m & xrandr --output "$PRIMARY_DISPLAY" --brightness 1' \
    '' &

# syncthing
[ -z $(pgrep -xU $UID syncthing) ] && syncthing -no-restart -no-browser &

# run rtorrent if media disk is mounted
mountpoint -q /mnt/media && rtorrent &

# flood
flood > /dev/null &

# hydroxide smtp server
$HOME/.go/bin/hydroxide smtp &

# start bspwm
exec bspwm
