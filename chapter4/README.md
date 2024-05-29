## chapter 4 : practice

## _## chapter 4 : practice_

## Example 1:
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
__Example 1 :__ Execusion process 

```sh
cd chapter4
chmod +x example1.sh
./example1.sh
```
---

## Example 2: Killing Processes by Name

Create a Bash script that kills all processes with a specified name.

Steps:
    Prompt the user to enter the name of the process to kill.
    Use the pkill command to kill all processes with that name.
    Print a message indicating the result.

Script:
```sh
#!/bin/bash

# Prompt the user to enter the name of the process to kill
read -p "Enter the name of the process to kill: " process_name

# Kill all processes with the specified name
if pkill "$process_name"; then
    echo "All processes named '$process_name' have been killed."
else
    echo "Failed to kill processes named '$process_name'. Please check the process name and try again."
fi
```

__Example 2__ : Execusion process 

```sh
cd chapter4
chmod +x example2.sh
./example2.sh
```

---

### Example 3: Logging Background Process Output

Create a Bash script that launches a background process and logs its output to a file.

Steps:
    1- Create a Bash script that spawns a background process.
    2- The background process should perform a task (e.g., counting to a number) and log its output to a file.
    3- The main script should wait for the background process to complete.

```sh
#!/bin/bash

# Log file to store the output
LOG_FILE="process.log"
COUNT_TO=10

# Function for background process
background_process() {
    for ((i=1; i<=COUNT_TO; i++)); do
        echo "Process $$: $i" >> "$LOG_FILE"
        sleep 1
    done
}

# Create background process and log its output to a file
background_process &
# Wait for the background process to complete
wait
echo "Background process has completed. Check $LOG_FILE for output."

```

__Example 3__ : Execusion process 
```sh
cd chapter4
chmod +x example3.sh
./example3.sh
```
---

## Example 4: Monitoring Multiple Processes ("sshd" "cron" "nginx")

Create a Bash script that monitors multiple processes and prints a message if any of them are not running.
Steps:
    Create a Bash script that monitors multiple processes by name.
    Use the pgrep command to check if each process is running.
    Print a message if any process is not running.

Script:
```sh
#!/bin/bash

# List of processes to monitor
PROCESSES=("sshd" "cron" "nginx")

# Monitor each process
for process in "${PROCESSES[@]}"; do
    if pgrep "$process" > /dev/null; then
        echo "$process is running."
    else
        echo "$process is not running."
    fi
done
```

__Example 2__ : Execusion process 
```sh
cd chapter4
chmod +x example4.sh
./example4.sh
```