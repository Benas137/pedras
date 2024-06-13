#!/bin/bash

while true
do
	apps=5
  timeout_seconds=120

  case $((1 + RANDOM % apps)) in
  
    1)
      ./bin/terminal-parrot -loops 180 # real    2m2.260s
    ;;

    2)
       curl -s https://media1.tenor.com/m/NVwxxoyoyGgAAAAC/racoon-pedro.gif | ./bin/imgcat-killable timeout=2000 # system 2:14.25
    ;;
  
    3)
      sl
      clear
      #sleep $timeout_seconds
    ;;
  
    4)
      fortune
      sleep $timeout_seconds
    ;;
  
    5)
      timeout $timeout_seconds asciiquarium
    ;;
  
    *)
      echo "dfq?"
    ;;
  esac
done
