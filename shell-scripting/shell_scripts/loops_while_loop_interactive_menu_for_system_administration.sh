#!/bin/bash

while true
do
	echo "1. Shutdown"
	echo "2. Restart"
	echo "3. Exit Menu"
	read -p "Enter your choice: " choice

	if [ $choice -eq 1 ]
	then
		shutdown now
	elif [ $choice -eq 2 ]
	then
		shutdown -r now
	elif [ $choice -eq 3 ]
	then 
		break
	else
		continue
	fi
done
