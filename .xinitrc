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
xautolock -time 10 -locker 'physlock -s -m' &

# syncthing
[ -z $(pgrep -xU $UID syncthing) ]] && syncthing -no-restart &

# run rtorrent if media disk is mounted
mountpoint -q /mnt/media && rtorrent &

# daemonize rtorrent-flood
forever start --uid flood -a --sourceDir "$HOME/documents/projects/flood" "server/bin/start.js"

# hydroxide smtp server
$HOME/.go/bin/hydroxide smtp &

# ping default gateway to keep powerline adapter working
ping 192.168.1.254 -q > /dev/null &

# start bspwm
exec bspwm
