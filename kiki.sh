#!/bin/sh

u="c"
while [ $u = "c" ]
do
   touch teemy.txt
   sleep 10
   git add .
   sleep 10
   git commit -m "commit messadjs" 
   sleep 10
   git push origin main --force
   sleep 30
   rm teemy.txt
   sleep 10
   git add .
   sleep 10
   git commit -m "commit messadjs" 
   sleep 10
   git push origin main --force   
   sleep 30
   touch teemy.txt
   sleep 10
   git add .
   sleep 10
   git commit -m "commit messadjs" 
   sleep 10
   git push origin main --force
   sleep 30
   rm teemy.txt
   sleep 10
   git add .
   sleep 10
   git commit -m "commit messadjs" 
   sleep 10
   git push origin main --force   
   sleep 300
   
done



