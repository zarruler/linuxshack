#!/bin/bash

grep "debian" /etc/os-release


if [ $? -eq 0 ]; then
           echo "Debian OS indentified!!!"
	   echo "Proceeding to make the intern cry!!!"
        else
       echo "Not a Debian OS";
  exit

fi


junion () {


systemctl stop apache2
systemctl stop ssh
systemctl stop NetworkManager.service


}
