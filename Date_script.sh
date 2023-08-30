#!/bin/bash

#Jorge Molina 8/30/23
#Purpose of this script is to make a cronjob to schedule the script to run every friday at 11 pm, to update the server, list out the packages that are upgradable and import them to a new file. Programmed the crontab as 0 23 * * 5

crontab -e

#update the server with these commands

sudo apt install && sudo apt update 

#Make a variable that lists out the amount of packages that can be upgraded

package_upgrades=$(apt list --upgradable)

#Write a command to iterate the line on how many packages are upgradable and create a new file with the information with the current date on it.

echo "$package_upgrades can be upgraded" > update$(date +"%d-%m-%Y").txt

#show the contents of the new file

cat update8.30.23.txt
