#!/bin/sh
#
# Choose nearest stratum:
# stratum-ru.rplant.xyz   /Moscow/
# stratum-eu.rplant.xyz   /London/
# stratum-asia.rplant.xyz /Singapore/
# stratum-na.rplant.xyz   /Toronto/
#
#SGR

while [ : ]
do
    clear
    tput cup 5 5
    date
    tput cup 6 5
    echo "Hostname : $(hostname)"
    sleep 1
done