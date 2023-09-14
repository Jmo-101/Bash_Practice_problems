# Bash_Practice_problems
# UserMenu.sh

This script is designed to provide a user-friendly menu-based interface that allows users to make selections and access corresponding information.

## Menu-Based Interaction

- The script initiates by creating a while loop, ensuring that the user remains engaged until they choose to exit the program.

- Within this loop, a menu is presented to the user, tailored to meet specific demands or information needs they may have.

## User Input Handling

- A variable named 'option' is established to capture the user's input. 

- A case statement is implemented, using the 'option' variable to determine the execution of specific commands or processes based on the user's selections.

## Error Handling

- Towards the end of the script, I incorporated one final variable. It addresses scenarios where the user provides an input that is not recognized or valid. In such cases, the program informs the user about the invalid input.


# Date_script.sh

This script is designed to provide information to the user about the packages that need to be updated on a server. It achieves this by automating the update process using a cron job scheduled to run every Friday at 11PM.

## Automation with Cron Job

- To automate this script, a cron job has been set up. The cron job is configured to run the script every Friday at 11 PM, ensuring that server lets the user knows how many packages are upgradeable.

```bash
# Cron job entry
0 23 * * 5 /path/to/Date_script.sh


