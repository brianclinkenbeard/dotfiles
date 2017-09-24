#!/bin/bash

[ -f ~/.Xresources ] && xrdb -merge "$HOME/.Xresources"

# set background
feh --randomize --bg-fill "$HOME/pictures/wallpapers/" &

# adjust color temperature and dim screen according to time
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

# polybar
polybar example &

# start bspwm
exec bspwm
