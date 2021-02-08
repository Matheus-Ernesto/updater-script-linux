#!/bin/bash

#AUTHOR:Matheus-Ernesto-dos-Santos
#UPDATE: 08-02-2021 - 10:48 by (AUTHOR)

APT_DIR="/etc/apt"
if [ -d $APT_DIR ]; then
    echo "----Update------"
    sudo apt update
    echo "----Upgrade-----"
    sudo apt upgrade
    echo "----Autoremove--"
    sudo apt autoremove
fi
echo "----End---------"
read -s -p "Press [ENTER] key to exit."
echo ""
