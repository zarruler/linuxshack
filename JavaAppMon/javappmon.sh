#!/bin/bash

#Author: Floyd Modau
#Date: 23 Oct 2018
#Description: To capture all arago components on a graphit node and engine node
#Usage:
# ./arago_processes.sh [component none]
# $ arago_processes.sh engine
# $ ./arago_processes.sh graphit


engine() {
pgrep aae > aae.txt
pgrep java >> aae.txt


pid=`awk -vORS=, '{ print $1 }' aae.txt | sed 's/,$/\n/'`

echo "Total `lscpu | grep "^CPU(s)"`"
cat /proc/meminfo | grep -i "^mem"
echo " "
echo "Current HIRO usage:"
ps -p $pid -o %cpu,%mem,user,cmd

echo " "
echo "Found rpm's: 
`rpm -qa | grep engine`"

}


db() {

pgrep java > db.txt

pid=`awk -vORS=, '{ print $1 }' db.txt | sed 's/,$/\n/'`

echo "Total `lscpu | grep "^CPU(s)"`"
cat /proc/meminfo | grep -i "^mem"
echo " "
echo "Current HIRO usage:"
ps -p $pid -o %cpu,%mem,user,cmd

echo " "
echo "Found rpm's :
`rpm -qa | grep graphit`"

}


arg=$1

if [ $1 == "engine" ]; then
	engine
elif [ $1 == "graphit" ]; then
	db

else echo "RC=`echo $?`"

fi
