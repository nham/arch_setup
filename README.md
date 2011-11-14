# Archbang Linux setup/customization

Just collecting some various config files/instructions so I remember what 
I've done to customize my Archbang installation.


## inittab

I commented out the "x:5:respawn:/usr/bin/slim >& /dev/null" line from near the end of /etc/inittab to disable SLiM, because I do not see the utility in having a graphical login screen.


## ~/.bash_profile

The .bash_profile in this repo goes in my home directory and currently does three things: add relevant stuff to my PATH, mount my NTFS data partition and start X.


## ~/.xinitrc

Does a few things:

 - calls xbindkeys to enable the brightness buttons and volume keys on my laptop.
 - calls xmodmap to swap my Caps Lock and left Ctrl
 - sets keyboard repeat rate and delay to not suck
 - starts urxvtd
 - starts scrotwm (I'm currently unsure if the ck-launch-session and dbus-launch stuff is necessary)


## ~/.xbindkeyrc

Makes the brightness/volume key magic work for my laptop.


## ~/.xmodmap

See above.


## ~/adj_backlight.sh

Bash script taking a single argument, which must be "inc" or "dec", which writes files in /sys/class/backlight/ to increase or decrease the laptop brightness.


## /etc/scrotwm.conf

All I've done so far is change the terminal to urxvtc and set the bar_action to conky.

## ~/.conkyrc

Config for conky to work as scrotwm status bar. Basic processor/memory/battery/wifi stats.


## ~/bin/togtp

A bash script which turns my laptop touchpad off. This is a stopgap measure 
until I take the time to figure out how to auto disable/enable the touchpad 
when i plug in / unplug my USB mouse. For now, we simply call this on startup 
(in xinitrc), then a simple "togtp" at terminal will toggle touchpad status.
