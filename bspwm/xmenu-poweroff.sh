#!/bin/bash

opt=$(cat $HOME/.config/bspwm/xmenuopt | xmenu)

if [ "$opt" = "wyłącz" ]
then
	bspc quit
elif [ "$opt" = "restartuj" ]
then
	bspc wm -r
else
	exit 69
fi
