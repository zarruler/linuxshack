#!/bin/bash

#---- Function to test that the user is root.
Check_ID() {
  ID=`/usr/bin/whoami`
  if [ $ID != "root" ]; then
     echo "$ID, you must be root to run this administrative script."
     exit 1
  fi
}


dpkg -l openssl &> /dev/null

if [ $? -eq 0 ]; then
	echo "openssl exists :)"
        else
       echo "apt install openssl";
fi



#updated 30 May 2016
echo "Please enter the domain name for mail"
read cdomain
echo "Please enter username:"
read username

#Does User exist?
id $username &> /dev/null

if [ $? -eq 0 ]; then
           echo "$username exists... You can now proceed to change the password"
        else
       echo "$username does not exist - Password could not be updated for $username";
  exit

fi


#Generate a 16 character password
password1=`openssl rand -base64 16`


#Change the account expiry status to today's date
chage -d $(date +%Y-%m-%d) -E -1 $username


#change password
echo -e "$password1\n$password1" | passwd $username


#Force user to change password after first login
chage -d0 $username


#Email user the new password
mail -s "Password Reset on $HOSTNAME" $username@$cdomain <<< "Your temporary password is: $password1  and you will be promted to change it at first login "
