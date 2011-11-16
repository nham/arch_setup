#!/bin/sh

xbindkeys
xmodmap ~/.xmodmap
xset r rate 200 25
togtp
xrdb -merge ~/.Xresources
urxvtd -q -f -o &
	
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session scrotwm

