#!/bin/bash

#updated 30 May 2016

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

password1=P@ssw0rd1*

#Change the account expiry status to today's date
chage -d $(date +%Y-%m-%d) -E -1 $username


#change password
echo -e "$password1\n$password1" | passwd $username


#Force user to change password after first login
chage -d0 $username

echo "$username password has been reset to P@ssw0rd1* but $username should change their password at first login"
read cdomain
#Email user the new password
mail -s "Password Reset for $HOSTNAME" $username@$cdomain <<< "Your temporary password is:  P@ssw0rd1* "
