#!/bin/bash
#first configure /etc/bluetooth/rfcomm: create an entry like the example but with the mac address of your device.

sudo rfcomm connect rfcomm0 #gotta be root for some reason
echo "some data" > /dev/rfcomm0 #send data
screen /dev/rfcomm0 9600 #interactive terminal
tail -f /dev/rfcomm0 #listen



