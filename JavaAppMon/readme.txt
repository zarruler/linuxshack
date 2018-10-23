Author: Floyd Modau
Date: 23 Oct 2018
Description: To capture all arago components on a graphit node and engine node
Usage:
 $ ./arago_processes.sh [component none]
 $  arago_processes.sh engine
 $ ./arago_processes.sh graphit

Expected output:
[root@ip-10-0-1-158 support]# ./arago_processes.sh graphit
Total CPU(s):                8
MemTotal:       32877480 kB
MemFree:          300340 kB

Current HIRO usage:
%CPU %MEM USER     CMD
 0.0  1.2 496      /usr/java/jre1.8.0_151/bin/java -Dzookeeper.log.dir=/var/log/zookeeper -Dzookeeper.root.logger=INFO,ROLLINGFILE -cp /opt/autopilot/zookeeper/bin/../build/classes:/opt/autopilot/zookeeper/bin/../build/lib/*.jar:/opt/aut
17.3 30.0 495      /usr/java/jre1.8.0_151/bin/java -ea -javaagent:/opt/autopilot/cassandra/bin/../lib/jamm-0.3.0.jar -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=42 -Xms8026M -Xmx8026M -Xmn800M -Xss256k -XX:StringTableSize=1000003 -
 5.2 30.9 graphit  /usr/java/jre1.8.0_151/bin/java -cp /opt/autopilot/graphit/data/jar-tmp/lib/graphit-server-dist.jar:/opt/autopilot/graphit/data/jar-tmp/lib/:/opt/autopilot/graphit/data/jar-tmp/plugins/* -server -Xss256k -XX:NewRatio=1

Found rpm's :
graphit-base-5.4.4-1.54.53.2.noarch
graphit-server-plugins-5.4.4-1.54.65.noarch
graphit-views-autopilot-5.4.4-1.54.21.noarch
graphit-server-5.4.4-1.54.57.noarch
graphit-hadoop-5.4.4-1.54.65.noarch
autopilot-graphit-meta-5.4.4-5.noarch
