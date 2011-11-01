#!/bin/bash

xbindkeys

xmodmap ~/.xmodmap

urxvtd -q -f -o &
	
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session scrotwm

