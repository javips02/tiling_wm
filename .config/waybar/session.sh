#!/bin/bash

options="襤 Logout\n Poweroff\n勒 Reboot"

choice=$(echo -e "$options" | rofi -dmenu -i -p "Session" -width 20 -lines 3)

case "$choice" in
    "襤 Logout")
        swaymsg exit
        ;;
    " Poweroff")
        systemctl poweroff
        ;;
    "勒 Reboot")
        systemctl reboot
        ;;
    *)
        echo "Invalid option"
        ;;
esac
