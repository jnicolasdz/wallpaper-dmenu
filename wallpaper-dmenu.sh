#!/usr/bin/env bash

image=$(find ~/Images/ -type f | dmenu -p Wallpapers -l 10)
file=~/.config/i3/config

feh --bg-scale $image

if grep -qE "exec feh --bg-scale.*" "$file" ; then
	sed -ir "s|exec feh --bg-scale.*|exec feh --bg-scale $image|" "$file"
else
	echo "# autogenerate line by wallpaper.sh to add wallpapers in i3 configs $(date)" >> $file
	echo "exec feh --bg-scale $image" >> "$file"

fi
