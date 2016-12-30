#!/bin/sh
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

xrdb -merge ~/.Xresources

#feh background display
#sh ~/.fehbg &
feh --bg-scale --randomize ~/Wallpapers/*

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

export $TERM=rxvt-256color
export LANG="en_US.UTF-8"
exec i3
