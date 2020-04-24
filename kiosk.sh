#!/bin/bash

xset s noblank
xset s off
xset -dpms

unclutter -idle 1 &

/usr/bin/chromium-browser --kiosk https://dakboard.com/screen/uuid/<uuid-here>

while true; do
	xdotool keydown ctrl+r; xdotool keyup ctrl+r;
	sleep 300
done


