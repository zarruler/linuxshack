#!/bin/bash


#Please ensure that the luser (custom user account ) has rights to perform certain functions and that the key is copied to all the required hostnames
#To ensure security this script must only be run by root


Check_ID() {
  ID=`/usr/bin/whoami`
  if [ $ID != "root" ]; then
     echo "$ID, you must be root to run this administrative script."
     exit 1
  fi
}

luser={custom user without brackets}

echo "Do you even bash bro?"
echo ""
read GIVENCOMMAND

#for HOST in fqdn1 fqdn2 fqdn3 fqdn4 etc.....
for HOST in {Please add hosts here like the example above without commmas}

do


        echo "host: $HOST"
	echo "Result:"
        ssh $luser@$HOST $GIVENCOMMAND
        echo "RC=$?"
        echo -e " "

done

Check_ID
