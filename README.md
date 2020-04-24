# DAKboard-setup
Setup instructions to get DAKboard running on ubuntu

## Notes

Designed to run on Ubuntu 20.04 LTS.

## Instructions

Once Ubuntu is intsalled, run `sudo apt update -y && sudo apt upgrade -y`

Optional: For SSH access, run `apt install openssh-server`

To setup the kiosk:

1. run `sudo apt install unclutter xdotool chromium-browser`

2. Download kiosk.sh and kiosk.service from this repo and place them in the home directory

3. run `chmod 644 kiosk.service && sudo chown root:root kiosk.service`

4. If the user is not ipadmin, run `nano kiosk.service` - (`ctrl + x` then `y` to save.)
   - This will allow you to change the user it will run under. If the user is different from ipadmin, ensure that it is changed for ExecStart, User, & Group.

5. run `sudo mv kiosk.service /lib/systemd/system/kiosk.service`

6. Ensure that ```kiosk.sh``` is executable with `ls -al` 
   - If it isn't, run ```chmod +x kiosk.sh```
   
7. run `sudo nano kiosk.sh` to change the DAKboard url.

8. In the Ubuntu GUI, go to Settings > Users and ensure that automatic login is enabled

9. While still in settings, go to Power and change Blank Screen to Never. Also ensure that Automatic Suspend is turned off.
