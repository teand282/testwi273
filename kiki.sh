#!/bin/sh

u="c"
while [ $u = "c" ]
do
   touch teemy.txt
   sleep 5
   git add .
   sleep 5
   git commit -m "commit messadjs" 
   sleep 5
   git push origin main --force
   sleep 15
   rm teemy.txt
   sleep 5
   git add .
   sleep 5
   git commit -m "commit messadjs" 
   sleep 5
   git push origin main --force   
   sleep 15
   
   
done



