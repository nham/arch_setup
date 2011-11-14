#!/bin/bash

xbindkeys
xmodmap ~/.xmodmap
xset r rate 200 25
togtp
urxvtd -q -f -o &
	
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session scrotwm

