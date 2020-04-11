#!/bin/bash

#Author: zarruler
#Date:   Sat 11 Apr 2020 11:11:50 SAST (President Cyril announced 14more days)
#Pre-Requisite: install figlet
##Purpose: reminder to not leave the house
##Usage: ./corona_virus.sh

echo "Today the `date`"

sleep 3s

echo "Oh you want to leave the house..?"

today=$(date "+%d-%m-%Y")
###Manual date change below
#today="30-04-2020"
dday="30-04-2020"

if [ $today == $dday ]; then

    echo "Go grab your keys boys"
    sleep 3s

    figlet "GTI Boys"

else

echo "Thinking about it...."
count=0
total=34
pstr="[=======================================================================]"

while [ $count -lt $total ]; do
  sleep 0.5 # this is work
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done

    figlet "Tsek, stay in lockdown jou moer!!!"

fi