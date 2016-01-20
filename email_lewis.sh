#!/bin/bash

case "$1" in
    suspend|suspend_hybrid|hibernate)
	if [ $(date +"%H") -le 7 ] ; then		
		sudo rtcwake -no -t $(date +%s -d 'today 06:30' ) > /tmp/email_lewis.log;
		#sudo curl http://192.168.1.106/lewis-laptop-suspending;

	else
		sudo rtcwake -no -t $(date +%s -d 'tomorrow 06:30' ) > /tmp/email_lewis.log ; 
		#sudo curl http://192.168.1.106/lewis-laptop-suspending ;		

		

	fi
        ;;
    resume) 
	#restart the network manager (vpn breaks)
	#curl http://192.168.1.106/lewis-laptop-resuming "Resuming on $(date)";	
	sudo service network-manager restart;
        ;;
    *)
        ;;
esac

