# DAKboard-setup
Setup instructions to get DAKboard running on ubuntu

## Notes

Designed to run on Ubuntu 20.04 LTS.

## Instructions

Once Ubuntu is intsalled, run ```sudo apt install unclutter xdotool chromium-browser```

To setup the kiosk:

1. Download kiosk.sh and kiosk.service from this repo

2. run ```chmod 644 kiosk.service && chown root:root kiosk.service```

3. If the user is not ipadmin, run ```nano kiosk.service```
   - This will allow you to change the user it will run under. If the user is different from ipadmin, ensure that it is changed for ExecStart, User, & Group.

4. run ```sudo mv kiosk.service /lib/systemd/system/kiosk.service```

5. Ensure that ```kiosk.sh``` is executable with ```ls -al``` 
   - If it isn't, run ```chmod +x kiosk.sh```
   
6. If the DAKboard URL is different from the default IP board, make the change within ```kiosk.sh```

7. Lastly, in the Ubuntu GUI, go to Settings > Power and change Blank Screen to Never
