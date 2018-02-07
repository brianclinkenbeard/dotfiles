#!/bin/bash

[ -f ~/.Xresources ] && xrdb -merge "$HOME/.Xresources"

# set background
feh --randomize --bg-fill "$HOME/pictures/wallpapers/" &

# redshift
redshift > /dev/null &

# compositor
compton -b &

# urxvt daemon
urxvtd -q -f -o &

# rtorrentd
dtach -n /tmp/rtorrentd rtorrent &

# mopidy
mopidy -q &

# mpd and mpdas
#mpd &
#[[ -z $(pgrep -xU $UID mpdas) ]] && mpdas &

# autolock
xautolock -time 10 -locker 'physlock -s -m' &

# ping default gateway to keep powerline adapter working
ping 192.168.1.254 -q > /dev/null &

# start bspwm
exec bspwm
