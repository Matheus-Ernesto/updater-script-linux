#!/bin/bash

#AUTHOR:Matheus-Ernesto-dos-Santos
#UPDATE: 08-02-2021 - 10:48 by (AUTHOR)

echo "updater Copyright (C) 2021  Matheus-Ernesto"
echo "This program comes with ABSOLUTELY NO WARRANTY;"
echo "This is free software, and you are welcome to redistribute it"
echo "under certain conditions;"
echo "for more info, access <https://www.gnu.org/licenses/>"

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
