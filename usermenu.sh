#!/bin/bash

#Creating a list for the user to choose from
#created a while loop so the question can be reasked everytime the user inputs a selection
home=$HOME
while true;do 
        echo "Please select an option below"
        echo ""
        echo "0.Exiting to main menu" 
        echo "1.Currently logged users"
        echo "2.Your shell directory"
        echo "3.Home Directory"
        echo "4.OS name & version"
        echo "5.Current working directory"
        echo "6.Number of users logged in"
        echo "7.Hard disk information"
        echo "8.CPU information"
        echo "9.Memory information"
        echo "10.File system information"
        echo "11.Currently running process"
#Created a variable to store the users selection
        read -p "Please select an option" option
        echo "" 
#Made a case statement for users selections when inputted
        case $option  in 
                0)echo "Returning to main menu"
                        ;; 
                1) user=$(who)
                        echo "Currently logged in user: $user"
                        ;;
                2)Shell_directory=$(pwd)
                        echo "Your shell directory is: $Shell_directory"
                        ;;
                3)home_directory=$(home)
                        echo "Home directory is: $home_directory"
                        ;;
                4)os=$(uname -r)
                        echo "os name_version:$os"
                        ;;
                5)current=$(pwd)
                        echo "current directory:$current"
                        ;;
                6)numusers=$(w)
                        echo "numbers of users:$numusers"
                        ;;  
                7)hdisk=$(df -H)
                        echo "Hard disk information:$hdisk"
                        ;;
                8)CPU=$(lscpu)
                        echo "CPU info:$cpuid"
                        ;;
                9)memory=$(free)
                        echo "memory info:$memory"
                        ;;
                10)filesys=$(df -T)
                        echo "file system information:$filesys"
                        ;;
                11)currentProcess=$(ps aux)
                        echo "current running process:$currentProcess"
                        ;;
                #made a variable here in case user inputs a number not found it echos invalid option
                *)
                        echo "invalid option please try again"


        esac
done        
