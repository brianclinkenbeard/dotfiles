#!/bin/bash

[ -f ~/.Xresources ] && xrdb -merge "$HOME/.Xresources"

# set background
feh --randomize --bg-fill "$HOME/pictures/wallpapers/" &

# redshift
redshift > /dev/null &

# compositor (disable rgb10 to fix broken fonts and broken colors)
allow_rgb10_configs=false compton -b &

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
