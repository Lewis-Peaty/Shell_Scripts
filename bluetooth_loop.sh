#!/bin/bash
#first configure /etc/bluetooth/rfcomm: create an entry like the example but with the mac address of your device.

#sudo rfcomm release rfcomm0
#sudo rfcomm connect rfcomm0 > /dev/null #gotta be root for some reason
#exec $SHELL

for i in `seq 1 1000`;
do
	echo $( expr $i % 2 ) > /dev/rfcomm0 #send data
	echo $i
	sleep 1
done

$SHELL


