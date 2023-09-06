#!/bin/bash

#Jorge Molina 9/6/23

#making a function to ssh into a server using the variable ssh_server i used in the menu above, gave variables to both the read commands in order to use it i>

ssh_server(){
read -p "enter the ssh user: " ssh_username
read -p "enter the server ip address: " ssh_IP
ssh $ssh_username@$ssh_IP
}


#made a function for scp and made options for the user to choose from
scp_copy(){
read -p "enter the ssh user:" scp_username
read -p "enter the ssh ip address: " scp_IP

read -p "choose file destination (1: local to remote, 2: remote to local): " file_destination
}



#making a menu for the user to choose from, gave a variable of 'option' to the read(input) command in order to use it below in a case statement
echo "select an option"
echo "1.Ssh into a server"
echo "2.scp"
read  "enter a option: " option 
#wrote a case statement where if the users choice is 1 or 2 it would give them the desired output
case $option in 

        1) ssh_server
        ;;

        2) scp_copy

        ;;

        *)echo "invalid option try again"
        ;;

esac

# #making a function to ssh into a server using the variable ssh_server i used in the menu above, gave variables to both the read commands in order to use it i>

# ssh_server(){
# read "enter the ssh user: " ssh_username
# read "enter the server ip address: " ssh_IP
# ssh $ssh_username@$ssh_IP
# }
