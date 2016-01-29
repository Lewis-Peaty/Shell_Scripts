#!/bin/bash

        rm ./CatLog*.txt

	#New file
	cat ./* > ./CatLog.txt
	cat ./CatLog.txt

	#Append to an existing file
	cat ./* >> ./CatLog.txt
	cat ./CatLog.txt

	cat ./* | sort > ./CatLog2.txt
	cat ./CatLog2.txt

$SHELL
