#!/bin/bash

#Make a cronjob to schedule the script to run every friday at 11 pm. Programmed the crontab as 0 23 * * 5

crontab -e

#update the server with these commands

sudo apt install && sudo apt update 

#Make a variable that lists out the amount of packages that can be upgraded

package_upgrades=$(apt list --upgradable)

#Write a command to iterate the line on how many packages are upgradable and create a new file with the information

echo "$package_upgrades can be upgraded" > update8.30.23.txt

#show the contents of the new file

cat update8.30.23.txt
