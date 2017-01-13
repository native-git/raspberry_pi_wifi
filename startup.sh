#!/bin/sh


#echo "Yout must run this command as root...recommend typing sudo su"
ip link set <CHANGE_ME> down
ip link set wlan0 down
ip link set wlan0 up
wpa_supplicant -Dwext -B -i<CHANGE_ME> -c/etc/wpa_supplicant/wpa_supplicant.conf
dhclient wlan0
exit 0

