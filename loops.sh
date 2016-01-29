#!/bin/bash

        for i in `seq 1 10`;
        do
                echo $i
        done  

	echo 

         COUNTER=0
         while [  $COUNTER -lt 10 ]; do
             echo The counter is $COUNTER
             let COUNTER=COUNTER+1 
         done

	echo 

         COUNTER=20
         until [  $COUNTER -lt 10 ]; do
             echo COUNTER $COUNTER
             let COUNTER-=1
         done

	echo 
	 
	FILES="$(pwd)/*"
	for f in $FILES
	do
	  echo "Processing $f file..."
	  # take action on each file. $f store current file name
	  #cat $f
	done

	echo 

	for f in *.sh
	do
		echo "Removing password for pdf file - $f"
	done

	#cool one for terminal
	while true; do curl "192.168.1.106"; sleep 1; done

$SHELL
