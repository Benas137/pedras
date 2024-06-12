#!/bin/bash

while true
do
	random_number=$((1 + RANDOM % 4))

	if [ $random_number = 1 ];
	then
		./terminal-parrot & sleep 120; kill $!
		clear

	elif [ $random_number = 2 ];
	then
		curl -s https://media1.tenor.com/m/NVwxxoyoyGgAAAAC/racoon-pedro.gif | imgcat & sleep 120; kill $!
		clear

	elif [ $random_number = 3 ];
	then
		sl
		clear

	elif [ $random_number = 4 ];
	then
		fortune
		sleep 120
		clear

	fi
done
