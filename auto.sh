#!/bin/sh

u="y"
while [ $u = "y" ]
do
   touch teemy.txt
   sleep 3
   git add .
   sleep 3
   git commit -m "commit messadjs" 
   sleep 10
   git push origin main --force
   sleep 35
   rm teemy.txt
   sleep 5
   git add .
   sleep 5
   git commit -m "commit messadjs" 
   sleep 5
   git push origin main --force   
   sleep 300
   
done



