#!/bin/bash

if [ "$(id -u)" != "0" ] > /dev/null 2>&1; then
    echo -e '\e[0;31mã€!!ã€‘ This script need root permission\e[0m' 1>&2
    exit
fi

read -p "Do you want to change your mac: " option
read -p "What Interface do you want to change: " interface
if [ $option == "Y" ] || [ $option == "y" ]
	then
		ifconfig $interface 
		sudo macchanger -r $interface 
		sleep 2
		ifconfig $interface 
fi		