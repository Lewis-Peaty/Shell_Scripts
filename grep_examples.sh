#!/bin/bash
#Grep this line!

rm ./GrepLog.txt

echo Case sensitive version...
grep "#Grep this line!" ./*

echo Case insensitive version...
grep -i "#GREP THIS LINE!" ./*

#Pipe into a logfile
grep "Grep this line!" ./* > ./GrepLog.txt
echo GrepLog.txt says...
grep "" ./GrepLog.txt

$SHELL
