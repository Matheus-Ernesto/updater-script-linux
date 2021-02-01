#!/bin/bash

#AUTHOR:Matheus-Ernesto-dos-Santos
#UPDATE: 01-02-2021 - 16:20 by (AUTHOR)

echo "----Update------"
sudo apt update
echo "----Upgrade-----"
sudo apt upgrade
echo "----Autoremove--"
sudo apt autoremove
echo "----End---------"
read -s -p "Press [ENTER] key to exit."
echo ""
