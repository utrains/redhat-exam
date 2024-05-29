## chapter 4 : practice


## _## chapter 4 : practice_

### Example 1:
Create a Bash script that checks if a specific process (e.g., sshd) is running and prints a message based on its status.


Steps:

    1- Create a Bash script that checks if a specified process is running using the pgrep command.
    2- Print a message indicating whether the process is running or not.
    
> Note: `--pgrep command` in Linux is a powerful tool used to find processes based on their name and other attributes.

Script:
```sh
#!/bin/bash

# Name of the process to check
PROCESS_NAME="sshd"

# Check if the process is running
if pgrep "$PROCESS_NAME" > /dev/null; then
    echo "$PROCESS_NAME is running."
else
    echo "$PROCESS_NAME is not running."
fi
```