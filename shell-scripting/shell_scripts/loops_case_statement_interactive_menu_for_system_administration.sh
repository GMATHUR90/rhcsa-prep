#!/bin/bash

echo "1. Shutdown"
echo "2. Restart"
echo "3. Exit Menu"
read -p "Enter your choice: " choice

case $choice in
	1) shutdown now ;;
	2) shutdown -r now ;;
	3) break ;;
	*) continue ;;
esac


