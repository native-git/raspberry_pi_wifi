#!/bin/sh


#echo "Yout must run this command as root...recommend typing sudo su"
ip link set enxb827eb0636d1 down
ip link set enx801f02b6eab0 down
ip link set enx801f02b6eab0 up
wpa_supplicant -Dwext -B -ienx801f02b6eab0 -c/etc/wpa_supplicant/wpa_supplicant.conf
dhclient enx801f02b6eab0
exit 0

