#!/bin/bash

USAGE_STR="Usage: adj_backlight.sh [inc/dec]"
BACKLIGHT_DIR=/sys/class/backlight/dell_backlight/
BRIGHTNESS_FILE=brightness
MAX_BRIGHTNESS_FILE=max_brightness

curr_brightness=`cat $BACKLIGHT_DIR$BRIGHTNESS_FILE`
max_brightness=`cat $BACKLIGHT_DIR$MAX_BRIGHTNESS_FILE`

echo "curr_brightness = "$curr_brightness
echo "max_brightness = "$max_brightness

if [ -n "$1" ]
then
    case "$1" in
	"inc")
	    if [ "$curr_brightness" -ne "$max_brightness" ]
	    then
		let "new_brightness = curr_brightness + 1"
	    else
		let "new_brightness = 15"
	    fi
	    ;;

	"dec")
	    if [ "$curr_brightness" -ne 0 ]
	    then
		let "new_brightness = curr_brightness - 1"
	    else
		let "new_brightness = 0"
	    fi
	    ;;

	*    ) echo $USAGE_STR ;;
    esac

    echo "echo $new_brightness > $BACKLIGHT_DIR$BRIGHTNESS_FILE" | sudo sh
else
    echo $USAGE_STR
fi
