#!/bin/bash

if [ "$1" = "" ]
then
	echo "bruh" ; exit 1
fi

wal -c
wal -i "$1" -q #-s -e
exec "$HOME"/scripts/xreskol.sh &
pywalfox update

feh --bg-fill "$1" || feh --bg-fill "$1"

mkdir -p "$HOME/tapety/old"

cp "$HOME/tapety/wal.jpg" "$HOME/tapety/old/oldwal.jpg"
convert "$1" "$HOME/tapety/wal.jpg"

rm "$HOME"/.cache/wal/onebyone/* || mkdir -p "$HOME/.cache/wal/onebyone"

cp "$HOME/.cache/wal/colors-rofi-dark.rasi" "$HOME/.config/roficolor.rasi"

for i in {0..15}
do
	head -n "$i" "$HOME/.cache/wal/colors" | tail -1 > "$HOME/.cache/wal/onebyone/c$i"
done

killall -9 lemonbar ; bspc wm -r

exec "$HOME"/scripts/xreskol.sh &
