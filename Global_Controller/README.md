Scenario: You have 4 servers and you trying to test if ntpd is installed... run script like this:

Start script like below
$ ./custom_command.sh


rpm -qa | grep -i ntp


iam-544.support.arago.co
Thu Sep 27 11:27:21 UTC 2018
0

db-544.support.arago.co
Thu Sep 27 11:27:24 UTC 2018
0

eng-544.support.arago.co
Thu Sep 27 11:27:27 UTC 2018
0

conn-544.support.arago.co
Thu Sep 27 11:27:30 UTC 2018
0

edp-544.support.arago.co
Thu Sep 27 11:39:26 UTC 2018
0

====================
#How to interpret the output:
#hostname
#command results
#RC Code
