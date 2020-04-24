#!/bin/bash

xset s noblank
xset s off
xset -dpms

unclutter -idle 1 &

/usr/bin/chromium-browser --kiosk https://dakboard.com/screen/uuid/5e593d41-10d52e-38ba-830838551c0f

while true; do
	xdotool keydown ctrl+r; xdotool keyup ctrl+r;
	sleep 300
done


