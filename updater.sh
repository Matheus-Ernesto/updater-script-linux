#!/bin/bash

#AUTHOR:Matheus-Ernesto-dos-Santos
#UPDATE: 08-02-2021 - 10:48 by (AUTHOR)

echo "updater Copyright (C) 2021  Matheus-Ernesto"
echo "This program comes with ABSOLUTELY NO WARRANTY;"
echo "This is free software, and you are welcome to redistribute it"
echo "under certain conditions;"
echo "for more info, access <https://www.gnu.org/licenses/>"

APT_DIR="/etc/apt"
YUM_DIR="/etc/yum"
DNF_DIR="/etc/dnf"

if [ -d $APT_DIR ]; then
    echo "Using apt"
    echo "----Update------"
    sudo apt update
    echo "----Upgrade-----"
    sudo apt upgrade
    echo "----Autoremove--"
    sudo apt autoremove
elif [ -d $YUM_DIR ]; then
    echo "Using yum"
    echo "----Chk-Update--"
    sudo yum check-update
    echo "----Update------"
    sudo yum update
elif [ -d $DNF_DIR ]; then
    echo "Using dnf"
    echo "--Check-Update--"
    sudo dnf check-update
    echo "----Upgrade-----"
    sudo dnf upgrade
    echo "---Autoremove---"
    sudo dnf autoremove
else
    echo "The program did not find the installer folders:"
    echo "$APT_DIR , $YUM_DIR and $DNF_DIR"
fi

echo "-------End------"
read -s -p "Press [ENTER] key to exit."
echo ""
