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
mopidy 2> /dev/null &

# mpd and mpdas
#mpd &
#[[ -z $(pgrep -xU $UID mpdas) ]] && mpdas &

# autolock
xautolock -time 10 -locker 'physlock -s -m' &

# safeeyes
safeeyes &

# start bspwm
exec bspwm
