#!/bin/bash

#Date: 20 Nov 2018
#Description: 
#Usage:
#remember the @ sign in your password is replaced with %40

#Enable to companies that require proxy settings
#export https_proxy=http://{username}:{password}@{ip}:{port}
#export https_proxy=http://{username}:{password}@{ip}:{port}
#export ftp_proxy=http://{username}:{password}@{ip}:{port}


#Function if/when a rpm based host is detect
red_detection() {

yum update -y

yum install epel-release -y
yum yum clean all
yum install htop vim linux_logo okular openssl openvpn openconnect -y 


cuser=ruler

useradd -d /home/$cuser/ -m -g wheel -c "Ruler of OpenSource" -s /bin/bash $cuser

password1=P@ssW0rd1*

echo -e "$password1\n$password1" | passwd $cuser

chage -d0 $cuser

echo " "

id $cuser

echo \n" "


#Add the preferred redhat logo to the detected os
echo "if [ -f /usr/bin/linux_logo ]; then linux_logo -a -L 13 ; fi" >> /home/$cuser/.bashrc

echo "Done :)

Please run:
1. vim
2. :help 42


With great power comes great responsibilities!!!

`chage -l $cuser`

"

}


#Function if/when a debian based host is detect

ubuntu_detection(){


cuser=ruler


useradd -d /home/$cuser/ -m -g admin -c "Ruler of OpenSource" -s /bin/bash $cuser

password1=P@ssW0rd1*

echo -e "$password1\n$password1" | passwd $cuser

chage -d0 $cuser

echo " "

id $cuser

echo \n" "

#Add the ubuntu insults easter egg
chmod u+rw sudoers

echo "
Defaults        insults
" >> /etc/sudoers

chmod u-w sudoers


echo "Done :)

Please run:
1. vim
2. :help 42


With great power comes great responsibilities!!!

`chage -l $cuser`


}
